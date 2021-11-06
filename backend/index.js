
const express = require('express');

const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
   console.log('GET requst for the workouts')
   res.send(workouts);
})

var workouts = [
      { 
         'name': 'Back',
         'type': 'Strength',
         'days': 'Mon/Wed/Fri',
      },
      { 
         'name': 'Chest',
         'type': 'Strength',
         'days': 'Tues/Thurs',
      },
      { 
         'name': 'Legs',
         'type': 'Strength',
         'days': 'Mon/Wed/Fri',
      },
      { 
         'name': 'Bicepts',
         'type': 'Strength',
         'days': 'Mon/Wed/Fri',
      },
      { 
         'name': 'Tricepts',
         'type': 'Strength',
         'days': 'Tues/Thurs',
      },
      { 
         'name': 'Biking',
         'type': 'Cardio',
         'days': 'Tues/Thurs',
      },
      { 
         'name': 'Running',
         'type': 'Cardio',
         'days': 'Mon/Wed',
      },
      { 
         'name': 'Swimming',
         'type': 'Cardio',
         'days': 'Sat',
      },
];

app.listen(PORT, () => {
   console.log(`Server running at http://localhost:${PORT}/`);
});