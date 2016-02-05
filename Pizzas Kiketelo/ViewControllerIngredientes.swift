//
//  ViewControllerIngredientes.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/2/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewControllerIngredientes: UIViewController {

    @IBOutlet weak var ingLabl: UILabel!
    var errorIng : String = ""
    var opSegue : Bool = false
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    @IBOutlet weak var aceitunaBttn: UIButton!
    @IBOutlet weak var jamonBttn: UIButton!
    @IBOutlet weak var anchoasBttn: UIButton!

    @IBOutlet weak var cebollaBttn: UIButton!
    @IBOutlet weak var polloBttn: UIButton!
    @IBOutlet weak var tocinoBttn: UIButton!

    @IBOutlet weak var pimientoBttn: UIButton!
    @IBOutlet weak var tomateBttn: UIButton!
    @IBOutlet weak var pepperoniBttn: UIButton!

    @IBOutlet weak var champiBttn: UIButton!
    @IBOutlet weak var terneraBttn: UIButton!
    @IBOutlet weak var pinaBttn: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        print("[Nivel Inregdientes] - Hasta el momento  \(pizzaSize) - \(pizzaMasa) - \(pizzaQueso)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.setHidesBackButton(true, animated:true);
        aceitunaBttn.layer.shadowOpacity = 0.0
        aceitunaBttn.layer.shadowOffset = CGSizeMake(0, 3)
        aceitunaBttn.layer.shadowColor = UIColor.redColor().CGColor
        jamonBttn.layer.shadowOpacity = 0.0
        jamonBttn.layer.shadowOffset = CGSizeMake(0, 3)
        jamonBttn.layer.shadowColor = UIColor.redColor().CGColor
        anchoasBttn.layer.shadowOpacity = 0.0
        anchoasBttn.layer.shadowOffset = CGSizeMake(0, 3)
        anchoasBttn.layer.shadowColor = UIColor.redColor().CGColor
        
        cebollaBttn.layer.shadowOpacity = 0.0
        cebollaBttn.layer.shadowOffset = CGSizeMake(0, 3)
        cebollaBttn.layer.shadowColor = UIColor.redColor().CGColor
        polloBttn.layer.shadowOpacity = 0.0
        polloBttn.layer.shadowOffset = CGSizeMake(0, 3)
        polloBttn.layer.shadowColor = UIColor.redColor().CGColor
        tocinoBttn.layer.shadowOpacity = 0.0
        tocinoBttn.layer.shadowOffset = CGSizeMake(0, 3)
        tocinoBttn.layer.shadowColor = UIColor.redColor().CGColor
        
        pimientoBttn.layer.shadowOpacity = 0.0
        pimientoBttn.layer.shadowOffset = CGSizeMake(0, 3)
        pimientoBttn.layer.shadowColor = UIColor.redColor().CGColor
        tomateBttn.layer.shadowOpacity = 0.0
        tomateBttn.layer.shadowOffset = CGSizeMake(0, 3)
        tomateBttn.layer.shadowColor = UIColor.redColor().CGColor
        pepperoniBttn.layer.shadowOpacity = 0.0
        pepperoniBttn.layer.shadowOffset = CGSizeMake(0, 3)
        pepperoniBttn.layer.shadowColor = UIColor.redColor().CGColor
        
        champiBttn.layer.shadowOpacity = 0.0
        champiBttn.layer.shadowOffset = CGSizeMake(0, 3)
        champiBttn.layer.shadowColor = UIColor.redColor().CGColor
        terneraBttn.layer.shadowOpacity = 0.0
        terneraBttn.layer.shadowOffset = CGSizeMake(0, 3)
        terneraBttn.layer.shadowColor = UIColor.redColor().CGColor
        pinaBttn.layer.shadowOpacity = 0.0
        pinaBttn.layer.shadowOffset = CGSizeMake(0, 3)
        pinaBttn.layer.shadowColor = UIColor.redColor().CGColor
        
        for (index, value) in self.ingArray{
            
            if ( index == "a" && value){
                aceitunaBttn.layer.shadowOpacity = 1
            }
            if ( index == "b" && value){
                cebollaBttn.layer.shadowOpacity = 1
            }
            if ( index == "c" && value){
                jamonBttn.layer.shadowOpacity = 1
            }
            if ( index == "d" && value){
                polloBttn.layer.shadowOpacity = 1
            }
            if ( index == "e" && value){
                tocinoBttn.layer.shadowOpacity = 1
            }
            if ( index == "f" && value){
                pepperoniBttn.layer.shadowOpacity = 1
            }
            if ( index == "g" && value){
                terneraBttn.layer.shadowOpacity = 1
            }
            if ( index == "h" && value){
                tomateBttn.layer.shadowOpacity = 1
            }
            if ( index == "i" && value){
                anchoasBttn.layer.shadowOpacity = 1
            }
            if ( index == "j" && value){
                champiBttn.layer.shadowOpacity = 1
            }
            if ( index == "k" && value){
                pimientoBttn.layer.shadowOpacity = 1
            }
            if ( index == "l" && value){
                pinaBttn.layer.shadowOpacity = 1
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func aceitunaPush(sender: AnyObject) {
        if(aceitunaBttn.layer.shadowOpacity == 1){
            aceitunaBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["a"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                aceitunaBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["a"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    
    @IBAction func cebollaPush(sender: AnyObject) {
        if(cebollaBttn.layer.shadowOpacity == 1){
            cebollaBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["b"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                cebollaBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["b"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func jamonPush(sender: AnyObject) {
        if(jamonBttn.layer.shadowOpacity == 1){
            jamonBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["c"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                jamonBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["c"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func polloPush(sender: AnyObject) {
        if(polloBttn.layer.shadowOpacity == 1){
            polloBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["d"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                polloBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["d"] = true
            }
        }
                ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func tocinoPush(sender: AnyObject) {
        if(tocinoBttn.layer.shadowOpacity == 1){
            tocinoBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["e"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                tocinoBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["e"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func peppePush(sender: AnyObject) {
        if(pepperoniBttn.layer.shadowOpacity == 1){
            pepperoniBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["f"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                pepperoniBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["f"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func terneraPush(sender: AnyObject) {
        if(terneraBttn.layer.shadowOpacity == 1){
            terneraBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["g"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                terneraBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["g"] = true
            }        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func tomatePush(sender: AnyObject) {
        if(tomateBttn.layer.shadowOpacity == 1){
            tomateBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["h"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                tomateBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["h"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func anchoasPush(sender: AnyObject) {
        if(anchoasBttn.layer.shadowOpacity == 1){
            anchoasBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["i"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                anchoasBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["i"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func champiPush(sender: AnyObject) {
        if(champiBttn.layer.shadowOpacity == 1){
            champiBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["j"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                champiBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["j"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func pimientoPush(sender: AnyObject) {
        if(pimientoBttn.layer.shadowOpacity == 1){
            pimientoBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["k"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                pimientoBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["k"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"
    }
    @IBAction func pinaPush(sender: AnyObject) {
        if(pinaBttn.layer.shadowOpacity == 1){
            pinaBttn.layer.shadowOpacity = 0
            ingrGral -= 1;
            errorIng = "";
            ingArray["l"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                pinaBttn.layer.shadowOpacity = 1
                ingrGral += 1;
                errorIng = "";
                ingArray["l"] = true
            }
        }
        ingLabl.text = "\(ingrGral) de 5 \(errorIng)"        
    }
    
    
    
    
    @IBAction func siguiente(sender: AnyObject) {
        opSegue = false
    }

    @IBAction func atras(sender: AnyObject) {
        opSegue = true
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(opSegue){
            let vistaSig = segue.destinationViewController as! ViewControllerQueso
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        } else {
            let vistaSig = segue.destinationViewController as! ViewControllerEnd
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        }
        
    }
}
