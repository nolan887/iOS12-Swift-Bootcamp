//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
    }
    
    
    func updateUI() {
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
        questionLabel.text = allQuestions.listOfQuestions[questionNumber].questionText
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "Question: \(questionNumber+1) of \(allQuestions.listOfQuestions.count)"
        
    }
    

    func nextQuestion() {
        questionNumber += 1
        if questionNumber < allQuestions.listOfQuestions.count {
            updateUI()
        } else {
            let alert = UIAlertController(title: "Finished", message: "You have completed all of the questions, would you like to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (restartAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.listOfQuestions[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score += 100
        } else {
            ProgressHUD.showError("Incorrect")
        }
        nextQuestion()
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        updateUI()
    }
    

    
}
