#version 330 core
out vec4 FragColor;
 
in vec3 Normal;
in vec3 position;

uniform vec3 cam_pos;
uniform samplerCube skybox;

void main()
{
    vec3 I = normalize(position - cam_pos);
    vec3 R = reflect(I, normalize(Normal));
    FragColor = vec4(texture(skybox, R).rgb, 1.0);
}