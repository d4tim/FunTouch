//
//  Alerts.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 18.07.2023.
//
//12 lection
import UIKit

final class Alerts: NSObject {
    
    func showSimpleAlert(controller: UIViewController, title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (_) in print("Cancel pressed !")
        }))
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {
            (_) in print("Ok is pressed !")
        }))
        
        controller.present(alert, animated: true)
        
    }
    
    func showAlertWithSheets(controller: UIViewController, title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: {
            (_) in print("Default is pressed !")
        }))
        
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: {
            (_) in print("Destructive is pressed !")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (_) in print("Cancel is pressed !")
        }))
        
        controller.present(alert, animated: true, completion: { print("Завдання виконано !") })
        
    }
    
    func simpleAlertWithThreeButton(controller: UIViewController, title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: {
            (_) in print("Edit is pressed !")
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: {
            (_) in print("Delete is pressed !")
        }))
        
        alert.addAction(UIAlertAction(title: "Dissmiss", style: .cancel, handler: {
            (_) in print("Dissmiss is pressed !")
        }))
        
        controller.present(alert, animated: true, completion: { print("Завдання виконано !") })
        
    }
    
    func simpleAlertWithTextField(controller: UIViewController, title: String) {
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        let confirmAcrion = UIAlertAction(title: "add", style: .default){ _ in if let txtField = alert.textFields?.first, let text = txtField.text  {
            print("Text from Alert -> \(text)")
        }
            
        }
        
        let cancel =  UIAlertAction(title: "Cancel", style: .cancel){ _ in }
        alert.addTextField{(textField) in textField.placeholder = "Введіть ваш пароль "}
        
        alert.addAction(confirmAcrion)
        alert.addAction(cancel)
        
        
        
        controller.present(alert, animated: true, completion: nil)
        
    }
    
}
