#define _CRT_SECURE_NO_WARNINGS

#include "CSmtp.h"
#define stdin  (__acrt_iob_func(0))
#define stdout (__acrt_iob_func(1))
#define stderr (__acrt_iob_func(2))
FILE _iob[] = { *stdin, *stdout, *stderr };
extern "C" FILE * __cdecl __iob_func(void) { return _iob; }
CSmtp mail;

#include <iostream>
#include <Windows.h>
#include <string>
#include <string.h>
#include <stdio.h>
#include <random>
#include <time.h> 
#include <fstream>
#include <sstream>

#include "SerialPort.hpp"
#include "config.h"		// put this in your project root folder
//#define GAME_ADDR	"\"E:\\QQSG\\QQSG\\QQSG.exe\""
//#define COM_PORT	"\\\\.\\COM10"
//#define ROUTE3_CONST 4155270
//#define COMPUTER_NAME "Ryzen 3700x"
//#define EMAIL_LOGIN_USERNAME	"*****"
//#define EMAIL_LOGIN_PWD		"*****"

#define QQ_PWD_TXT "qq_pwds.txt" // put this file in the Debug folder
// QQ1-PWD1-
// QQ2-PWD2-
// ...
// x

using namespace std;

std::vector<std::string> qq_pwd;

const char* portName = COM_PORT;
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

void first_time_adjust_pos(int window_x, int window_y);
void talk_to_NPC_SC(bool first_time, int window_x, int window_y);
void talk_to_NPC_XJS(int window_x, int window_y);
void get_task(int window_x, int window_y);
void answer_question(int selection, int window_x, int window_y);
void close_dialog(int window_x, int window_y);

void talk_to_NPC_GJ();
void walk_GJ(int window_x, int window_y);

int detect_route(HWND hwnd);
uint32_t get_pixel_color(int x, int y);
void search_color_screens();

HWND GetConsoleHwnd(void);

void initMail();
bool sendMail();

void setColor(int color) {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
}
void red() {
	setColor(0x04);
}
void green() {
	setColor(0x02);
}
void reset() {
	setColor(0x0F);
}



HWND color_screen_windows[20];
bool is_first_time[20];
bool route_failed[20];
int success_time[20];
uint64_t last_finish_time[20];

time_t my_time;

int number_of_screens;

HWND console_window;

HWND curr_game_window;

void min_window(HWND hwnd) {
	curr_game_window = hwnd;
	
	RECT rect;
	int window_x, window_y;

	GetWindowRect(hwnd, &rect);
	window_x = rect.left;
	window_y = rect.top;

	left_single_click(window_x + 913, window_y + 14);
}

bool read_qq_pwds() {
	string line;
	ifstream myfile(QQ_PWD_TXT);
	qq_pwd.clear();
	if (myfile.is_open())
	{
		while (getline(myfile, line))
		{
			if (line=="x") {
				break;
			}
			qq_pwd.push_back(line);
		}
		green();
		cout << qq_pwd.size() << " accounts found!" << endl;
		reset();
		myfile.close();
		return true;
	}

	else {
		red();
		cout << "Unable to open " << QQ_PWD_TXT << endl;
		reset();
		return false;
	}
}

