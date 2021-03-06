//
//  ViewController.swift
//  objectsWithCode
//
//  Created by Ayub Ali on 2021-03-06.
//

import UIKit

class ViewController: UIViewController {

    var mylabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        
        
        mylabel.text = "Test Label"
        mylabel.textAlignment = .center
        mylabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50/2, width: width * 0.8, height: 50)
        view.addSubview(mylabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.7, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(myAction), for: UIControl.Event.touchUpInside)
    }
    
    @objc func myAction(){
        mylabel.text = "Tapped"
    }
}

