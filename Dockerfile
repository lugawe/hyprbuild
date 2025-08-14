FROM gcc:trixie

WORKDIR /build

COPY dependencies.sh .
RUN ./dependencies.sh

COPY hyprwayland-scanner.sh .
RUN ./hyprwayland-scanner.sh

COPY hyprutils.sh .
RUN ./hyprutils.sh

COPY aquamarine.sh .
RUN ./aquamarine.sh

COPY hyprlang.sh .
RUN ./hyprlang.sh

COPY hyprcursor.sh .
RUN ./hyprcursor.sh

COPY hyprgraphics.sh .
RUN ./hyprgraphics.sh

COPY hyprland.sh .
RUN ./hyprland.sh
