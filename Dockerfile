FROM ubuntu:16.04

RUN apt update && apt update
RUN apt install -y curl wget unzip

WORKDIR /sim
RUN wget https://github.com/tawnkramer/donkey_gym/releases/download/v18.9/DonkeySimLinux.zip
RUN unzip DonkeySimLinux.zip

CMD /sim/DonkeySimLinux/donkey_sim.x86_64 -nographics --port 9092 -logFile unitylog.txt


