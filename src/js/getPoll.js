const mysql = require('mysql2/promise');

let connection = mysql.createPool({host:'localhost', user: 'root', password: 'root', database: 'ERmodelImplementation'});

async function getQuestionaryID(pollName) {
    [rows, details] = await connection.execute('select extra.questionary from extra where extra.value = \'' + pollName + '\'');

    let questionaryId = rows[0].questionary;

    return questionaryId;
};

async function getQuestionIDs(questionaryId){
    [rows, details] = await connection.execute('select question.id from question where question.questionary = ' + questionaryId);

    let questionIds = [];

    for(let i = 0; i < rows.length; i++){
        questionIds[i] = rows[i].id;
    };

    return questionIds;
}

async function getQuestionValue(questionId){

    let questionValue;
        
        [questionValue, details] = await connection.execute('select extra.value from extra where extra.question = ' + questionId + ' and extra.key = \'question\'');
        questionValue = questionValue[0].value;
        

    return questionValue;
}

async function getResponceAlternativeIds(questionId){

    let ResponceAlternativeIds;
    
    [ResponceAlternativeId, details] = await connection.execute('select responsealternative.id from responsealternative where responsealternative.question = ' + questionId);
    ResponceAlternativeIds = ResponceAlternativeId[0].id;

    return ResponceAlternativeIds;
}

async function getResponceAlternativeValue(ResponceAlternativeId){

    let responceAlternativeValues = [];

    [ResponceAlternativeValue, details] = await connection.execute('select extra.value from extra where extra.resposealternative = ' + ResponceAlternativeId);
    
    for(let i = 0; i < ResponceAlternativeValue.length; i++){
        responceAlternativeValues[i] = ResponceAlternativeValue[i].value;
    }

    return responceAlternativeValues;
}

async function createQuestion(questionID){
        let question = {};

        question.name = await getQuestionValue(questionID);

        let RAId = await getResponceAlternativeIds(questionID);
        
        question.RA = [];

        question.RA =  await getResponceAlternativeValue(RAId);

        return question
}

async function getPoll(pollName) {
    let data = {};
    
    data.pollName = pollName;

    data.questionaryID = await getQuestionaryID(pollName);

    data.questionIds = await getQuestionIDs(data.questionaryID);

    let questions = {}

    questions.questions = [];

    for(let i = 0; i < data.questionIds.length; i++){
        questions.questions[i] = await createQuestion(data.questionIds[i]);
    }

    connection.end();

    return questions;
};

module.exports = {
    getPoll,
}