const mysql = require('mysql2');

class SurveyDB {
  #conn;
  constructor() {
    this.#conn = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: 'mario',
      database: 'ERmodelImplementation'
    }).promise();
  }

  closeConnection() {
    this.#conn.end();
  }

  #createQuestion(raArr) {
    const resObj = {
      question: raArr[0].question
    };
    for (const raEl of raArr) {
      const { key, ra } = raEl;
      resObj[key] = ra;
    }
    return resObj;
  }

  async #getQueryResponse(id) {
    const [ queryRes ] = await this.#conn
      .query('SELECT a.question AS num, b.key, a.value AS question, b.value AS ra'
        + ' FROM extra a INNER JOIN extra b'
        + ' ON (a.question = b.resposealternative AND a.key <> "questionary")'
        + ' OR (a.key = "name" AND a.questionary = ? AND b.key = "name" AND b.questionary = ?)'
        + 'ORDER BY num;',
        [id, id]
      );
      return queryRes;
  }

  async getQuestionary(questionaryID) {
    const questionary = {};
    const queryRes = await this.#getQueryResponse(questionaryID);
    questionary.name = queryRes.shift().ra;
    // console.log(queryRes);

    let i = 0;
    let u = 1;
    let tempData;
    while (i < queryRes.length) {
      tempData = [];
      // console.log(u, i, queryRes[i].num, queryRes.length);
      while (queryRes[i] && u == queryRes[i].num) {
        const val = queryRes[i];
        tempData.push(val);
        // console.log({u, i});
        i++;
      }
      const questionObj = this.#createQuestion(tempData);
      questionary[`question${u}`] = questionObj;
      u++;
    }

    console.log(questionary);
    return JSON.stringify(questionary);
  }

}

module.exports = SurveyDB;
