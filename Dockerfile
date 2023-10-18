FROM ubuntu

# Install pre-requites
RUN apt-get update
RUN apt-get -y install git && apt-get -y install python3 && apt-get -y install pip && apt-get -y install virtualenv && apt-get -y install python-is-python3

RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN python3 ./aws-elastic-beanstalk-cli-setup/scripts/ebcli_installer.py
ENV PATH="${PATH}:/root/.ebcli-virtual-env/executables"
