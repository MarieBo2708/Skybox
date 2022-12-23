#version 330 core

layout (location = 0) in vec3 aPos;

out vec3 textCoords;

uniform mat4 view;
uniform mat4 projection;

void main()
{
  textCoords = aPos;
  gl_Position = projection * view * vec4(aPos.x, aPos.y, aPos.z, 1.0);
}