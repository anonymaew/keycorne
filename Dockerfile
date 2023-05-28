FROM zmkfirmware/zmk-build-arm:3.2

RUN git clone https://github.com/zmkfirmware/zmk.git
WORKDIR /zmk/app
RUN west init -l /zmk/app
RUN west update
RUN west zephyr-export

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
VOLUME ["/zmk/app/config","/output"]
ENTRYPOINT ["/entrypoint.sh"]