int main() {

	console_window = GetConsoleHwnd();

	establish_serial();

	while (1) { 

		cout << "行脚=0" << endl;
		cout << "推举=1" << endl;
		cout << "官爵=2" << endl;
		cout << "打开=3" << endl;
		cout << "登录=4" << endl;
		cout << "退出=9" << endl;

		int choice = 0;
                    
		cout << "Your choice: ";
		cin >> choice;

		if (choice == 0) {

			int run_times = 0;
			bool just_once = 0, already_inside = 0;

			cout << "关闭输入法!!!!" << endl;
			cout << "Enter run times: " << endl;
			cin >> run_times;
			if (run_times == 1) {
				cout << "待在里面吗? " << endl;
				cin >> just_once;
				cout << "已经在里面了吗? " << endl;
				cin >> already_inside;
			}

			for (int i = 0; i < 20; i++) {
				is_first_time[i] = 1;
				route_failed[i] = 0;
				success_time[i] = 0;
				last_finish_time[i] = 0;
			}

			search_color_screens();
			         
			for (int i = 0; i < number_of_screens; i++) {
				min_window(color_screen_windows[i]);
				//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
				//ShowWindow(color_screen_windows[i], SW_SHOWMINNOACTIVE);
				//Sleep(1000);
			}

			for (int j = 0; j < run_times; j++) {

				for (int i = 0; i < number_of_screens; i++) {

					my_time = time(NULL);

					while (my_time - last_finish_time[i] <= 300) {
						my_time = time(NULL);
						cout << "Waiting for 5 min. Remaining: " << (300 + last_finish_time[i] - my_time) << endl;
						Sleep((310 + last_finish_time[i] - my_time) * 1000);
					}

					cout << "------------------- Window " << i+1 << " Time " << j+1 << " -------------------" << endl;

					if (route_failed[i]) {
						printf("Route failed before, skipping this window.\n");
						continue;
					}

					PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_RESTORE, 0);
					Sleep(1000);
					SetForegroundWindow(color_screen_windows[i]);
					Sleep(1000);

					curr_game_window = color_screen_windows[i];

					RECT rect;
					int window_x, window_y;

					GetWindowRect(color_screen_windows[i], &rect);
					window_x = rect.left;
					window_y = rect.top;

					if (!already_inside) {
						printf("Talk to SC.\n");
						if (is_first_time[i]) {
							talk_to_NPC_SC(1, window_x, window_y);
							is_first_time[i] = 0;
						}
						else {
							talk_to_NPC_SC(0, window_x, window_y);
						}

						Sleep(2000);
					}

					int route = detect_route(color_screen_windows[i]);

					cout << "route detected: " << route << endl;

					int route1 = detect_route(color_screen_windows[i]);

					cout << "route detected: " << route1 << endl;

					while (route1 != route) {
						route = route1;
						route1 = detect_route(color_screen_windows[i]);
						cout << "route detected: " << route1 << endl;
					}

					set_route(route);

					start_running();

					wait_for_running_finish();

					int check_success_color = get_pixel_color(window_x + 543, window_y + 627);
					int curr_color = check_success_color - 1;
					Sleep(500);
					
					while (curr_color != check_success_color) {
						check_success_color = curr_color;
						curr_color = get_pixel_color(window_x + 543, window_y + 627);
						Sleep(500);
					}

					if (check_success_color != 4413) {	// D3D9=4413, OpenGL=???
						route_failed[i] = 1;

						my_time = time(NULL);

						struct tm* tmp = localtime(&my_time);

						printf("[%02d:%02d:%02d] Route failed.\n", tmp->tm_hour, tmp->tm_min, tmp->tm_sec);

						min_window(color_screen_windows[i]);
						//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
						//Sleep(1000);

						continue;
					}
					
					printf("Talk to XJS.\n");
					talk_to_NPC_XJS(window_x, window_y);

					printf("Get task.\n");
					get_task(window_x, window_y);

					printf("Talk to XJS.\n");
					talk_to_NPC_XJS(window_x, window_y);

					printf("Answer question.\n");
					answer_question(rand() % 4, window_x, window_y);

					if (!just_once) {
						printf("Talk to XJS.\n");
						talk_to_NPC_XJS(window_x, window_y);

						Sleep(1000);

						printf("Close dialog.\n");
						close_dialog(window_x, window_y);

						char buf[2];
						sprintf_s(buf, 2, "%c", 'h');
						arduino->writeSerialPort(buf, 1);

						do {
							wait_for_serial_response();
						} while (strcmp(incomingData, "h") != 0);
					}
					

					success_time[i]++;

					last_finish_time[i] = time(NULL);

					min_window(color_screen_windows[i]);
					//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
					//Sleep(1000);
				}

			}

			printf("---------- Finish Running ----------\n");
			for (int i = 0; i < number_of_screens; i++) {
				if (success_time[i] < run_times) {
					red();
				}
				else {
					green();
				}
				printf("Window %d succeed times: %d\n", i+1, success_time[i]);
				reset();
			}
			printf("------------------------------------\n");
			sendMail();
		}

		if (choice == 1) {

			bool yunshu_finished = 0;

			cout << "跑了运输吗？" << endl;
			cin >> yunshu_finished;

			// Get all color window
			search_color_screens();

			// Minimize all the windows
			for (int i = 0; i < number_of_screens; i++) {
				min_window(color_screen_windows[i]);
				//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
				//Sleep(1000);
			}

			// Open each window in order
			for (int i = 0; i < number_of_screens; i++) {

				// restore window
				PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_RESTORE, 0);
				Sleep(1000);
				SetForegroundWindow(color_screen_windows[i]);
				Sleep(1000);

				curr_game_window = color_screen_windows[i];

				//Get window location
				RECT rect;
				int window_x, window_y;

				GetWindowRect(color_screen_windows[i], &rect);
				window_x = rect.left;
				window_y = rect.top;

				printf("%d号接任务\n", i);

				// talk to NPC_SC
				left_double_click(window_x + 456, window_y + 532);
				left_single_click(window_x + 499, window_y + 288);
				if (yunshu_finished) {
					left_single_click(window_x + 416, window_y + 453);
				}
				else {
					left_single_click(window_x + 416, window_y + 477);
				}
				left_single_click(window_x + 449, window_y + 405);
				left_double_click(window_x + 456, window_y + 532);
				left_single_click(window_x + 499, window_y + 288);
				left_single_click(window_x + 407, window_y + 404);

				// record time
				last_finish_time[i] = time(NULL);

				// minimize window
				min_window(color_screen_windows[i]);
				//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
				//Sleep(1000);
			}

			for (int i = 0; i < number_of_screens; i++) {
				// restore window
				PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_RESTORE, 0);
				Sleep(1000);
				SetForegroundWindow(color_screen_windows[i]);
				Sleep(1000);

				curr_game_window = color_screen_windows[i];

				printf("%d号交任务\n", i);

				my_time = time(NULL);
				if (my_time - last_finish_time[i] <= 65) {
					cout << "Waiting for 65 sec. Remaining: " << (65 + last_finish_time[i] - my_time) << endl;
					Sleep((65 + last_finish_time[i] - my_time) * 1000);
				}

				//Get window location
				RECT rect;
				int window_x, window_y;

				GetWindowRect(color_screen_windows[i], &rect);
				window_x = rect.left;
				window_y = rect.top;

				left_single_click(window_x + 713, window_y + 618);

				left_double_click(window_x + 456, window_y + 532);
				left_single_click(window_x + 499, window_y + 288);
				left_single_click(window_x + 407, window_y + 404);
				left_single_click(window_x + 517, window_y + 518);

				// minimize window
				min_window(color_screen_windows[i]);
				//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
				//Sleep(1000);
			}

		}

		if (choice == 2) {

			// Get all color window
			search_color_screens();

			// Minimize all the windows
			//for (int i = 0; i < number_of_screens; i++) {
			//	min_window(color_screen_windows[i]);
			//}

			// clear last finish time
			for (int i = 0; i < number_of_screens; i++) {
				last_finish_time[i] = 0;
			}

			for (int j = 0; j < 4; j++) {
				// Open each window in order
				for (int i = 0; i < number_of_screens; i++) {

					if (i == 0) {
						my_time = time(NULL);
						if (my_time - last_finish_time[i] <= 65) {
							cout << "Waiting for 65 sec. Remaining: " << (65 + last_finish_time[i] - my_time) << endl;
							Sleep((65 + last_finish_time[i] - my_time) * 1000);
						}
					}
					
					// restore window
					PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_RESTORE, 0);
					Sleep(1000);
					SetForegroundWindow(color_screen_windows[i]);
					Sleep(1000);

					curr_game_window = color_screen_windows[i];

					//Get window location
					RECT rect;
					int window_x, window_y;

					GetWindowRect(color_screen_windows[i], &rect);
					window_x = rect.left;
					window_y = rect.top;

					printf("%d号接任务%d\n", i, j);

					// talk to NPC
					talk_to_NPC_GJ();
					if (j == 3) {
						left_single_click(window_x + 517, window_y + 518);
					}
					else{
						walk_GJ(window_x, window_y);
					}
					

					// record time
					last_finish_time[i] = time(NULL);

					// minimize window
					min_window(color_screen_windows[i]);
					//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
					//Sleep(1000);
				}
			}

		}

		if (choice == 3) {
			int numOfWindows = 0;
			cout << "开几个？" << endl;
			cin >> numOfWindows;
			for (int i = 0; i < numOfWindows; i++) {
				printf("[%d] Opening Window\n", i + 1);
				system(GAME_ADDR);
				bool opened = false;
				HWND updaterHWND = NULL;

				while (opened == false) {
					for (HWND hwnd = GetTopWindow(NULL); hwnd != NULL; hwnd = GetNextWindow(hwnd, GW_HWNDNEXT))
					{

						if (!IsWindowVisible(hwnd))
							continue;

						int length = GetWindowTextLength(hwnd);
						if (length == 0)
							continue;

						char* title = new char[length + 1];
						GetWindowTextA(hwnd, title, length + 1);

						if (strcmp(title, "QQ三国自动") == 0) {
							opened = true;
							updaterHWND = hwnd;
						}

					}
					Sleep(1000);
				}

				while (opened == true) {
					opened = false;
					if (SetForegroundWindow(updaterHWND)) {
						RECT rect;
						int updaterX, updaterY;

						GetWindowRect(updaterHWND, &rect);
						updaterX = rect.left;
						updaterY = rect.top;
						curr_game_window = updaterHWND;
						left_single_click(updaterX + 785, updaterY + 543);
					}

					for (HWND hwnd = GetTopWindow(NULL); hwnd != NULL; hwnd = GetNextWindow(hwnd, GW_HWNDNEXT))
					{

						if (!IsWindowVisible(hwnd))
							continue;

						int length = GetWindowTextLength(hwnd);
						if (length == 0)
							continue;

						char* title = new char[length + 1];
						GetWindowTextA(hwnd, title, length + 1);

						if (strcmp(title, "QQ三国自动") == 0) {
							opened = true;
							updaterHWND = hwnd;
						}

					}
					Sleep(1000);
				}
			}
			
		}

		if (choice == 4) {
			search_color_screens();

			if (!read_qq_pwds()) {
				continue;
			}

			cout << "Continue?" << endl;
			int cont_login;
			cin >> cont_login;

			if (cont_login == 0) {
				continue;
			}

			//for (int i = 0; i < number_of_screens; i++) {
			//	min_window(color_screen_windows[i]);
			//}

			for (int i = 0; i < number_of_screens && i<qq_pwd.size(); i++) {
				printf("[%d] Logging in...\n", i);

				// restore window
				PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_RESTORE, 0);
				Sleep(1000);
				SetForegroundWindow(color_screen_windows[i]);
				Sleep(1000);

				curr_game_window = color_screen_windows[i];

				//Get window location
				RECT rect;
				int window_x, window_y;

				GetWindowRect(color_screen_windows[i], &rect);
				window_x = rect.left;
				window_y = rect.top;

				// clear qq field
				left_single_click(window_x + 508, window_y + 400);
				Sleep(1000);
				left_double_click(window_x + 508, window_y + 400);

				char buf[2];
				sprintf_s(buf, 2, "%c", 'L');
				arduino->writeSerialPort(buf, 1);

				do {
					wait_for_serial_response();
				} while (strcmp(incomingData, "L") != 0);

				char* qq_pwd_buf = &qq_pwd[i][0];
				arduino->writeSerialPort(qq_pwd_buf, qq_pwd[i].length());

				do {
					wait_for_serial_response();
				} while (strcmp(incomingData, "L") != 0);

				// minimize window
				min_window(color_screen_windows[i]);
				//PostMessage(color_screen_windows[i], WM_SYSCOMMAND, SC_MINIMIZE, 0);
				//Sleep(1000);
			}

		}

		if (choice == 9) {
			break;
		}
		

	}
}

