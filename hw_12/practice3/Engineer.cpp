#include "Engineer.h"
float Engineer::getCarPrice(Car* xx){
	return xx->price; // access private member data
}

int Engineer::getCarWheels(Car* ww) {
	return ww->wheels; // access protedted member data
}

 float Engineer::getCarSpeed(Car* ss) {
	return ss->speed; //access public member data
}

 void Engineer::setSpeedUp(Car* car, float xx) {
	 car->speedUp(xx);
 }