//
//  ViewControllerTamaño.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/2/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewControllerTaman_o: UIViewController {

    var opSegue : Bool = false
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    @IBOutlet weak var bttnS: UIButton!
    @IBOutlet weak var bttnM: UIButton!
    @IBOutlet weak var bttnL: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        print("[Nivel Tamaño] - Hasta el momento  \(pizzaSize) - \(pizzaMasa) - \(pizzaQueso)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bttnS.layer.shadowOpacity = 0.0
        bttnS.layer.shadowOffset = CGSizeMake(0, 3)
        bttnS.layer.shadowColor = UIColor.redColor().CGColor
        bttnM.layer.shadowOpacity = 0.0
        bttnM.layer.shadowOffset = CGSizeMake(0, 3)
        bttnM.layer.shadowColor = UIColor.redColor().CGColor
        bttnL.layer.shadowOpacity = 0.0
        bttnL.layer.shadowOffset = CGSizeMake(0, 3)
        bttnL.layer.shadowColor = UIColor.redColor().CGColor
        
        self.navigationItem.setHidesBackButton(true, animated:true);
        switch (pizzaSize){
            case "Chica":
                bttnS.selected = true
                bttnS.layer.shadowOpacity = 1.0
                break
            case "Mediana":
                bttnM.selected = true
                bttnM.layer.shadowOpacity = 1.0
                break
            case "Grande":
                bttnL.selected = true
                bttnL.layer.shadowOpacity = 1.0
                break
            default:
                break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func opS(sender: AnyObject) {
        if (bttnS.selected == true){
            bttnS.selected = false
            self.pizzaSize = ""
        } else {
            bttnS.selected = true
            bttnS.layer.shadowOpacity = 1.0
            bttnM.selected = false
            bttnM.layer.shadowOpacity = 0.0
            bttnL.selected = false
            bttnL.layer.shadowOpacity = 0.0
            self.pizzaSize = "Chica"
        }
    }
    
    @IBAction func opM(sender: AnyObject) {
        if (bttnM.selected == true){
            bttnM.selected = false
            self.pizzaSize = ""
        } else {
            bttnM.selected = true
            bttnM.layer.shadowOpacity = 1.0
            bttnS.selected = false
            bttnS.layer.shadowOpacity = 0.0
            bttnL.selected = false
            bttnL.layer.shadowOpacity = 0.0
            self.pizzaSize = "Mediana"
        }
    }
    
    @IBAction func opL(sender: AnyObject) {
        if (bttnL.selected == true){
            bttnL.selected = false
            self.pizzaSize = ""
        } else {
            bttnL.selected = true
            bttnL.layer.shadowOpacity = 1.0
            bttnM.selected = false
            bttnM.layer.shadowOpacity = 0.0
            bttnS.selected = false
            bttnS.layer.shadowOpacity = 0.0
            self.pizzaSize = "Grande"
        }
    }
    
    @IBAction func siguiente(sender: AnyObject) {
        opSegue = false
    }
    
    @IBAction func atras(sender: AnyObject) {
        opSegue = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(!opSegue){
            let vistaSig = segue.destinationViewController as! ViewControllerMasa
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        }
    }

}
