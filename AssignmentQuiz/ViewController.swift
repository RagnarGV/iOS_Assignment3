//
//  ViewController.swift
//  AssignmentQuiz
//
//  Created by Gaurav Hariyani on 2024-07-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Cancel", style: .plain, target: nil, action: nil)
        
    }
    @IBAction func buildQuestionBankTapped(_ sender: UIButton) {
     
            performSegue(withIdentifier: "showQuestionBank", sender: self)
        
           
       }
       
       @IBAction func startQuizTapped(_ sender: UIButton) {
           if QuestionManager.shared.questions.count == 0 {
               let alert = UIAlertController(title: "Sorry!", message: "Please add the questions.", preferredStyle: .alert)
               alert.addAction(UIAlertAction(title: "OK", style: .destructive))
               present(alert, animated: true)
           } else {
           performSegue(withIdentifier: "showQuiz", sender: self)
           }
       }

}

