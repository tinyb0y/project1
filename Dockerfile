FROM ubuntu
RUN apt-get update && apt-get install -y curl\
	 && curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh \
	 && sh nodesource_setup.sh \
	 && apt-get install -y nodejs \
	 && npm install -g @angular/cli

COPY . /app
WORKDIR /app
RUN npm install
CMD ng serve --host 0.0.0.0

EXPOSE 4200