void initMail() {
	bool bError = false;

	try
	{
		
#define test_gmail_tls

#if defined(test_gmail_tls)
		mail.SetSMTPServer("smtp.gmail.com", 587);
		mail.SetSecurityType(USE_TLS);
#elif defined(test_gmail_ssl)
		mail.SetSMTPServer("smtp.gmail.com", 465);
		mail.SetSecurityType(USE_SSL);
#elif defined(test_hotmail_TLS)
		mail.SetSMTPServer("smtp.live.com", 25);
		mail.SetSecurityType(USE_TLS);
#elif defined(test_aol_tls)
		mail.SetSMTPServer("smtp.aol.com", 587);
		mail.SetSecurityType(USE_TLS);
#elif defined(test_yahoo_ssl)
		mail.SetSMTPServer("plus.smtp.mail.yahoo.com", 465);
		mail.SetSecurityType(USE_SSL);
#endif
	}
	catch (ECSmtp e)
	{
		std::cout << "Error: " << e.GetErrorText().c_str() << ".\n";
		bError = true;
	}
	if (!bError)
		std::cout << "Mail was initialized successfully.\n";
}

bool sendMail() {
	bool bError = false;

	try
	{

#define test_gmail_tls

#if defined(test_gmail_tls)
		mail.SetSMTPServer("smtp.gmail.com", 587);
		mail.SetSecurityType(USE_TLS);
#elif defined(test_gmail_ssl)
		mail.SetSMTPServer("smtp.gmail.com", 465);
		mail.SetSecurityType(USE_SSL);
#elif defined(test_hotmail_TLS)
		mail.SetSMTPServer("smtp.live.com", 25);
		mail.SetSecurityType(USE_TLS);
#elif defined(test_aol_tls)
		mail.SetSMTPServer("smtp.aol.com", 587);
		mail.SetSecurityType(USE_TLS);
#elif defined(test_yahoo_ssl)
		mail.SetSMTPServer("plus.smtp.mail.yahoo.com", 465);
		mail.SetSecurityType(USE_SSL);
#endif
		ostringstream buffer;

		mail.SetLogin(EMAIL_LOGIN_USERNAME);
		mail.SetPassword(EMAIL_LOGIN_PWD);
		string computer_name = COMPUTER_NAME;
		// formatting subject
		buffer << "Route Detection: " << COMPUTER_NAME;
		mail.SetSenderName(buffer.str().c_str());
		mail.SetSubject(buffer.str().c_str());
		buffer.str("");
		mail.SetSenderMail("user@domain.com");
		mail.SetReplyTo(EMAIL_LOGIN_USERNAME);
		mail.AddRecipient("shidayang@ufl.edu");
		mail.SetXPriority(XPRIORITY_NORMAL);
		mail.SetXMailer("The Bat! (v3.02) Professional");

		for (int i = 0; i < number_of_screens; i++) {
			buffer << "Window " << i + 1 << " succeed times: " << success_time[i];
			mail.AddMsgLine(buffer.str().c_str());
			buffer.str("");
		}
		mail.Send();
	}
	catch (ECSmtp e)
	{
		std::cout << "Error: " << e.GetErrorText().c_str() << ".\n";
		bError = true;
	}
	if (!bError) {
		std::cout << "Mail was send successfully.\n";
		return true;
	}
	else {
		return false;
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
	//printf("Map opened.\n");

	Sleep(1000);
}

void close_map() {
	char buf[2];
	sprintf_s(buf, 2, "%c", 'C');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "C") != 0);
	//printf("Map closed.\n");

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

	SetForegroundWindow(curr_game_window);

	Sleep(500);

	char buf[2];
	sprintf_s(buf, 2, "%c", 's');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "s") != 0);

	//printf("Left single click at [%d, %d]\n", x, y);

	Sleep(2000);
}

