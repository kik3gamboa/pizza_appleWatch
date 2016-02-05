//
//  ViewControllerEnd.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/2/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewControllerEnd: UIViewController {

    
    @IBOutlet weak var tamanoLbl: UILabel!
    @IBOutlet weak var masaLbl: UILabel!
    @IBOutlet weak var quesoLbl: UILabel!
    @IBOutlet weak var IngreLbl: UILabel!
    @IBOutlet weak var newBttn: UIButton!
    @IBOutlet weak var cookBttn: UIButton!
    @IBOutlet weak var atrasBttn: UIButton!
    @IBOutlet weak var okLbl: UILabel!
    
    var opTotal : Int = 0
    var opSegue : Bool = false
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    @IBOutlet weak var pizza_final: UILabel!
    var pizzaCaracter : String = ""
    
    override func viewWillAppear(animated: Bool) {

        tamanoLbl.text = self.pizzaSize
        masaLbl.text = self.pizzaMasa
        quesoLbl.text = self.pizzaQueso
        
        
        let sizeTam : Int = (tamanoLbl.text!.characters.count)
        let sizeMas : Int = (masaLbl.text!.characters.count)
        let sizeQue : Int = (quesoLbl.text!.characters.count)
        
        if( sizeTam == 0 ){
            tamanoLbl.text = "No seleccionado"
        } else {
            tamanoLbl.text = tamanoLbl.text
            opTotal++;
        }
        
        if( sizeMas == 0 ){
            masaLbl.text = "No seleccionado"
        } else {
            masaLbl.text = masaLbl.text
            opTotal++;
        }
        
        if( sizeQue == 0 ){
            quesoLbl.text = "No seleccionado"
        } else {
            quesoLbl.text = quesoLbl.text
            opTotal++;
        }
        
        var ingredientes : String = ""
        for (index, value) in self.ingArray{
            
            if ( index == "a" && value){
                ingredientes += "Aceitunas \n"
            }
            if ( index == "b" && value){
                ingredientes += "Cebolla \n"
            }
            if ( index == "c" && value){
                ingredientes += "Jamón \n"
            }
            if ( index == "d" && value){
                ingredientes += "Pollo \n"
            }
            if ( index == "e" && value){
                ingredientes += "Tocino \n"
            }
            if ( index == "f" && value){
                ingredientes += "Pepperoni \n"
            }
            if ( index == "g" && value){
                ingredientes += "Ternera \n"
            }
            if ( index == "h" && value){
                ingredientes += "Tomate \n"
            }
            if ( index == "i" && value){
                ingredientes += "Anchoas \n"
            }
            if ( index == "j" && value){
                ingredientes += "Champiñón \n"
            }
            if ( index == "k" && value){
                ingredientes += "Pimiento \n"
            }
            if ( index == "l" && value){
                ingredientes += "Piña \n"
            }
        }
        
        IngreLbl.text = ingredientes
        let sizeIng : Int = (IngreLbl.text!.characters.count)
        
        if( sizeIng == 0 ){
            IngreLbl.text = "No seleccionado"
        } else {
            IngreLbl.text = IngreLbl.text
            opTotal++;
        }
        
        
        print("[Nivel Final] - Hasta el momento  \(pizzaSize) - \(pizzaMasa) - \(pizzaQueso) - \(ingredientes)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cook(sender: AnyObject) {
        if(opTotal == 4){
            let refreshAlert = UIAlertController(title: "Mandar al Horno", message: "¿Estas seguro de querer cocinar tu pizza?", preferredStyle: UIAlertControllerStyle.Alert)
            refreshAlert.addAction(UIAlertAction(title: "Si", style: .Default, handler: { (action: UIAlertAction!) in
                print("Ok")
                
                self.cookBttn.hidden = true
                self.atrasBttn.hidden = true
                self.newBttn.hidden = false
                self.okLbl.hidden = false
                
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "No", style: .Default, handler: { (action: UIAlertAction!) in
                print("Cancel")
            }))
            presentViewController(refreshAlert, animated: true, completion: nil)
            
        } else {
            let refreshAlert = UIAlertController(title: "Alerta", message: "Te falta algo para poder cocinar tu pizza.", preferredStyle: UIAlertControllerStyle.Alert)
            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                print("Ok")
            }))
            presentViewController(refreshAlert, animated: true, completion: nil)
        }
        
    }

    @IBAction func newPizza(sender: AnyObject) {
        opSegue = true
    }
    
    @IBAction func atras(sender: AnyObject) {
        opSegue = false
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (!opSegue){
            let vistaSig = segue.destinationViewController as! ViewControllerIngredientes
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        }
    }
}
