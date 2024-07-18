//
//  ResultViewController.swift
//  AssignmentQuiz
//
//  Created by Gaurav Hariyani on 2024-07-18.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score: Int = 0
    var totalQuestions: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Exit", style: .plain, target: nil, action: nil)
        scoreLabel.text = "You scored \(score) out of \(totalQuestions)"
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showHome", sender: self)
    }
    
}
