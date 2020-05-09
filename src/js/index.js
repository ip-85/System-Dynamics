// const SurveyDB = require('./SurveyDB.class');
const { getQuestionary } = require('./SurveyDB.module');

// const survey = new SurveyDB();

const questionType = 1;
const pollName = 'Соц. опитування мешканців гуртожитку';
// const pollName = 'Соц. опитування киян';

(async () => {
  // const questionary = await survey.getQuestionary(1);
  // console.log(questionary);
  // survey.closeConnection();
  const questionary = await getQuestionary(pollName, questionType);
  console.dir(JSON.stringify(questionary), { depth: null });
})();

// node --harmony-private-methods index
