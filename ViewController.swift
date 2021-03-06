//
//  ViewController.swift
//  Ultimate Sloths Quiz
//
//  Created by admin on 5/18/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  


    
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    
    
    
    
    @IBAction func handleSubmitAnswer0(_ sender: Any) {
        checkAnswer(choiceNo: 0)

    }
    
    @IBAction func handleSubmitAnswer1(_ sender: Any) {
        checkAnswer(choiceNo: 1)
    }
    
    @IBAction func handleSubmitAnswer2(_ sender: Any) {
        checkAnswer(choiceNo: 2)
    }
    
    @IBAction func handleSubmitAnswer3(_ sender: Any) {
        checkAnswer(choiceNo: 3)

    }
    
    
    var Number:Int=0
    var currentQuestion: Question?
    var currentQuestionPosition:Int=0
    var noCorrect:Int=0

    
    func checkAnswer(choiceNo:Int){
        if(choiceNo == currentQuestion!.correctAnswer){
            noCorrect += 1
            loadNextQuestion()
        }else{
    loadNextQuestion()
    }
    }
    
    
    func setQuestion() {

      questionLabel.text = currentQuestion!.question
      answer0.setTitle(currentQuestion!.answers[0], for: .normal)
      answer1.setTitle(currentQuestion!.answers[1], for: .normal)
      answer2.setTitle(currentQuestion!.answers[2], for: .normal)
      answer3.setTitle(currentQuestion!.answers[3], for: .normal)
      progressLabel.text = "Question \(currentQuestionPosition + 1) of \(questions.count)"
        }
    

    func loadNextQuestion(){
         if ((currentQuestionPosition + 1) == questions.count){
         performSegue(withIdentifier: "sgShowResults", sender: nil)
      
         } else{
             currentQuestionPosition += 1
             currentQuestion = questions[currentQuestionPosition]
             setQuestion()
       

         }
     }
    
    
     struct Question {
         let question: String
         let answers: [String]
         let correctAnswer: Int
    }
    
    
    var questions: [Question] = [
        Question(
            question: "Where do sloths live?",
            answers: ["South America", "North America", "Central America", "1 and 3"],
            correctAnswer: 3),
        Question(
            question: "Sloth's relationship with the algae in their furr is:",
            answers: ["Parasitic", "Symbiotic", "Commensalitic", "Nonexistent"],
            correctAnswer: 1),
        Question(
            question: "Sloths' lives become at risk through which typically safe process?",
            answers: ["Digestion", "Shedding", "Defacation", "Camouflage"],
            correctAnswer: 2),
        Question(
               question: "How many toes does a two-toed sloth have?",
               answers: ["2", "3", "4", "5"],
               correctAnswer: 1),
        Question(
               question: "Shocking I know. How many fingers does a two-toed sloth have?",
               answers: ["2", "3", "4", "5"],
               correctAnswer: 0)
    ]

    

    override func viewDidLoad() {
     
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        currentQuestion = questions[0]
        setQuestion()
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if(segue.identifier == "sgShowResults") {
        let vc = segue.destination as! ResultsViewController
        vc.noCorrect = noCorrect
        vc.total = questions.count
      }
        

        
    }
    
    
 
    




    


    




}



