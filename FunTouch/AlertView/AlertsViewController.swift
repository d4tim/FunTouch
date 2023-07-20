//
//  AlertsViewController.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 18.07.2023.
//

import UIKit

class AlertsViewController: UIViewController {
    
    private var alert = Alerts()
    
    @IBOutlet var mainView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func simpleAlert(_ sender: UIButton) {
        alert.showSimpleAlert(controller: self, title: "Реестрація", message: "По настисканню ви будете зареестровані")
    }
    
    
    @IBAction func simpleAlertsWithSheet(_ sender: UIButton) {
        alert.showAlertWithSheets(controller: self, title: "Menu", message: "Оберіть , щось ")
        
    }
    
    @IBAction func simpleAlertWithThreeButton(_ sender: UIButton) {
        alert.simpleAlertWithThreeButton(controller: self, title: "Alert", message: "Alert with three button")
    }
    
    @IBAction func simpleAlertWithTextField(_ sender: UIButton) {
        alert.simpleAlertWithTextField(controller: self, title: "Alert with text field")
    }
    
    
    

}
