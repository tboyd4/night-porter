//
//  ViewController.swift
//  The Night Porter
//
//  Created by Tyler Boyd on 10/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func enableDarkMode(_ sender: Any) {
        
        if view.backgroundColor == UIColor.black {
            view.backgroundColor = UIColor.white
            
            let viewSubviews = view.subviews
            for eachView in viewSubviews {
                if eachView is UILabel {
                    let currentLable = eachView as! UILabel
                    currentLable.textColor = UIColor.black
                }
            }
        } else {
            view.backgroundColor = UIColor.black
            
            let viewSubviews = view.subviews
            for eachView in viewSubviews {
                if eachView is UILabel {
                    let currentLable = eachView as! UILabel
                    currentLable.textColor = UIColor.white
                }
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

