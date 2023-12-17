// import express from 'express';
import cors from 'cors';


var app = express();

app.use(cors());


app.get('/', (req, res) => {
  res.send('Hello Be3o!');
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});