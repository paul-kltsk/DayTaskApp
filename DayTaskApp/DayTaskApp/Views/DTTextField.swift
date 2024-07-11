//
//  DTTextField.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 10/07/2024.
//

import UIKit

enum DTTextFieldType {
    case name
    case email
    case password
}

class DTTextField: UITextField {
    
    private var textFieldType: DTTextFieldType
    private var leftImageView = UIImageView()
    private var rightImageView = UIImageView()
    private let textPadding = UIEdgeInsets(top: 0, left: 60, bottom: 0, right: 60)
    
    init(textFieldType: DTTextFieldType) {
        self.textFieldType = textFieldType
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let leftView = leftView {
            leftView.frame = CGRect(x: 0, y: 0, width: 60, height: self.frame.height)
            self.leftImageView.frame = CGRect(x: leftView.frame.midX - 12,
                                              y: leftView.frame.midY - 12,
                                              width: 24,
                                              height: 24)
        }
        
        if let rightView = rightView {
            rightView.frame = CGRect(x: self.frame.width - 60, y: 0, width: 60, height: self.frame.height)
            self.rightImageView.frame = CGRect(x: rightView.frame.midX - 12,
                                              y: rightView.frame.midY - 12,
                                              width: 24,
                                              height: 24)
        }

    }
    
    private func setupLayout() {
        self.backgroundColor = AppColors.lightGray
        self.placeholder = "test text"
        self.font = .Inter.regular.size(of: 18)
        self.textColor = AppColors.white
        self.translatesAutoresizingMaskIntoConstraints = false
        setupLeftView()
        setupRightView()
    }
    
    // setup left view
    private func setupLeftView() {
        
        leftImageView.contentMode = .scaleAspectFit
        leftImageView.tintColor = AppColors.white
        self.leftView = leftImageView
        self.leftViewMode = .always
        var image = UIImage()
        
        switch textFieldType {
        case .name:
            image = UIImage(resource: .user)
        case .email:
            image = UIImage(resource: .usertag)
        case .password:
            image = UIImage(resource: .lock1)
        }
        
        leftImageView.image = image
        
    }
    
    // setup right view
    private func setupRightView() {
        
        rightImageView.contentMode = .scaleAspectFit
        rightImageView.tintColor = AppColors.white
        self.rightView = rightImageView
        self.rightViewMode = .always
        
        var image = UIImage()
        
        switch textFieldType {
        case .password:
            image = UIImage(resource: .eyeslash)
        default: break
        }
        
        rightImageView.image = image
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
}
