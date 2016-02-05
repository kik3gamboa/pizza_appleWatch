//
//  ViewControllerQueso.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/2/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewControllerQueso: UIViewController {

    var opSegue : Bool = false
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    @IBOutlet weak var bttnMozarela: UIButton!
    @IBOutlet weak var bttnCheddar: UIButton!
    @IBOutlet weak var bttnParmesano: UIButton!
    @IBOutlet weak var bttnQuesoOut: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        print("[Nivel Queso] - Hasta el momento  \(pizzaSize) - \(pizzaMasa) - \(pizzaQueso)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bttnMozarela.layer.shadowOpacity = 0.0
        bttnMozarela.layer.shadowOffset = CGSizeMake(0, 3)
        bttnMozarela.layer.shadowColor = UIColor.redColor().CGColor
        bttnCheddar.layer.shadowOpacity = 0.0
        bttnCheddar.layer.shadowOffset = CGSizeMake(0, 3)
        bttnCheddar.layer.shadowColor = UIColor.redColor().CGColor
        bttnParmesano.layer.shadowOpacity = 0.0
        bttnParmesano.layer.shadowOffset = CGSizeMake(0, 3)
        bttnParmesano.layer.shadowColor = UIColor.redColor().CGColor
        bttnQuesoOut.layer.shadowOpacity = 0.0
        bttnQuesoOut.layer.shadowOffset = CGSizeMake(0, 3)
        bttnQuesoOut.layer.shadowColor = UIColor.redColor().CGColor
        
        self.navigationItem.setHidesBackButton(true, animated:true);
        switch (pizzaQueso){
        case "Mozarela":
            bttnMozarela.selected = true
            bttnMozarela.layer.shadowOpacity = 1.0
            break
        case "Cheddar":
            bttnCheddar.selected = true
            bttnCheddar.layer.shadowOpacity = 1.0
            break
        case "Parmesano":
            bttnParmesano.selected = true
            bttnParmesano.layer.shadowOpacity = 1.0
            break
        case "Sin Queso":
            bttnQuesoOut.selected = true
            bttnQuesoOut.layer.shadowOpacity = 1.0
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func opMozarela(sender: AnyObject) {
        if (bttnMozarela.selected == true){
            bttnMozarela.selected = false
            self.pizzaQueso = ""
        } else {
            bttnMozarela.selected = true
            bttnMozarela.layer.shadowOpacity = 1.0
            bttnCheddar.selected = false
            bttnCheddar.layer.shadowOpacity = 0
            bttnParmesano.selected = false
            bttnParmesano.layer.shadowOpacity = 0
            bttnQuesoOut.selected = false
            bttnQuesoOut.layer.shadowOpacity = 0
            self.pizzaQueso = "Mozarela"
        }
    }
    
    @IBAction func opCheddar(sender: AnyObject) {
        if (bttnCheddar.selected == true){
            bttnCheddar.selected = false
            self.pizzaQueso = ""
        } else {
            bttnMozarela.selected = false
            bttnMozarela.layer.shadowOpacity = 0
            bttnCheddar.selected = true
            bttnCheddar.layer.shadowOpacity = 1.0
            bttnParmesano.selected = false
            bttnParmesano.layer.shadowOpacity = 0
            bttnQuesoOut.selected = false
            bttnQuesoOut.layer.shadowOpacity = 0
            self.pizzaQueso = "Cheddar"
        }
    }
    
    @IBAction func opParmesano(sender: AnyObject) {
        if (bttnParmesano.selected == true){
            bttnParmesano.selected = false
            self.pizzaQueso = ""
        } else {
            bttnMozarela.selected = false
            bttnMozarela.layer.shadowOpacity = 0
            bttnCheddar.selected = false
            bttnCheddar.layer.shadowOpacity = 0
            bttnParmesano.selected = true
            bttnParmesano.layer.shadowOpacity = 1.0
            bttnQuesoOut.selected = false
            bttnQuesoOut.layer.shadowOpacity = 0
            self.pizzaQueso = "Parmesano"
        }
    }
    
    @IBAction func ipQuesoOut(sender: AnyObject) {
        if (bttnQuesoOut.selected == true){
            bttnQuesoOut.selected = false
            self.pizzaQueso = ""
        } else {
            bttnMozarela.selected = false
            bttnMozarela.layer.shadowOpacity = 0
            bttnCheddar.selected = false
            bttnCheddar.layer.shadowOpacity = 0
            bttnParmesano.selected = false
            bttnParmesano.layer.shadowOpacity = 0
            bttnQuesoOut.selected = true
            bttnQuesoOut.layer.shadowOpacity = 1.0
            self.pizzaQueso = "Sin Queso"
        }
    }
    
    
    @IBAction func siguiente(sender: AnyObject) {
        opSegue = false
    }
    
    @IBAction func atras(sender: AnyObject) {
        opSegue = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(opSegue){
            let vistaSig = segue.destinationViewController as! ViewControllerMasa
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        } else {
            let vistaSig = segue.destinationViewController as! ViewControllerIngredientes
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        }
        
        
    }

}
