#pragma once
#include "Car.h"
class Engineer {
public:
	float getCarPrice(Car*);
	int getCarWheels(Car*);
	float getCarSpeed(Car*);
	void setSpeedUp(Car*, float);
};
