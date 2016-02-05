//
//  tamanoClass.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/22/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import WatchKit
import Foundation


class tamanoClass: WKInterfaceController {

    var chSel: Bool = false
    var meSel: Bool = false
    var grSel: Bool = false
    
    @IBOutlet var detalleSelect: WKInterfaceLabel!
    @IBOutlet var chBttn: WKInterfaceButton!
    @IBOutlet var meBttn: WKInterfaceButton!
    @IBOutlet var grBttn: WKInterfaceButton!
    
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
        
        detalleSelect.setText(pizzaSize)

        switch (pizzaSize){
        case "Chica":
            chBttn.setEnabled(true)
            detalleSelect.setText("Chica")
            chSel = true
            break
        case "Mediana":
            meBttn.setEnabled(true)
            detalleSelect.setText("Mediana")
            meSel = true
            break
        case "Grande":
            grBttn.setEnabled(true)
            detalleSelect.setText("Grande")
            grSel = true
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

    @IBAction func pushChica() {
        if(!chSel){
            chBttn.setEnabled(false);
            meBttn.setEnabled(true);
            grBttn.setEnabled(true);
            detalleSelect.setText("Chica")
            pizzaSize = "Chica"
            print(pizzaSize)
        }
    }
    
    
    @IBAction func pushMediana() {
        if(!chSel){
            chBttn.setEnabled(true);
            meBttn.setEnabled(false);
            grBttn.setEnabled(true);
            detalleSelect.setText("Mediana")
            pizzaSize = "Mediana"
            print(pizzaSize)
        }
    }
    
    
    @IBAction func pushGrande() {
        if(!chSel){
            chBttn.setEnabled(true);
            meBttn.setEnabled(true);
            grBttn.setEnabled(false);
            detalleSelect.setText("Grande")
            pizzaSize = "Gramde"
            print(pizzaSize)
        }
    }
    
    @IBAction func adelante() {    
        
        let iniciar = pizzaCook(pZ: pizzaSize, pM: pizzaMasa, pQ: pizzaQueso, iGral: ingrGral, iArray: ingArray)
        
        pushControllerWithName("goMasa", context: iniciar)
        print("Tamaño: \(pizzaSize) - Masa: \(pizzaMasa) - Queso: \(pizzaQueso)")
    }

}