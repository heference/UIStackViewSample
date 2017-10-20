//
//  SampleView.swift
//  UIStackViewSample
//
//  Created by Heference on 2017. 10. 20..
//  Copyright © 2017년 gabbyware. All rights reserved.
//

import UIKit

class SampleView: UIView {
    
    let firstView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    let secondView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    let thirdView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.purple
        return view
    }()
    
    let fourthView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.green
        return view
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = UIStackViewAlignment.leading
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    func initViews() {
        //StackView
        stackView.addArrangedSubview(firstView)
        stackView.addArrangedSubview(secondView)
        stackView.addArrangedSubview(thirdView)
        stackView.addArrangedSubview(fourthView)
        
        firstView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        secondView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        secondView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        thirdView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        thirdView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        fourthView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        fourthView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
    }
    
    //Initializers
    convenience init() {
        self.init(frame: .zero)
        initViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
