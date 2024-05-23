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
	// 위와 같이 직접 접근은 friend class라도 불가능

	//engineer로 Car의 member data 접근
	cout << "speed(public) : " << engineer.getCarSpeed(newCar) << endl;  
	cout << "wheels(protected) : " << engineer.getCarWheels(newCar) << endl;
	cout << "price(private) : " << engineer.getCarPrice(newCar) << endl; 

	//engineer로 Car의 member function 접근(private member function)
	engineer.setSpeedUp(newCar, 5); // 원래 newCar의 스피드 10.5 -> 15.5로 늘림
	cout << "speed up 5 : " << engineer.getCarSpeed(newCar) << endl; 
}