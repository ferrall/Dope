#include "Dope.h"

Dope::ModelSetUp() {
    Initialize(new Dope());
    SetClock(UncertainLongevity,TMax,0.0);
    SetDelta();
    Actions();
	ExogenousStates();
    EndogenousStates();
    GroupVariables();
    CreateSpaces();
	}

/**CONSTRAINTS ON CHOICE:**/
Dope::FeasibleActions(Alpha) {
	return ones(rows(Alpha,1));
	}

Dope::Reachable() {
	return TRUE;
	}

Dope::Utility() {
	}
