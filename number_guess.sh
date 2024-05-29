#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"

RANDOM_NUMBER=$(($RANDOM%1000 + 1));
# echo $RANDOM_NUMBER
if [[ -z $1 ]]
then
echo Enter your username:
read NAME

  USER=$($PSQL "SELECT name FROM users WHERE name='$NAME'")

  if [[ -z $USER ]]
  then
  echo "Welcome, $NAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$NAME')")
  echo "Guess the secret number between 1 and 1000:"
  read NUMBER
    if [[ ! $NUMBER =~ [0-9]$ ]]
    then
    echo That is not an integer, guess again:
    read NUMBER
    else
    TRIES=1
      while [ ! $NUMBER == $RANDOM_NUMBER ]
      do
        TRIES=$(expr $TRIES + 1)
        if [[ $NUMBER < $RANDOM_NUMBER ]]
        then 
        echo "It's higher than that, guess again:"
        read NUMBER
        elif [[ $NUMBER > $RANDOM_NUMBER ]]
        then 
        echo "It's lower than that, guess again:"
        read NUMBER
        fi
      done
      echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
      
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$NAME'")
      INSERT_USER_ID=$($PSQL "INSERT INTO games(user_id, best_game) VALUES($USER_ID, $TRIES)")
    fi
    

  else

  SUM_GAME=$($PSQL "SELECT SUM(games_played) FROM games INNER JOIN users USING(user_id) WHERE name='$NAME'")
  BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM games INNER JOIN users USING(user_id) WHERE name='$NAME'")
  
  echo "Welcome back, $USER! You have played $SUM_GAME games, and your best game took $BEST_GAME guesses."
  echo "Guess the secret number between 1 and 1000:"
  read NUMBER
    if [[ ! $NUMBER =~ [0-9]$ ]]
    then
    echo That is not an integer, guess again:
    read NUMBER
    else
      TRIES=1
      while [ ! $NUMBER == $RANDOM_NUMBER ]
      do
        TRIES=$(expr $TRIES + 1)
        if [[ $NUMBER < $RANDOM_NUMBER ]]
        then 
        echo "It's higher than that, guess again:"
        read NUMBER
        elif [[ $NUMBER > $RANDOM_NUMBER ]]
        then 
        echo "It's lower than that, guess again:"
        read NUMBER
        fi
      done
      echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"

      USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER'")
      INSERT_USER_ID=$($PSQL "INSERT INTO games(best_game, user_id) VALUES($TRIES, $USER_ID)")

    fi
  fi
fi
