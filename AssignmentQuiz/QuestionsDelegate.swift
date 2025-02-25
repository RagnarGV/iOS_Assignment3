//
//  QuestionsDelegate.swift
//  AssignmentQuiz
//
//  Created by Gaurav Hariyani on 2024-07-18.
//

import Foundation
protocol QuestionDelegate: AnyObject {
    func didSaveQuestion(question: Questions)
    func didUpdateQuestion(question: Questions, at index: Int)
}
