FROM ubuntu:latest

RUN apt-get update && apt-get install -y bash

COPY virus.sh /virus.sh
RUN chmod +x /virus.sh

CMD ["/virus.sh"]
