#!/bin/bash

ask deploy
aws cloudformation deploy --stack-name alexa-english-friends --template-file ./lambda/resources/scenes.yaml --capabilities CAPABILITY_IAM
