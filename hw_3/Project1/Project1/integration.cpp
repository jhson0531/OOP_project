#include <iostream>
#include <math.h>
using namespace std;
void main() { // integration
	float a, b, dx, anal, num;
	a = 0;
	b = 1;
	int N;

	anal = sin(b) - sin(a);

	for (int i = 0; i < 100; i++) {
		N = 100 + i * 4;
		dx = (b - a) / N;
		num = 0;
		for (int j = 1; j < N + 1; j++) {
			num += cos(a + dx * j) * dx;
		}
		cout << (num - anal) / anal * (-100) << "%\n";
	}
}