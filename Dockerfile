FROM pahud/aws-sam-cli:latest

RUN sudo apt update
RUN sudo apt -y upgrade
RUN sudo apt -y install gcc g++ make jq curl dirmngr apt-transport-https lsb-release ca-certificates git openssl

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

RUN sudo apt -y install nodejs 

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN sudo apt update
RUN sudo apt -y --no-install-recommends install yarn

RUN yarn global add apollo graphql-cli swagger-combine
