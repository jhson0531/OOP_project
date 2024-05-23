#include <iostream>
#include "Car.h"
#include "Engineer.h"

using namespace std;

int main() {
	Car* newCar;
	newCar = new Car(10.5,4,1000); //speed = 10.5, wheels = 4, price = 1000
	
	Engineer engineer;
	engineer = Engineer();

	//cout << "speed(public) : " << engineer.speed << endl;  
	//cout << "wheels(protected) : " << engineer.wheels << endl;
	//cout << "price(private) : " << engineer.price << endl;
	// ���� ���� ���� ������ friend class�� �Ұ���

	//engineer�� Car�� member data ����
	cout << "speed(public) : " << engineer.getCarSpeed(newCar) << endl;  
	cout << "wheels(protected) : " << engineer.getCarWheels(newCar) << endl;
	cout << "price(private) : " << engineer.getCarPrice(newCar) << endl; 

	//engineer�� Car�� member function ����(private member function)
	engineer.setSpeedUp(newCar, 5); // ���� newCar�� ���ǵ� 10.5 -> 15.5�� �ø�
	cout << "speed up 5 : " << engineer.getCarSpeed(newCar) << endl; 
}