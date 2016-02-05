//
//  pizzaCook.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/22/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import WatchKit

class pizzaCook: NSObject {

    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    init(pZ: String, pM: String, pQ: String, iGral: Int, iArray: [String : Bool]){
        pizzaSize = pZ
        pizzaMasa = pM
        pizzaQueso = pQ
        ingrGral = iGral
        ingArray = iArray
    }
    
}
