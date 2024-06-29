FROM openjdk:11

WORKDIR /workspace

RUN apt update && apt install -y git make \
    byacc time

RUN git clone https://github.com/Frege/frege.git

WORKDIR /workspace/frege

RUN make fetch-fregec.jar

RUN make runtime compiler

WORKDIR /workspace/frege/example

COPY hello.fr .

WORKDIR /workspace/frege

COPY run.sh .

CMD "./run.sh"