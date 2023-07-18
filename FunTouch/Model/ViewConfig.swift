//
//  ViewConfig.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 09.07.2023.
//

import Foundation
import UIKit

class ViewConfig{
    //Это есть сингл тон как таковой
    static let instance: ViewConfig = {
        let instance = ViewConfig()
        return instance
    }()
    //сингл тон нужно закрыть таким вот образом
    private init(){}
    
    func configTextField(_ TextField: UITextField?){
        TextField?.textColor = UIColor.white
        TextField?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        
        TextField?.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4)
        TextField?.layer.borderWidth = 1.0
        TextField?.layer.cornerRadius = 14
        
        TextField?.layer.shadowOffset = CGSize(width: 0, height: 4)
        TextField?.layer.shadowOpacity = 1
        TextField?.layer.shadowRadius = 14.0
        TextField?.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4)
        
    }
    
    func configButton(_ button: UIButton?){
        if(button!.isEnabled){
            button?.layer.cornerRadius = 16.0
            button?.backgroundColor = UIColor.white
            button?.setTitleColor(.black, for: .normal)
        } else {
            button?.layer.cornerRadius = 16.0
            button?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4)
            button?.setTitleColor(.white, for: .normal)
        }
    }
    
    
    
}
