//
//  Question.swift
//  Quiz
//
//  Created by Михаил Зайцев on 20.01.16.
//  Copyright © 2016 Xanik. All rights reserved.
//

import UIKit

class Question {
    // Текст вопроса
    let text:String
    
    // Массив строк
    let answers:[String]
    
    let correctAnswer:String
    let imageName :String
    
    // Тип optional. Может создаться с изображением, а может и нет
    var image: UIImage? {
        get {
            // Создаст объект с изображением
            return UIImage(named: imageName)
        }
    }
    
    init(text:String, answers:[String], correctAnswer:String, imageName:String){
        self.text = text
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
    
    // Метод для проверки одного из вариантов ответа
    func isCorrectAnswer(answer:String) -> Bool {
        return answer == correctAnswer
    }
}
