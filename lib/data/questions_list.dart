import 'package:quiz_app/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    'Where did Orville and Wilbur Wright build their first flying machine?',
    {
      'Paris , France': false,
      'Boson , Massachusettes': false,
      'Kitty Hawk , North Carolina': true,
      'Tokyo , Japan': false,
    },
  ),
  QuestionModel(
    'How many Whiskers does the average cat have on each site of its face? ',
    {
      '1': false,
      '3': false,
      '12': true,
      '5, 007': false,
    },
  ),
  QuestionModel('What is the average number of kitten in a litter?', {
    '1 to 2': false,
    '3 to 5': true,
    '6 to 8': false,
    '10 to 12': false,
  }),
  QuestionModel('How many moons does Mars have?', {
    '1': false,
    '2': false,
    '4': true,
    '8': false,
  }),
  QuestionModel('What is Mars\'s nickname? ', {
    'The Red planet': true,
    'The dusty planet': false,
    'The hot planet': false,
    'The smelly planet': false,
  }),
  QuestionModel('About how long would it take to travel to Mars ', {
    'Three days': false,
    'A month': false,
    'Eight months': true,
    'Two years': false,
  }),
  QuestionModel(
      'Mars is named after the Roman god Mars. What is he the god of ?', {
    'Fire': false,
    'Love': false,
    'Agriculture': false,
    'War': true,
  }),
  QuestionModel(
      'Where did Orville and Wilbur Wright build their first flying airplane ',
      {
        "Par": true,
        'The dusty planet': false,
        'The hot planet': false,
        'The smelly planet': false,
      }),
  QuestionModel('Mars is the ____ planet from the sun? ', {
    "Second": false,
    'Third': false,
    'Fourth': true,
    'Sixth': false,
  }),
  QuestionModel(
      'The first astronuts to travel to space came from which country? ', {
    "United States": false,
    'Soviet Union': false,
    'China': false,
    'Rocketonia': false,
  }),
];
