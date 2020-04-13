#include <iostream>
#include <SDL2\SDL.h>
#include <SDL2\SDL_opengl.h>


int main(int argc, char const *argv[])
{

    if(SDL_init(SDL_INIT_EVERYTHING) < 0){
        std::cout << "SDL failed to initialize. SDL Error: " << SDL_GetError() << std::endl; 
    }
    else{
        std::cout << "SDL initialized successfully!" << std::endl;
    }

    return 0;
}

