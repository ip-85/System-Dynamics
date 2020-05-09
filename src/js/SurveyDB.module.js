const mysql = require('mysql2/promise');
const bluebird = require('bluebird');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'mario',
  database: 'ERmodelImplementation'
});

const getQuestionaryID = async name => {
  const query = 'SELECT questionary FROM extra WHERE value = ? AND extra.key = "name";';
  const [ nameObj ] = await pool.query(query, [ name ]);
  const [ { questionary } ] = nameObj;
  return questionary;
};

const populate = async (arr, reducer) => {
  const reduced = await bluebird.reduce(arr, reducer, []);
  return reduced;
};

const questionReducer = async (questions, qNumber) => {
  const questionQuery = 'SELECT value FROM extra WHERE question = ? AND extra.key = "question";';
  const raQuery = 'SELECT value FROM extra WHERE resposealternative = ? AND extra.key LIKE "RA%";';
  const [ qObj ] = await pool.query(questionQuery, [ qNumber ]);
  const [ raObj ] = await pool.query(raQuery, [ qNumber ]);
  // const queries = [questionQuery, raQuery];
  // const mapQueryFn = async q => await pool.query(q, [ qNumber ]); 
  // const resQueries = await bluebird.map(queries, mapQueryFn);
  // const [ qObj, raObj ] = resQueries.map(x => x[0]);
  const question = {
    ask: qObj.pop().value,
    ra: raObj.map(x => x.value)
  };
  return [...questions, question];
}

const getQuestionsIDs = async (qID, qType) => {
  const query = 'SELECT id FROM question WHERE questionary = ? AND questionType = ?;';
  const [ idsObj ] = await pool.query(query, [qID, qType]);
  const ids = idsObj.map(x => x.id)
  return ids;
};

const getQuestionary = async (name, qType) => {
  const qustionaryID = await getQuestionaryID(name);
  const questionIDs = await getQuestionsIDs(qustionaryID, qType);
  const questions = await populate(questionIDs, questionReducer);
  pool.end();
  return { name, questions };
};

module.exports = { getQuestionary };
