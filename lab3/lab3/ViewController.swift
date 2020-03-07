//
//  ViewController.swift
//  lab3
//
//  Created by Индра on 3/7/20.
//  Copyright © 2020 Индра. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        guard
            let selectVC = storyboard.instantiateViewController(identifier: "sel") as? New
            else{return}
        selectVC.selec = { [weak self] color in
            guard self != nil else{return}
            sender.backgroundColor=color
        }
        self.present(selectVC,animated: true)
    }
    
    

}

