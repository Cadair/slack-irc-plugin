.PHONY: all clean build deploy redeploy

all: redeploy

clean:
	- docker rmi tutum.co/yhsiang/g0v-slackbot

build: clean
	docker build -t tutum.co/yhsiang/g0v-slackbot .

deploy: build
	docker push tutum.co/yhsiang/g0v-slackbot

redeploy: deploy
	tutum service redeploy g0v-slackbot