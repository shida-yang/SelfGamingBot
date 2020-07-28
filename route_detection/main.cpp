#include <iostream>
#include <Windows.h>
#include <string>
#include <string.h>
#include <stdio.h>
#include <random>

#include "SerialPort.hpp"

using namespace std;

const char* portName = "\\\\.\\COM10";
SerialPort* arduino;
char incomingData[255];

void establish_serial();
void set_route(int route);
void open_map();
void close_map();
void start_running();
void wait_for_serial_response();
void wait_for_running_finish();

void move_mouse(int x, int y);
void left_single_click(int x, int y);
void left_double_click(int x, int y);

void talk_to_NPC_SC(bool first_time, int window_x, int window_y);
void talk_to_NPC_XJS(int window_x, int window_y);
void get_task(int window_x, int window_y);
void answer_question(int selection, int window_x, int window_y);
void close_dialog(int window_x, int window_y);

int detect_route(HWND hwnd);
uint32_t get_pixel_color(int x, int y);
void search_color_screens();

HWND GetConsoleHwnd(void);

HWND color_screen_windows[20];
bool is_first_time[20];
int number_of_screens;

HWND console_window;

int main() {

	console_window = GetConsoleHwnd();

	establish_serial();

	for (int i = 0; i < 20; i++) {
		is_first_time[i] = 1;
	}

	while (1) {   

		if (GetAsyncKeyState(VK_NUMPAD0)) {

			search_color_screens();

			for (int j = 0; j < 3; j++) {

				for (int i = 0; i < number_of_screens; i++) {

					cout << "------------------- Window " << i << "-------------------" << endl;

					SetForegroundWindow(color_screen_windows[i]);

					Sleep(1000);

					RECT rect;
					int window_x, window_y;

					GetWindowRect(color_screen_windows[i], &rect);
					window_x = rect.left;
					window_y = rect.top;

					if (is_first_time[i]) {
						talk_to_NPC_SC(1, window_x, window_y);
						is_first_time[i] = 0;
					}
					else {
						talk_to_NPC_SC(0, window_x, window_y);
					}

					Sleep(1000);

					int route = detect_route(color_screen_windows[i]);

					cout << "route detected: " << route << endl;

					set_route(route);

					start_running();

					wait_for_running_finish();

					talk_to_NPC_XJS(window_x, window_y);

					get_task(window_x, window_y);

					talk_to_NPC_XJS(window_x, window_y);

					answer_question(rand() % 4, window_x, window_y);

					talk_to_NPC_XJS(window_x, window_y);

					close_dialog(window_x, window_y);
				}

			}
		
		}
		

	}
}

void establish_serial() {
	arduino = new SerialPort(portName);

	// ui - searching
	std::cout << "Searching in progress";
	// wait connection
	while (!arduino->isConnected()) {
		Sleep(100);
		std::cout << ".";
		arduino = new SerialPort(portName);
	}

	//Checking if arduino is connected or not
	if (arduino->isConnected()) {
		std::cout << std::endl << "Connection established at port " << portName << std::endl;
	}
}

void set_route(int route) {
	char buf[2];
	sprintf_s(buf, 2, "%d", route);
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "S") != 0);
	printf("Route set to %d.\n", route);
}

void open_map() {
	char buf[2];
	sprintf_s(buf, 2, "%c", 'O');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "O") != 0);
	printf("Map opened.\n");

	Sleep(1000);
}

void close_map() {
	char buf[2];
	sprintf_s(buf, 2, "%c", 'C');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "C") != 0);
	printf("Map closed.\n");

	Sleep(1000);
}

void start_running() {
	char buf[2];
	sprintf_s(buf, 2, "%c", 'R');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "R") != 0);
	printf("Start Running\n");
}

void wait_for_running_finish() {
	//Finishes running
	//strcmp(str1, str2)
	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "F") != 0);
	printf("Finishes Running\n");
}

void wait_for_serial_response() {
	int readResult;

	do {
		readResult = arduino->readSerialPort(incomingData, MAX_DATA_LENGTH);
	} while (readResult == 0);
}

void move_mouse(int x, int y) {
	INPUT Input = { 0 };

	Input.type = INPUT_MOUSE;
	Input.mi.dx = x * 65535 / 1919; // desired X coordinate
	Input.mi.dy = y * 65535 / 1079; // desired Y coordinate
	Input.mi.dwFlags = MOUSEEVENTF_ABSOLUTE | MOUSEEVENTF_MOVE;

	SendInput(1, &Input, sizeof(INPUT));
}

void left_single_click(int x, int y) {
	SetForegroundWindow(console_window);
	Sleep(500);

	move_mouse(x, y);

	Sleep(300);

	char buf[2];
	sprintf_s(buf, 2, "%c", 's');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "s") != 0);

	printf("Left single click at [%d, %d]\n", x, y);

	Sleep(1500);
}

void left_double_click(int x, int y) {
	SetForegroundWindow(console_window);
	Sleep(500);

	move_mouse(x, y);

	Sleep(300);

	char buf[2];
	sprintf_s(buf, 2, "%c", 'd');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "d") != 0);

	printf("Left double click at [%d, %d]\n", x, y);

	Sleep(1500);
}


