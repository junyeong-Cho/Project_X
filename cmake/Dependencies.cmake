include(FetchContent)

include(cmake/dependencies/OpenGL.cmake)    #defines target ProjectX_opengl
include(cmake/dependencies/GLEW.cmake)      # defines target ProjectX_glew
include(cmake/dependencies/SDL2.cmake)      # defines target ProjectX_sdl2
include(cmake/dependencies/DearImGUI.cmake) # defines target imgui   ;  note DearImGUI.cmake depends on SDL2.cmake
include(cmake/dependencies/STB.cmake)       # defines target stb
include(cmake/dependencies/GSL.cmake)       # defines target gsl
include(cmake/dependencies/GLM.cmake)       # defines target ProjectX_glm
include(cmake/dependencies/freetype.cmake)  # defines target freetype
include(cmake/dependencies/SFML.cmake)      # defines target ProjectX_sfml

add_library(dependencies INTERFACE)

target_link_libraries(dependencies INTERFACE 
    ProjecX_opengl
    ProjecX_glew
    ProjecX_sdl2
    imgui
    stb
    gsl
    ProjecX_glm
    freetype  
    #ProjectX_openal
)
