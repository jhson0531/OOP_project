#include <iostream>
#include "ani.h"
#include "fish.h"
using namespace std;
int main() {
	animal* a[3];
	for (int i = 0;i < 2;i++) {
		a[i] = new fish();
		cout << "a+i : " << a + i << endl;
		cout << "a[i] : " << a[i] << endl;
	}
	fish c;

	cout << "fish c : " << &c << endl;
	
	a[2] = &c;

	//a[2] -> swim();
	((fish*)a[2])->swim();

	return 123;
}
