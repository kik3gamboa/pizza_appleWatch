//
//  masaClass.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/22/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import WatchKit
import Foundation


class masaClass: WKInterfaceController {

    var deSel: Bool = false
    var grSel: Bool = false
    var crSel: Bool = false
    
    @IBOutlet var detalleSelect: WKInterfaceLabel!
    @IBOutlet var deBttn: WKInterfaceButton!
    @IBOutlet var grBttn: WKInterfaceButton!
    @IBOutlet var crBttn: WKInterfaceButton!
    
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
        
        detalleSelect.setText(pizzaMasa)
        
        switch (pizzaMasa){
        case "Delgada":
            deBttn.setEnabled(false)
            detalleSelect.setText("Delgada")
            deSel = true
            break
        case "Gruesa":
            grBttn.setEnabled(false)
            detalleSelect.setText("Gruesa")
            grSel = true
            break
        case "Crujiente":
            crBttn.setEnabled(false)
            detalleSelect.setText("Crujiente")
            crSel = true
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

    @IBAction func pushDelgada() {
        if(!deSel){
            deBttn.setEnabled(false);
            grBttn.setEnabled(true);
            crBttn.setEnabled(true);
            detalleSelect.setText("Delgada")
            pizzaMasa = "Delgada"
            print(pizzaMasa)
        }
    }
    
    
    @IBAction func pushGruesa() {
        if(!grSel){
            deBttn.setEnabled(true);
            grBttn.setEnabled(false);
            crBttn.setEnabled(true);
            detalleSelect.setText("Gruesa")
            pizzaMasa = "Gruesa"
            print(pizzaMasa)
        }
    }
    
    
    @IBAction func pushCrujiente() {
        if(!crSel){
            deBttn.setEnabled(true);
            grBttn.setEnabled(true);
            crBttn.setEnabled(false);
            detalleSelect.setText("Crujiente")
            pizzaMasa = "Crujiente"
            print(pizzaMasa)
        }
    }
    
    @IBAction func adelante() {
      
        let iniciar = pizzaCook(pZ: pizzaSize, pM: pizzaMasa, pQ: pizzaQueso, iGral: ingrGral, iArray: ingArray)
        
        pushControllerWithName("goQueso", context: iniciar)
        print("Tamaño: \(pizzaSize) - Masa: \(pizzaMasa) - Queso: \(pizzaQueso)")
    }
    
}
