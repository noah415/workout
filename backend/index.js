
const express = require('express');

const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
   res.send(workouts);
})

var workouts = {
   'workouts': [
      { 
         'name': 'Back',
         'type': 'Strength',
         'days': 'Mon/Wed/Fri',
      }
   ]
}

app.listen(PORT, () => {
   console.log(`Server running at http://localhost:${PORT}/`);
});