void left_double_click(int x, int y) {
	SetForegroundWindow(console_window);
	Sleep(500);

	move_mouse(x, y);

	SetForegroundWindow(curr_game_window);
	
	Sleep(500);

	char buf[2];
	sprintf_s(buf, 2, "%c", 'd');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "d") != 0);

	//printf("Left double click at [%d, %d]\n", x, y);

	Sleep(2000);
}

void talk_to_NPC_SC(bool first_time, int window_x, int window_y) {
	// talk to NPC_SC
	char buf[2];
	sprintf_s(buf, 2, "%c", 'g');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "g") != 0);

	left_single_click(window_x + 507, window_y + 344);
	left_single_click(window_x + 507, window_y + 344);
	left_single_click(window_x + 504, window_y + 291);
}

void talk_to_NPC_XJS(int window_x, int window_y) {
	// talk to NPC_XJS
	char buf[2];
	sprintf_s(buf, 2, "%c", 'g');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "g") != 0);

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

void talk_to_NPC_GJ() {
	char buf[2];
	sprintf_s(buf, 2, "%c", 't');
	arduino->writeSerialPort(buf, 1);

	do {
		wait_for_serial_response();
	} while (strcmp(incomingData, "t") != 0);
	// printf("Map opened.\n");

	Sleep(1000);
}

void walk_GJ(int window_x, int window_y) {
	left_single_click(window_x + 862, window_y + 337);
}

int detect_route(HWND hwnd) {
	RECT rect;
	int window_x, window_y;

	GetWindowRect(hwnd, &rect);
	window_x = rect.left;
	window_y = rect.top;
	
	// route 5
	//cout << "Checking route 5" << endl;
	if (get_pixel_color(window_x + 397, window_y + 354) == 6271542) {	// D3D9=6271542, OpenGL=6271542
		return 5;
	}

	// route 6
	//cout << "Checking route 6" << endl;
	open_map();
	if (get_pixel_color(window_x + 177, window_y + 154) != 6396083) {	// D3D9=6396083, OpenGL=6509158
		close_map();
		return 6;
	}

	close_map();

	// route 1 or 4
	if (get_pixel_color(window_x + 609, window_y + 492) == 6509157) {	// D3D9=6509157, OpenGL=6509158
		//cout << "Checking route 1 or 4" << endl;
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
		//cout << "Checking route 2 or 3" << endl;
		open_map();
		// route 3
		if (get_pixel_color(window_x + 475, window_y + 594) == ROUTE3_CONST) {	// D3D9=4155526, OpenGL=3826564
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