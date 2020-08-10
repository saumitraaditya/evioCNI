FROM partlab/ubuntu-golang

WORKDIR /root/
COPY ./evioUtilities .
COPY ./evioPlugin .
COPY ./cmd.sh .
RUN chmod +x cmd.sh
RUN chmod +x evioUtilities
RUN chmod +x evioPlugin

CMD ["./cmd.sh"]
