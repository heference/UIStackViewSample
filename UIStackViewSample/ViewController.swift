//
//  ViewController.swift
//  UIStackViewSample
//
//  Created by Ikarious on 2017. 10. 19..
//  Copyright © 2017년 gabbyware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        
        
        
        stackView.addArrangedSubview(firstView)
        stackView.addArrangedSubview(secondView)
        stackView.addArrangedSubview(thirdView)
        stackView.addArrangedSubview(fourthView)

        firstView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 50).isActive = true

        secondView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        secondView.heightAnchor.constraint(equalToConstant: 50).isActive = true

        thirdView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        thirdView.heightAnchor.constraint(equalToConstant: 50).isActive = true

        fourthView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        fourthView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        self.view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

