FROM Abishnoi/ExonRobot-python:latest

RUN  git clone https://github.com/luteg96/Hu-Tao -b master  /root/ExonRobot
RUN  mkdir  /root/ExonRobot/bin/
WORKDIR /root/ExonRobot/

COPY  ./Exon/elevated_users.json* ./Exon/config.py* /root/ExonRobot/Exon/
RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "Exon"]
