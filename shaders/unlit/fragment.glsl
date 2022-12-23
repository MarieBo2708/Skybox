#version 330 core

out vec4 FragColor;

in vec3 textCoords;

uniform samplerCube cubeText;

void main()
{    
    FragColor = texture(cubeText, textCoords);
}