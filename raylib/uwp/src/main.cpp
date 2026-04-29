#include <Windows.h>
#include "libuwp.h"

// Hook into odin land
extern "C" int external_entry(void);

int CALLBACK WinMain(HINSTANCE, HINSTANCE, LPSTR argv, int argc)
{
	return uwp_main(external_entry);
}
