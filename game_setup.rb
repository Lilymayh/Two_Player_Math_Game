=begin
Classes:

Question: generates random math addition questions with two random numbers
- initialize: initializes a new question with two random numbers
- methods: generate_question, verify_answer

Player: represents a player, their score, remaining lives, and ability to answer questions
- info: name, number of lives
- initialize: initializes a new player with a name and number of lives
- methods: answer_question, lives_remaining, game_over

Score: keeps track of each player's score
- info: scores of each player
- initialize: initializes a new score tracker with the names of the two players
- methods: update_score

Methods:
- game loop method: manages the flow of the game
- player methods: methods related to player actions and attributes
- Question generation method: method for generating math addition questions
=end