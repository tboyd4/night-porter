//
//  ViewController.swift
//  The Night Porter
//
//  Created by Tyler Boyd on 10/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func enableDarkMode(_ sender: Any) {
        
        // conditional to decide current theme
        if view.backgroundColor == UIColor.black {
            view.backgroundColor = UIColor.white
            
            // place all subviews into an array
            let viewSubviews = view.subviews
            // loop through subviews
            for eachView in viewSubviews {
                // for each subview, decide if its a label
                if eachView is UILabel {
                    // if it is a label, downcast it specifically as a label
                    let currentLable = eachView as! UILabel
                    // take that variable, depicting the currently selected subview, and make the text black
                    currentLable.textColor = UIColor.black
                }
            }
        } else {
            view.backgroundColor = UIColor.black
            
            // same as above, but if the theme was in dark mode
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

