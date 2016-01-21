//
//  ViewWithButtons.swift
//  Quiz
//
//  Created by Михаил Зайцев on 20.01.16.
//  Copyright © 2016 Xanik. All rights reserved.
//

import UIKit

protocol ViewWithButtonDelegate:class {
    func buttonWithTitlePressed(title:String)
    
}

class ViewWithButtons: UIView {
    var delegate:ViewWithButtonDelegate?

    // Текст
    @IBOutlet var topText: UILabel!
    
    // Картинка
    @IBOutlet var ImageView: UIImageView!
    
    // Картинка
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    @IBAction func buttonPressed(button: UIButton){
        
        delegate?.buttonWithTitlePressed(button.titleForState(UIControlState.Normal)!)
    }
    
    func updateTopText(text:String){
        topText.text = text
    }
    
    // Передается optional переменная. М.б. либо UIImage либо в качестве парметра пусто
    func updateImage(picture:UIImage?){
        if picture == nil {
            ImageView.alpha = 0
            return
        }
        ImageView.image = picture
        ImageView.alpha = 1
    }
    
    func updateButtonsTitles(titles:[String]){
        // Перебрать все элементыы внутри titles
        for aTitle in titles {
            // Распечатаем значение каждой строки
            print("one of titles is: \(aTitle)")
        }
        
        let allButtons = [button1, button2, button3, button4]
        
        // index = 0,1,2,..., до titles.count
        for index in 0..<titles.count {
            // обратимся к номеру массива под номером от 0 до последнего
            let stringToAdd = titles[index]
            let aButton = allButtons[index]
            
            // Задать текст кнопки
            aButton.setTitle(stringToAdd, forState: UIControlState.Normal)
        }
    }
}
