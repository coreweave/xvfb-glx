FROM alpine:3.12

RUN apk add --no-cache xvfb mesa-gl mesa-dri-classic mesa-dri-gallium mesa-demos

ENTRYPOINT [ "Xvfb" ]
CMD [ ":8", "-screen", "0", "1920x1200x16", "+extension", "GLX", "+extension", "RENDER" ]
