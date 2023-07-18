//
//  RegistrationViewController.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 09.07.2023.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var topLabel: UILabel!
    

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var registrationButton: UIButton!
    





    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configurationViewObject()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow(sender: )),
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide(sender:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil)
        
        
    }
    /*
     Тут мы сделали наблюдатель за клавиатурой
     он поднимает вверх текстовое поле
     */
    @objc func keyboardWillShow(sender: NSNotification){
        self.view.frame.origin.y = -140
    }
    @objc func keyboardWillHide(sender: NSNotification){
        self.view.frame.origin.y = 0
    }
    
    /*
     Этот метод предназначен для того чтобы выйти из textField
     что бы кнопка return на мобильной клавиатуре заработала
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    /*
     Нижние два ивента нужны для того чтобы
     при выборе textField подсвечивалась рамка
     Так же этот метод можно использовать для других изменений
     textField
     */
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == nameTextField || textField == ageTextField ||
            textField == emailTextField {
            textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == nameTextField || textField == ageTextField ||
            textField == emailTextField {
            textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.395900451)
            
        }
    }
    /*
     Делаем проверки для textField
     Мы сделали регулярное выражение которое проверяет чтобы вводились только буквы
     Выражения с верификацией
     */
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         if textField == nameTextField {
             let allowedCharacters = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZабвгдеёжзийклмнопрстуфхцчшщъыьэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ")
             let characterSet = CharacterSet(charactersIn: string)
             return allowedCharacters.isSuperset(of: characterSet)
         }
         return true
         
    }
    
    
    func configurationViewObject(){
        ViewConfig.instance.configTextField(nameTextField)
        ViewConfig.instance.configTextField(ageTextField)
        ViewConfig.instance.configTextField(emailTextField)

        ViewConfig.instance.configButton(registrationButton)
        /*
         Тут мы прописали чтобы наш label скейлился
         */
        topLabel.adjustsFontSizeToFitWidth = true
        topLabel.minimumScaleFactor = 0.5
        
        
        nameTextField.delegate = self
        ageTextField.delegate = self
        emailTextField.delegate = self
    }

}
