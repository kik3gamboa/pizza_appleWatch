//
//  ViewController.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 11/30/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var opSegue : Bool = true
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}