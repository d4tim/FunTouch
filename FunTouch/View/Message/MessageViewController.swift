//
//  MessageViewController.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 16.07.2023.
//

import UIKit

@IBDesignable class MessageViewController: UIViewController {

    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var buttonMessage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stackView.layer.cornerRadius = 50
        buttonMessage.layer.cornerRadius = 20
        
    }

    
    
}




