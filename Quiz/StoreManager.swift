//
//  StoreManager.swift
//  Quiz
//
//  Created by Михаил Зайцев on 21.01.16.
//  Copyright © 2016 Xanik. All rights reserved.
//

import UIKit

class StoreManager {
    func loadQuestionsByTheme(theneName:String) -> [Question] {
        
        let question = Question(text: "Как звали няню Пушкина?", answers: ["Вася", "Арина Радионовна", "Виолетта Акардионовна", "Александра Юрьевна"], correctAnswer: "Арина Радионовна", imageName: "1")
        
        return [question]
    }

}
