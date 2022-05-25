//
//  HomeView.swift
//  ViewEmViewCode
//
//  Created by user208023 on 5/25/22.
//

import UIKit

class HomeView: UIView {
    
    private let title: String
    lazy var titleLabel: UILabel = {
        let label = FourLabel(title: title)
        return label
    }()
    
    lazy var containerStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [leftStack, rightStack])
        stack.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }()
    
    lazy var leftStack: UIStackView = {
       let bottomView = UIView()
        bottomView.backgroundColor = .orange
        let cityLabel = UILabel(frame: CGRect(x: 40, y: 100, width: 100, height: 50))
        cityLabel.text = "Rio de Janeiro"
        cityLabel.textColor = .systemBlue
        cityLabel.textAlignment = .center
        cityLabel.adjustsFontSizeToFitWidth = true
        bottomView.addSubview(cityLabel)
        
        let stack = UIStackView(arrangedSubviews: [titleLabel, groupStack, bottomView])
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    let groupStack: UIStackView = {
       let firstView = UIView()
        firstView.backgroundColor = .yellow
        firstView.layer.cornerRadius = 10
        firstView.layer.masksToBounds = true
        
        let nameLabel = UILabel(frame: CGRect(x: 40, y: 40, width: 100, height: 50))
        nameLabel.text = "Pedro"
        nameLabel.textColor = .blue
        nameLabel.textAlignment = .center
        
        firstView.addSubview(nameLabel)
        
        let secondView = UIView()
        secondView.backgroundColor = .green
        
        let ageLabel = UILabel(frame: CGRect(x: 40, y: 40, width: 100, height: 50))
        ageLabel.text = "Idade: 35"
        ageLabel.textColor = .darkGray
        ageLabel.textAlignment = .center
        secondView.addSubview(ageLabel)
        
        let thirdView = UIView()
        thirdView.backgroundColor = .purple
        
        let officeLabel = UILabel(frame: CGRect(x: 40, y: 40, width: 100, height: 50))
        officeLabel.text = "Desenvolvedor"
        officeLabel.textColor = .white
        officeLabel.textAlignment = .center
        officeLabel.adjustsFontSizeToFitWidth = true
        thirdView.addSubview(officeLabel)
        
        let stack = UIStackView(arrangedSubviews: [firstView, secondView, thirdView])
        stack.axis = .vertical
        stack.distribution  = .fillEqually
        stack.spacing = 20
        return stack
    }()
    
    let rightStack: UIStackView = {
       let firstView = UIView()
        firstView.backgroundColor = .blue
        let messageLabel = UILabel(frame: CGRect(x: 40, y: 350, width: 100, height: 50))
        messageLabel.text = "Bemvindo à Foursys"
        messageLabel.textColor = .white
        messageLabel.textAlignment = .center
        messageLabel.adjustsFontSizeToFitWidth = true
        firstView.addSubview(messageLabel)
        return UIStackView(arrangedSubviews: [firstView])
    }()
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: ViewCode {
    func buildViewHierarchy() {
        addSubview(containerStack)
    }
    
    func addConstraints() {
        containerStack.translatesAutoresizingMaskIntoConstraints = false
        containerStack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerStack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerStack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        groupStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        titleLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
    
    func additionalConfiguration() {
        backgroundColor = .red
    }
    
    
}
