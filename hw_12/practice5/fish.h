#pragma once
#include "ani.h"
using namespace std;
class fish : public animal {
public:
	fish() : nFins(2) { };
	int nFins;
	void swim() { cout << " I swim \n"; }
};