//
//  StoreManager.swift
//  Quiz
//
//  Created by Михаил Зайцев on 21.01.16.
//  Copyright © 2016 Xanik. All rights reserved.
//

import UIKit

class StoreManager {
    func loadQuestionsByTheme(theneName:String) -> [Question]? {
        
        // Найдем путь к файлу с информацией о викторине
        let path = NSBundle.mainBundle().pathForResource("cinema", ofType: "json")
        
        // Проверить условие и продолжить дальше, только если оно выполняется
        guard path != nil else {
            
            return nil
        }
        
        // Загрузим сюда данные
        let data = NSData(contentsOfFile: path!)
        
        guard data != nil else {
            return nil
        }
        
        // Преобразуем байты в объект
        do {
           let json = try NSJSONSerialization.JSONObjectWithData(data!, options: [])
        
            print(json)
            let questionInfos = json["questions"] as! [NSDictionary]
            
            // Создадим массив
            var questionsObjects = [Question]()
            
            for info in questionInfos {
                
                let questionsObject = Question(json: info)
                questionsObjects.append(questionsObject)
            }
            
             return questionsObjects
            
        }
        catch {
            print("Oops: \(error)")
            return nil
        }
        
        /*let question = Question(text: "Как звали няню Пушкина?",
            answers: ["Вася", "Арина Радионовна", "Виолетта Акардионовна", "Александра Юрьевна"],
            correctAnswer: "Арина Радионовна",
            imageName: "1")*/
    
    }

}
