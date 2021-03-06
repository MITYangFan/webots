#version 330

layout(location = 0) in vec3 vCoord;

uniform mat4 modelTransform;

// Camera transforms for this frame
layout(std140) uniform CameraTransforms {
  mat4 view;
  mat4 projection;
  mat4 infiniteProjection;
}
cameraTransforms;

void main() {
  gl_Position = cameraTransforms.infiniteProjection * cameraTransforms.view * modelTransform * vec4(vCoord, 1.0);
}