void talk_to_NPC_SC(bool first_time, int window_x, int window_y) {
	// talk to NPC_SC
	if (first_time) {
		left_double_click(window_x + 456, window_y + 532);
	}
	else {
		left_double_click(window_x + 397, window_y + 522);
	}
	left_single_click(window_x + 507, window_y + 344);
	left_single_click(window_x + 507, window_y + 344);
	left_single_click(window_x + 504, window_y + 291);
}

void talk_to_NPC_XJS(int window_x, int window_y) {
	// talk to NPC_XJS
	left_double_click(window_x + 740, window_y + 551);
	left_single_click(window_x + 740, window_y + 551);
	left_single_click(window_x + 508, window_y + 289);
}

void get_task(int window_x, int window_y) {
	// get task
	left_single_click(window_x + 400, window_y + 404);
	left_single_click(window_x + 400, window_y + 404);
}

void answer_question(int selection, int window_x, int window_y) {
	// answer question
	switch (selection) {
	case 0:
		left_single_click(window_x + 339, window_y + 319);
		break;
	case 1:
		left_single_click(window_x + 339, window_y + 347);
		break;
	case 2:
		left_single_click(window_x + 339, window_y + 374);
		break;
	case 3:
		left_single_click(window_x + 339, window_y + 410);
		break;
	default:
		return;
	}
	
	left_single_click(window_x + 427, window_y + 355);
}

void close_dialog(int window_x, int window_y) {
	// close dialog
	left_single_click(window_x + 520, window_y + 517);
}

int detect_route(HWND hwnd) {
	RECT rect;
	int window_x, window_y;

	GetWindowRect(hwnd, &rect);
	window_x = rect.left;
	window_y = rect.top;
	
	// route 5
	cout << "Checking route 5" << endl;
	if (get_pixel_color(window_x + 397, window_y + 354) == 6271542) {	// D3D9=6271542, OpenGL=6271542
		return 5;
	}

	// route 6
	cout << "Checking route 6" << endl;
	open_map();
	if (get_pixel_color(window_x + 177, window_y + 154) != 6396083) {	// D3D9=6396083, OpenGL=6509158
		close_map();
		return 6;
	}

	close_map();

	// route 1 or 4
	if (get_pixel_color(window_x + 609, window_y + 492) == 6509157) {	// D3D9=6509157, OpenGL=6509158
		cout << "Checking route 1 or 4" << endl;
		open_map();
		// route 4
		if (get_pixel_color(window_x + 472, window_y + 588) == 5672876) {	// D3D9=5672876, OpenGL=5672876
			close_map();
			return 4;
		}
		// route 1
		else {
			close_map();
			return 1;
		}
	}
	// route 2 or 3
	else {
		cout << "Checking route 2 or 3" << endl;
		open_map();
		// route 3
		if (get_pixel_color(window_x + 475, window_y + 594) == 4155526) {	// D3D9=4155526, OpenGL=3826564
			close_map();
			return 3;
		}
		// route 2
		else {
			close_map();
			return 2;
		}
	}

	return 0;
}

uint32_t get_pixel_color(int x, int y) {
	HDC hDC;

	hDC = GetDC(NULL);

	uint32_t rgb_val = GetPixel(hDC, x, y);

	// RGB values for debugging
	uint32_t red = rgb_val & 0xFF;
	uint32_t green = (rgb_val >> 8) & 0xFF;
	uint32_t blue = (rgb_val >> 16) & 0xFF;

	return rgb_val;
}

void search_color_screens() {
	int i = 0;

	for (HWND hwnd = GetTopWindow(NULL); hwnd != NULL; hwnd = GetNextWindow(hwnd, GW_HWNDNEXT))
	{

		if (!IsWindowVisible(hwnd))
			continue;

		int length = GetWindowTextLength(hwnd);
		if (length == 0)
			continue;

		char* title = new char[length + 1];
		GetWindowTextA(hwnd, title, length + 1);

		RECT rect;
		if (GetWindowRect(hwnd, &rect))
		{
			int width = rect.right - rect.left;
			int height = rect.bottom - rect.top;
			if (width != 1030 && height != 797) {
				continue;
			}
		}

		color_screen_windows[i] = hwnd;

		cout << i << " HWND: " << hwnd << " Title: " << title << endl;
		i++;

	}

	number_of_screens = i;
}

HWND GetConsoleHwnd(void)
{
#define MY_BUFSIZE 1024 // Buffer size for console window titles.
	HWND hwndFound;         // This is what is returned to the caller.
	char pszNewWindowTitle[MY_BUFSIZE]; // Contains fabricated
										// WindowTitle.
	char pszOldWindowTitle[MY_BUFSIZE]; // Contains original
										// WindowTitle.

	// Fetch current window title.

	GetConsoleTitleA(pszOldWindowTitle, MY_BUFSIZE);

	// Format a "unique" NewWindowTitle.

	wsprintfA(pszNewWindowTitle, "%d/%d",
		GetTickCount(),
		GetCurrentProcessId());

	// Change current window title.

	SetConsoleTitleA(pszNewWindowTitle);

	// Ensure window title has been updated.

	Sleep(40);

	// Look for NewWindowTitle.

	hwndFound = FindWindowA(NULL, pszNewWindowTitle);

	// Restore original window title.

	SetConsoleTitleA(pszOldWindowTitle);

	return(hwndFound);
}