# alexa_english_teacher
english teacher alexa skill

# requirements
- alexa-sdk
- ASK CLI

# setup
```bash
npm install --save alexa-sdk
npm install -g ask-cli
ask init
```

# deploy
```bash
sh deploy.sh
```

# test

# example conversation

- Dialog
User: 'alexa, call to english friends'
Alexa: 'Hi. What would you select scene?'
User: 'with my friends'
Alexa: 'You want to tell your friends you like Japanse Anime movies'
User: 'I like action movies'
Alexa: 'You like action movies! What your favorites title?'
User: 'Your name(Kimi no na wa)'
Alexa: 'Oh! It's nice!'

- One shot
User: 'alexa, call to english friends, I'm in the hospital'
Alexa: 'Hi. You are in the hospital. You want to tell the doctor you have much fever.'
User: 'I have a fever'
Alexa: 'What is current temparature?'
User: 'Thirty nine degrees'
Alexa: 'OK. I will give some medicine for your fever'

# specification
## SceneIntent:
  Get the scene specified in user utterances. (ex: hospital, friends house, station ..)
  then get expected intent from dynamodb. and pick up and save a record which matched categories in alexa session.

### alexa_english_teacher_conversation_maps(example)
| scene_id      | category      | expected_intents|
| ------------- |:-------------:| -----:|
| hospital_scene_001 | hospital | hospitalIntent001_001, hospitalIntent001_002 |
| hospital_scene_002 | hospital | hospitalIntent002_001, hospitalIntent002_002, hospitalIntent002_003 |

## Answer from User
utterance which user says as answer matched expected_intents, Alexa replies 'good' message.
if answer does not matched intent, Alexa replies 'bad' message.
