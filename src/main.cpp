#include <iostream>
#include <./SDL.h>
#include <./SDL_opengl.h>

// "compilerPath": "C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.25.28610/bin/Hostx64/x64/cl.exe",
constexpr int WINDOW_WIDTH = 640;
constexpr int WINDOW_HEIGHT = 480;


int main(int argc, char const *argv[])
{

    if(SDL_Init(SDL_INIT_EVERYTHING) < 0){
        std::cout << "SDL failed to initialize. SDL Error: " << SDL_GetError() << std::endl; 
        return EXIT_FAILURE;
    }
    
    // SDL_Window* window = SDL_CreateWindow("Hello World", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
    //     WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);

    // if(nullptr == window){
    //     std::cout << "SDL failed to create window. SDL Error: " << SDL_GetError() << std::endl; 
    //     return EXIT_FAILURE;
    // }

    // SDL_Event e;
    // while( true){
    //     if(SDL_PollEvent(&e)){
    //         if (SDL_QUIT == e.type){
    //             break;
    //         }

    //     }
    // }


    return EXIT_SUCCESS;
}

