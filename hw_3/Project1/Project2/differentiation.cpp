#include <iostream>
#include <math.h>
using namespace std;
void main() { 	// differentiation
	float x, h, num, anal;
	x = 1;

	for (int i = 0; i < 100; i++) {
		h = 0.01 - i * 0.00009;
		anal = -sin(x);
		num = (cos(x + h) - cos(x)) / h;
		cout << (num - anal) / anal * 100 << "%\n";
	}
}