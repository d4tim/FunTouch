//
//  GradientView.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 09.07.2023.
//

import UIKit


class GradientView: UIView{
    
    var gradientLayer = CAGradientLayer()
    /*
     Чтобы установить цветовую схему мы применили #colorLiteral
     Дальше делаем вычесляемое свойство что бы оно могло реагировать на
     изменение значения didSet
     @IBInspectable - что бы добавить на панель испектора
     Настраиваем цветовую схему градиента
     */
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0, green: 0.8640472293, blue: 0.9947116971, alpha: 1) {
        didSet {
            gradientLayer.colors = [topColor.cgColor, topButton.cgColor]
        }
    }
    @IBInspectable var topButton: UIColor = #colorLiteral(red: 0.1377131343, green: 0.4835600853, blue: 0.9543099999, alpha: 1) {
        didSet {
            gradientLayer.colors = [topColor.cgColor, topButton.cgColor]
        }
    }
    @IBInspectable  var startDirection: CGPoint = CGPointMake(0, 0) {
        didSet {
            gradientLayer.startPoint = startDirection
        }
    }
    @IBInspectable  var endDirection: CGPoint = CGPointMake(0, 0) {
        didSet {
            gradientLayer.startPoint = endDirection
        }
    }
    /*
     Функция говорит о том что наш градиент будет на все View
     к какому бы контроллеру мы не подсоеденили
     */
    override func layoutSubviews() {
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
