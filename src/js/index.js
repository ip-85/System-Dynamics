const SurveyDB = require('./SurveyDB.class');

const survey = new SurveyDB();

(async () => {
  const questionary = await survey.getQuestionary(1);
  console.log(questionary);
  survey.closeConnection();
})();

// node --harmony-private-methods index
