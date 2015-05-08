#include "WedoEngine/WedoEngine.h"

int main( int argc, char *argv[] ) {
	if( WedoEngine_Initialize() ) {
		WedoEngine_ExecuteScript(argc, argv, "Main.fe");
		WedoEngine_Terminate();
	}

	return 0;
}
