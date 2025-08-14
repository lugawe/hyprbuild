FROM gcc:trixie

WORKDIR /build

COPY . /build

RUN sh dependencies.sh

RUN sh hyprwayland-scanner.sh

RUN sh hyprutils.sh

RUN sh aquamarine.sh

RUN sh hyprlang.sh

RUN sh hyprcursor.sh

RUN sh hyprgraphics.sh

RUN sh hyprland.sh
