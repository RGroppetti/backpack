const e = require("express");
const Pool = require("pg").Pool;

const pool = new Pool({
  user: "postgres",
  password: "*******",
  database: "backpack",
  host: "localhost",
  port: 5432,
});

const listItems = (request, response) => {
  pool.query("SELECT * FROM item_list", (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};
const getAll = (request, response) => {
  pool.query("SELECT *", (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};
const createBackpack = (request, response) => {
  let { name, max_weigth} = request.body;
  pool.query(
    "INSERT INTO backpack(name, max_weigth) VALUES($1, $2)",
    [name, max_weigth],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send("User Added");
    }
  );
};

module.exports = {
  listItems,
  createBackpack,
  getAll
};
