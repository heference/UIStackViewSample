//
//  ViewController.swift
//  UIStackViewSample
//
//  Created by Ikarious on 2017. 10. 19..
//  Copyright © 2017년 gabbyware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sampleView: SampleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        
        sampleView = SampleView()
        sampleView?.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(sampleView!)
        
        sampleView?.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30).isActive = true
        sampleView?.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        sampleView?.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        sampleView?.heightAnchor.constraint(equalToConstant: 200).isActive = true
                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

