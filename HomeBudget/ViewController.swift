//
//  ViewController.swift
//  HomeBudget
//
//  Created by Grzegorz Gumieniak on 26/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var myUILabel: UILabel = {
        let label = UILabel()
        label.text = "Moj pierwszy text!"
        
        return label
    }()
    
    var myView: UIView = {
        let view = UIView()
        let label: UILabel = {
            let label = UILabel()
            label.text = "Moj drugi text!"
            
            return label
        }()
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        view.backgroundColor = .systemPurple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        view.addSubview(myUILabel)
        myUILabel.translatesAutoresizingMaskIntoConstraints = false
        myUILabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myUILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.topAnchor.constraint(equalTo: myUILabel.bottomAnchor, constant: 10).isActive = true
        myView.leftAnchor.constraint(equalTo: myUILabel.rightAnchor).isActive = true
        
    }
    
    
    
}

