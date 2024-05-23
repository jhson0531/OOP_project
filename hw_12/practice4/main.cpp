#include <iostream>
#include "Car.h"
#include "SUV.h"
#include "Motor.h"
#include "Engineer.h"
using namespace std;

int main() {
	Car newcar = Car();
	SUV newSUV = SUV();
	Motor newMotor = Motor();

	cout << "Car airbag deployment : ";
	newcar.airbag();

	cout << "SUV airbag deployment : ";
	newSUV.airbag();

	cout << "Motor airbag deployment : ";
	newMotor.airbag();

}