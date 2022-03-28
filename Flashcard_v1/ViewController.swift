//
//  ViewController.swift
//  Flashcard_v1
//
//  Created by Yonggao Yang on 3/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    
    var questions: [String] = []    //used to store all the questions (strings)
    var answers: [String] = []      //used to store all the answers (strings)
    var cardIndex = 0          //pointing to the 1st card
    
    override func viewDidLoad() {//the starting point of the app
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoadQuestionsAnswers() //call this function to build the stack of flashcards
        qLabel.text = questions[cardIndex]
        aLabel.text = "???"
    }

    //function for loading questions and answers to the flashcards
    func LoadQuestionsAnswers() {
        questions.append("Which city is the capital of Japan?")
        answers.append("Tokyo")
        questions.append("2 to power of 10 = ?")
        answers.append("1024")
        questions.append("Who is the current Governor of TX?")
        answers.append("Greg Abbott")
        //.......
    }
    
    @IBAction func nextQAction(_ sender: Any) {
        cardIndex += 1   //cardIndex = cardIndex + 1
        if cardIndex == questions.count {//out of boundary
            cardIndex = 0
        }
        qLabel.text = questions[cardIndex]
        aLabel.text = "???"
    }
    
    @IBAction func showAAction(_ sender: Any) {
        aLabel.text = answers[cardIndex]
    }
    
    
}

