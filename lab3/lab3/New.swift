//
//  New.swift
//  lab3
//
//  Created by Индра on 3/7/20.
//  Copyright © 2020 Индра. All rights reserved.
//

import Foundation
import UIKit
class New: UIViewController{
    
    var selec: ((UIColor)->Void)?=nil
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    @IBAction func butt(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "Red" {
            self.selec?(UIColor.red)
        } else{
            self.selec?(UIColor.blue)
        }
        self.dismiss(animated: true)
    }
    
}
