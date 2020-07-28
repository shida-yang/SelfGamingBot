#include <iostream>
#include <Windows.h>
#include <string>
#include <string.h>
#include <stdio.h>
using namespace std;

int main() {

	int x;
	int y;

	int i = 0;

	while (0 == 0) {

		cout << "X=";
		cin >> x;
		cout << endl;

		cout << "Y=";
		cin >> y;
		cout << endl;

		HDC hDC;

		hDC = GetDC(NULL);

		uint32_t rgb_val = GetPixel(hDC, x, y);
		uint32_t red = rgb_val & 0xFF;
		uint32_t green = (rgb_val >> 8) & 0xFF;
		uint32_t blue = (rgb_val >> 16) & 0xFF;

		cout << rgb_val << ", Red: " << red << ", Blue: " << blue << ", Green: " << green << endl;

		cout << "---------------------------------------------" << endl;


	}
}