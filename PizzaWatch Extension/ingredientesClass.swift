//
//  ingredientesClass.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/22/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesClass: WKInterfaceController {
    
    var errorIng : String = ""



    @IBOutlet var aceitunaBttn: WKInterfaceButton!
    @IBOutlet var jamonBttn: WKInterfaceButton!
    @IBOutlet var anchoasBttn: WKInterfaceButton!
    @IBOutlet var cebollaBttn: WKInterfaceButton!
    
    
    @IBOutlet var polloBttn: WKInterfaceButton!
    @IBOutlet var tocinoBttn: WKInterfaceButton!
    @IBOutlet var pimientoBttn: WKInterfaceButton!
    @IBOutlet var tomateBttn: WKInterfaceButton!
    
    
    @IBOutlet var pepperoniBttn: WKInterfaceButton!
    @IBOutlet var champiBttn: WKInterfaceButton!
    @IBOutlet var terneraBttn: WKInterfaceButton!
    @IBOutlet var pinaBttn: WKInterfaceButton!
    
    @IBOutlet var ingLabl: WKInterfaceLabel!
    
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
        
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let retorno = context as! pizzaCook
        pizzaSize = String(retorno.pizzaSize)
        pizzaMasa = String(retorno.pizzaMasa)
        pizzaQueso = String(retorno.pizzaQueso)
        ingrGral = Int(retorno.ingrGral)
        ingArray = retorno.ingArray
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func aceitunaPush(sender: AnyObject) {
        if((ingArray["a"]) == true){
            aceitunaBttn.setTitle("Ac")
            ingrGral -= 1;
            errorIng = "";
            ingArray["a"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                aceitunaBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["a"] = true
            }
        }
        self.ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    
    @IBAction func cebollaPush(sender: AnyObject) {
        if(ingArray["b"] == true){
            cebollaBttn.setTitle("Ce")
            ingrGral -= 1;
            errorIng = "";
            ingArray["b"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                cebollaBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["b"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func jamonPush(sender: AnyObject) {
        if(ingArray["c"] == true){
            jamonBttn.setTitle("Ja")
            ingrGral -= 1;
            errorIng = "";
            ingArray["c"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                jamonBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["c"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func polloPush(sender: AnyObject) {
        if((ingArray["d"]) == true){
            polloBttn.setTitle("Po")
            ingrGral -= 1;
            errorIng = "";
            ingArray["d"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                polloBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["d"] = true
            }
        }
        ingLabl.setText ("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func tocinoPush(sender: AnyObject) {
        if((ingArray["e"]) == true){
            tocinoBttn.setTitle("To")
            ingrGral -= 1;
            errorIng = "";
            ingArray["e"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                tocinoBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["e"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func peppePush(sender: AnyObject) {
        if((ingArray["f"]) == true){
            pepperoniBttn.setTitle("Pe")
            ingrGral -= 1;
            errorIng = "";
            ingArray["f"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                pepperoniBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["f"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func terneraPush(sender: AnyObject) {
        if((ingArray["g"]) == true){
            terneraBttn.setTitle("Te")
            ingrGral -= 1;
            errorIng = "";
            ingArray["g"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                terneraBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["g"] = true
            }        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func tomatePush(sender: AnyObject) {
        if((ingArray["h"]) == true){
            tomateBttn.setTitle("Ji")
            ingrGral -= 1;
            errorIng = "";
            ingArray["h"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                tomateBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["h"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func anchoasPush(sender: AnyObject) {
        if((ingArray["i"]) == true){
            anchoasBttn.setTitle("An")
            ingrGral -= 1;
            errorIng = "";
            ingArray["i"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                anchoasBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["i"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func champiPush(sender: AnyObject) {
        if((ingArray["j"]) == true){
            champiBttn.setTitle("Ch")
            ingrGral -= 1;
            errorIng = "";
            ingArray["j"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                champiBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["j"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func pimientoPush(sender: AnyObject) {
        if((ingArray["k"]) == true){
            pimientoBttn.setTitle("Pi")
            ingrGral -= 1;
            errorIng = "";
            ingArray["k"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                pimientoBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["k"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    @IBAction func pinaPush(sender: AnyObject) {
        if((ingArray["l"]) == true){
            pinaBttn.setTitle("Pñ")
            ingrGral -= 1;
            errorIng = "";
            ingArray["l"] = false
        } else {
            if(ingrGral == 5){
                errorIng = "\n(No puedes seleccionar más de 5)"
            } else {
                pinaBttn.setTitle("X")
                ingrGral += 1;
                errorIng = "";
                ingArray["l"] = true
            }
        }
        ingLabl.setText("\(ingrGral) de 5 \(errorIng)")
    }
    

    @IBAction func adelante() {
        
        let iniciar = pizzaCook(pZ: pizzaSize, pM: pizzaMasa, pQ: pizzaQueso, iGral: ingrGral, iArray: ingArray)
        
        pushControllerWithName("goFin", context: iniciar)
        print("Tamaño: \(pizzaSize) - Masa: \(pizzaMasa) - Queso: \(pizzaQueso)")
    }

}
