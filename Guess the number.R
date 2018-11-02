#Create a "Start" variable which will print a welcome message
Start<-print("Lets be honest, we all wish we could read minds... but what if you could read a computer's 'mind'?")
#Create an "Instructions" variable to print out instructions for the game
Instructions<-print("You'll begin by running the sample function on the 'computer_number' variable. After this, you'll be selecting your own number between 1 and 33 and inputing it into the 'my_number' variable. To finish, run the 'if' function to get a response. If you got it wrong, you may try again by only changing your number response or get the computer to choose a new number and then continue the rest of the process. Good luck!")

#Game
Start
Instructions
#Create a variable which contains the number chosen at random using the 'sample' function. The range to choose from is from 1:33 and the size of the sample is 1
computer_number <- sample(1:33,size=1)
#create a variable in which the user will input their chosen number
my_number <- 15
#Use 'if...else' to create a decision tree which prints out a response based on whether your chosen number is higher, lower or equal to the one selected by the computer to the 
  if(my_number < computer_number){
    print ( "Why are you aiming so LOW?" )
  } else if(my_number > computer_number){
    print ( "Do yourself a favor a LOWER your number!" )
  } else {
    print ( "You GO Professor X!" )
  }
#Write the name of the variable which holds the randomly selected number in case the player wants to print out the random number
computer_number

#Ps. Thanks for the hint about how to stop infinite loops!!!