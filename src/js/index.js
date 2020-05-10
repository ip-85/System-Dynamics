const { getQuestionary } = require('./SurveyDB.module');

const questionType = 1;
const pollName = 'Соц. опитування мешканців гуртожитку';
// const pollName = 'Соц. опитування киян';

(async () => {
  const questionary = await getQuestionary(pollName, questionType);
  console.dir(JSON.stringify(questionary), { depth: null });
})();

// node --harmony-private-methods index