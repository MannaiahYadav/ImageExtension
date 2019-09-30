//
//  ViewController.swift
//  ImageExtension
//
//  Created by mannaiah on 09/26/2019.
//  Copyright (c) 2019 mannaiah. All rights reserved.
//

import UIKit
import ImageExtension
class ViewController: UIViewController {

    @IBOutlet weak var imag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imag.circleImageView(borderColor: UIColor.red, borderWidth:2)
       let login = LoginVC()
      //  login.saveRecordinDB()
    
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

