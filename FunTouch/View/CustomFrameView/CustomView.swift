//
//  CustomView.swift
//  FunTouch
//
//  Created by Дмитрий Тимаров on 19.06.2023.
//

import UIKit

 @IBDesignable class CustomView: UIView {
    
    
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    // Эти три метода нужны для того чтобы работать с UIView
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupContentView()
//
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        setupContentView()
//    }
//    override func awakeFromNib() {
//             super.awakeFromNib()
//            commonInit()
//
//             }
//     private func commonInit(){
//         imageView.backgroundColor = .green
//         contentView.layer.borderColor = UIColor.black.cgColor
//         contentView.layer.borderWidth = 2
//     }
//     private func setupContentView(){
//         Bundle.main.loadNibNamed(String(describing: CustomView.self), owner: self, options: nil)
//         contentView.frame = self.bounds
//         contentView.autoresizingMask = [.flexibleHeight, . flexibleWidth]
//     }
//
//
//
//
//
//
//
}
