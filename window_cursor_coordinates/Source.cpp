#include <iostream>
#include <Windows.h>
#include <string>
#include <string.h>
#include <stdio.h>
using namespace std;

int main() {
	POINT p;
	int x;
	int y;

	while (1) {
		HWND hwnd = GetForegroundWindow();
		RECT rect;
		GetWindowRect(hwnd, &rect);
		cout << "Window Pos: x = " << rect.left << ", y = " << rect.top << endl;

		GetCursorPos(&p);
		x = p.x;
		y = p.y;

		cout << "Cursor Pos: x = " << x << ", y = " << y << endl;

		cout << "---------------------------------------------" << endl;

		Sleep(1000);

	}
}