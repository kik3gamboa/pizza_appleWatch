//
//  cookClass.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/22/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import WatchKit
import Foundation


class cookClass: WKInterfaceController {

    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]

    @IBOutlet var faltante: WKInterfaceLabel!
    @IBOutlet var tamañoLbl: WKInterfaceLabel!
    @IBOutlet var masaLbl: WKInterfaceLabel!
    @IBOutlet var quesoLbl: WKInterfaceLabel!
    @IBOutlet var ingLbl: WKInterfaceLabel!
    @IBOutlet var cocinarBtn: WKInterfaceButton!
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let retorno = context as! pizzaCook
        pizzaSize = String(retorno.pizzaSize)
        pizzaMasa = String(retorno.pizzaMasa)
        pizzaQueso = String(retorno.pizzaQueso)
        ingrGral = Int(retorno.ingrGral)
        
        var opTotal: Int = 0
        
        let sizeTam : Int = (pizzaSize.characters.count)
        let sizeMas : Int = (pizzaMasa.characters.count)
        let sizeQue : Int = (pizzaQueso.characters.count)
        
        if( sizeTam == 0 ){
            tamañoLbl.setText("-")
        } else {
            tamañoLbl.setText(pizzaSize)
            opTotal++;
        }
        
        if( sizeMas == 0 ){
            masaLbl.setText("-")
        } else {
            masaLbl.setText(pizzaMasa)
            opTotal++;
        }
        
        if( sizeQue == 0 ){
            quesoLbl.setText("-")
        } else {
            quesoLbl.setText(pizzaQueso)
            opTotal++;
        }
        
        var ingredientes : String = ""
        for (index, value) in retorno.ingArray{

            if ( index == "a" && value){
                ingredientes += "Aceitunas, "
            }
            if ( index == "b" && value){
                ingredientes += "Cebolla, "
            }
            if ( index == "c" && value){
                ingredientes += "Jamón, "
            }
            if ( index == "d" && value){
                ingredientes += "Pollo, "
            }
            if ( index == "e" && value){
                ingredientes += "Tocino, "
            }
            if ( index == "f" && value){
                ingredientes += "Pepperoni, "
            }
            if ( index == "g" && value){
                ingredientes += "Ternera, "
            }
            if ( index == "h" && value){
                ingredientes += "Tomate, "
            }
            if ( index == "i" && value){
                ingredientes += "Anchoas, "
            }
            if ( index == "j" && value){
                ingredientes += "Champiñón, "
            }
            if ( index == "k" && value){
                ingredientes += "Pimiento, "
            }
            if ( index == "l" && value){
                ingredientes += "Piña, "
            }
        }
        
        let sizeIng : Int = (ingredientes.characters.count)
        
        if( sizeIng == 0 ){
            ingLbl.setText("-")
        } else {
            ingLbl.setText(ingredientes)
            opTotal++;
        }
        
        if( opTotal >= 4 ){
            cocinarBtn.setHidden(false)
            faltante.setHidden(true)
        } else {
            cocinarBtn.setHidden(true)
            faltante.setHidden(false)
        }
        
    }

    @IBAction func cook() {
        
        
        let iniciar = pizzaCook(pZ: pizzaSize, pM: pizzaMasa, pQ: pizzaQueso, iGral: ingrGral, iArray: ingArray)
        
        pushControllerWithName("goHorno", context: iniciar)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
