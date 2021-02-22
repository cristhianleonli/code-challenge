//
//  ProductView.swift
//  CodeChallenge
//
//  Created by Cristhian on 22.02.21.
//

import UIKit

class ProductView: UIView {
    
    
    // MARK: - Propertoies
    
    private let button: MainButton = MainButton()
    private let descriptionLabel = UILabel()
    
    private let viewHeight: CGFloat = 80
    private let defaultMargin: CGFloat = 5
    private let buttonHeight: CGFloat = 50
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
}

extension ProductView {
    func fillData(model: ProductCellModel) {
        button.setTitle(model.visibleName, for: .normal)
        descriptionLabel.text = model.visibleDescription
    }
}

private extension ProductView {
    func setupUI() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: viewHeight)
        ])
        
        setupButton()
        setupLabel()
    }
    
    func setupButton() {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: topAnchor, constant: defaultMargin),
            button.heightAnchor.constraint(equalToConstant: buttonHeight),
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: defaultMargin),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -defaultMargin)
        ])
    }
    
    func setupLabel() {
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: defaultMargin),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -defaultMargin),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: defaultMargin),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -defaultMargin)
        ])
        
        descriptionLabel.font = Fonts.create(weight: .regular, size: 15)
        descriptionLabel.textColor = Colors.gray
    }
}
