//  main.swift

//  Guess My Number OOP

//  Created by Ann Greyson on 8/21/19.
//  Copyright © 2019 Greyson. All rights reserved.

//



import Foundation

class GuessMyNumberGame {
    var guesses: Int;
    var mysteryNumber: Int;
    
    init(){
        self.guesses = 0
        mysteryNumber = Int.random(in: 1...100)
    }
    
    func playOneRound() {
        print("I'm thinking of a number between 1 and 100. Guess it! [\(mysteryNumber)]")
        while let userInput = readLine(){
            if let guess = Int(userInput){
                if (guess != mysteryNumber){
                    if (guess < mysteryNumber){
                        print("Too low. Try again.")
                    } else {
                        print("Too high. Try again.")
                    }
                } else {
                    print("Correct!")
                    return
                }
            } else {
                print("Invalid entry. Guess again.")
            }
        }
    }
    
    func play() {
        print("Welcome to Guess My Number!")
        var goAgain = "Y"
        while goAgain == "Y" {
            playOneRound()
            mysteryNumber = Int.random(in: 1...100)
            print("Enter Y to play again.")
            goAgain = readLine()!
        }
        print("Good-bye!")
    }
}

GuessMyNumberGame().play()
