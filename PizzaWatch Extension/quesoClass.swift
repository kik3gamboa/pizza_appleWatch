//
//  quesoClass.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/22/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import WatchKit
import Foundation


class quesoClass: WKInterfaceController {

    var mrSel: Bool = false
    var paSel: Bool = false
    var chSel: Bool = false
    var sqSel: Bool = false
    
    @IBOutlet var detalleSelect: WKInterfaceLabel!
    @IBOutlet var mrBttn: WKInterfaceButton!
    @IBOutlet var paBttn: WKInterfaceButton!
    @IBOutlet var chBttn: WKInterfaceButton!
    @IBOutlet var sqBttn: WKInterfaceButton!
    
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
        
        detalleSelect.setText(pizzaQueso)
        
        switch (pizzaQueso){
        case "Mozarela":
            mrBttn.setEnabled(false)
            detalleSelect.setText("Mozarela")
            mrSel = true
            break
        case "Parmesano":
            paBttn.setEnabled(false)
            detalleSelect.setText("Parmesano")
            paSel = true
            break
        case "Cheddar":
            chBttn.setEnabled(false)
            detalleSelect.setText("Cheddar")
            chSel = true
            break
        case "Sin Queso":
            sqBttn.setEnabled(false)
            detalleSelect.setText("Sin Queso")
            sqSel = true
            break
        default:
            detalleSelect.setText("No seleccionado")
            break
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

    @IBAction func pushMozarela() {
        if(!mrSel){
            mrBttn.setEnabled(false);
            paBttn.setEnabled(true);
            chBttn.setEnabled(true);
            sqBttn.setEnabled(true);
            detalleSelect.setText("Mozarela")
            pizzaQueso = "Mozarela"
            print(pizzaQueso)
        }
    }
    
    @IBAction func pushParmesano() {
        if(!mrSel){
            mrBttn.setEnabled(true);
            paBttn.setEnabled(false);
            chBttn.setEnabled(true);
            sqBttn.setEnabled(true);
            detalleSelect.setText("Parmesano")
            pizzaQueso = "Parmesano"
            print(pizzaQueso)
        }
    }

    @IBAction func pushCheddar() {
        if(!mrSel){
            mrBttn.setEnabled(true);
            paBttn.setEnabled(true);
            chBttn.setEnabled(false);
            sqBttn.setEnabled(true);
            detalleSelect.setText("Cheddar")
            pizzaQueso = "Cheddar"
            print(pizzaQueso)
        }
    }
    
    @IBAction func pushSinQueso() {
        if(!mrSel){
            mrBttn.setEnabled(true);
            paBttn.setEnabled(true);
            chBttn.setEnabled(true);
            sqBttn.setEnabled(false);
            detalleSelect.setText("Sin Queso")
            pizzaQueso = "Sin Queso"
            print(pizzaQueso)
        }
    }
    
    @IBAction func adelante() {
     
        let iniciar = pizzaCook(pZ: pizzaSize, pM: pizzaMasa, pQ: pizzaQueso, iGral: ingrGral, iArray: ingArray)
        
        pushControllerWithName("goIngredientes", context: iniciar)
        print("Tamaño: \(pizzaSize) - Masa: \(pizzaMasa) - Queso: \(pizzaQueso)")
    }
}
