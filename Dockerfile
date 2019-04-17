From ubuntu:18.04
run apt update
RUN apt install openjdk-8-jdk -y
run apt install wget -y
RUN apt-get update && apt-get install -y gnupg2
run wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch |  apt-key add -
run  apt install apt-transport-https
run echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" |  tee -a /etc/apt/sources.list.d/elastic-6.x.list

run  apt update &&  apt install logstash -y
add logstash.yml /etc/logstash/
run chmod -R +r /etc/logstash/
add conf.d/logstash-sample.conf /etc/logstash/conf.d/
run apt install curl -y
run service logstash start
