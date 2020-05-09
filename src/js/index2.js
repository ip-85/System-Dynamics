const getPoll = require('./getPoll.js');

const pollName = 'Соц. опитування мешканців гуртожитку';

(async () =>{
    let questions = await getPoll.getPoll(pollName);

    console.log(questions.questions);
})();