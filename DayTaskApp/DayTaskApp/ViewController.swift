//
//  ViewController.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = AppColors.darkBlue
        
        let label = UILabel(frame: CGRect(x: 20, y: 110, width: 300, height: 50))
        label.font = .Inter.regular.size(of: 30)
        label.text = "kurwa nie wiem"
        label.textColor = AppColors.yellow
        view.addSubview(label)
        
    }


}

