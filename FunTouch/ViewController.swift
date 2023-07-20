//
//  ViewController.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 04.06.2023.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
            
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
    
    
    @IBAction func goToStartPAge(_ sender: UIButton) {
            let mainView = RegistrationViewController()
            navigationController?.pushViewController(mainView , animated: true)
        }
        
    @IBAction func goToAnotherView(_ sender: UIButton) {
            let anotherView = AnotherXibViewController()
            navigationController?.pushViewController(anotherView, animated: true)
            
        }
    
    @IBAction func goToTest(_ sender: UIButton) {
        let testPush = MessageViewController()
        navigationController?.pushViewController(testPush, animated: true)
    }
    
    @IBAction func alertsView(_ sender: UIButton) {
        let alertGO = AlertsViewController()
        navigationController?.pushViewController(alertGO, animated: true)
    }
    
    
    
    /*
         Push переход:
         1.Делаем константу,определяем контроллер к которому переходим. куда мы хоитм прейти
         2.Дальше делаем переход
         */
    
    @IBAction func pushForward(_ sender: UIButton) {
            let vc = storyboard?.instantiateViewController(withIdentifier: "buttonsVC")
            self.navigationController?.pushViewController(vc!, animated: true)
            
            
        }
        
    
    
    
    
    
    
    
    
    
    
//    @IBAction func goForward(_ sender: UIButton) {
//        performSegue(withIdentifier: "idOne", sender: nil)
//    }
    
}

