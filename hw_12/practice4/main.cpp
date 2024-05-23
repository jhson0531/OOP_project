#include <iostream>
#include "Car.h"
#include "SUV.h"
#include "Motor.h"
#include "Engineer.h"
using namespace std;

int main() {
	Car newcar = Car();
	Car newSUV = SUV();        //SUV newSUV = SUV();
	Car newMotor = Motor();    //Motor newMotor = Motor();   -> virtual 없이도 자식클래스의 함수가 실행
	

	cout << "Car airbag deployment : ";
	newcar.airbag();

	cout << "SUV airbag deployment : ";
	newSUV.airbag();

	cout << "Motor airbag deployment : ";
	newMotor.airbag();

}
