//
//  ViewControllerMasa.swift
//  Pizzas Kiketelo
//
//  Created by Telecomunicaciones Abiertas de México on 12/2/15.
//  Copyright © 2015 Telecomunicaciones Abiertas de México. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController {

    var opSegue : Bool = false
    var pizzaSize : String = ""
    var pizzaMasa : String = ""
    var pizzaQueso : String = ""
    var ingrGral : Int = 0
    var ingArray = ["a": false, "b": false, "c": false, "d": false, "e": false, "f": false, "g": false, "h": false, "i": false, "j": false, "k": false, "l": false]
    
    @IBOutlet weak var bttnDelgada: UIButton!
    @IBOutlet weak var bttnCruji: UIButton!
    @IBOutlet weak var bttnGruesa: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        print("[Nivel Masa] - Hasta el momento  \(pizzaSize) - \(pizzaMasa) - \(pizzaQueso)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bttnDelgada.layer.shadowOpacity = 0.0
        bttnDelgada.layer.shadowOffset = CGSizeMake(0, 3)
        bttnDelgada.layer.shadowColor = UIColor.redColor().CGColor
        bttnCruji.layer.shadowOpacity = 0.0
        bttnCruji.layer.shadowOffset = CGSizeMake(0, 3)
        bttnCruji.layer.shadowColor = UIColor.redColor().CGColor
        bttnGruesa.layer.shadowOpacity = 0.0
        bttnGruesa.layer.shadowOffset = CGSizeMake(0, 3)
        bttnGruesa.layer.shadowColor = UIColor.redColor().CGColor
        
        self.navigationItem.setHidesBackButton(true, animated:true);
        switch (pizzaMasa){
        case "Delgada":
            bttnDelgada.selected = true
            bttnDelgada.layer.shadowOpacity = 1.0
            break
        case "Crujiente":
            bttnCruji.selected = true
            bttnCruji.layer.shadowOpacity = 1.0
            break
        case "Gruesa":
            bttnGruesa.selected = true
            bttnGruesa.layer.shadowOpacity = 1.0
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func opDelgada(sender: AnyObject) {
        if (bttnDelgada.selected == true){
            bttnDelgada.selected = false
            self.pizzaMasa = ""
        } else {
            bttnDelgada.selected = true
            bttnDelgada.layer.shadowOpacity = 1.0
            bttnCruji.selected = false
            bttnCruji.layer.shadowOpacity = 0.0
            bttnGruesa.selected = false
            bttnGruesa.layer.shadowOpacity = 0.0
            self.pizzaMasa = "Delgada"
        }
    }
    
    @IBAction func opCruji(sender: AnyObject) {
        if (bttnCruji.selected == true){
            bttnCruji.selected = false
            self.pizzaMasa = ""
        } else {
            bttnDelgada.selected = false
            bttnDelgada.layer.shadowOpacity = 0.0
            bttnCruji.selected = true
            bttnCruji.layer.shadowOpacity = 1.0
            bttnGruesa.selected = false
            bttnGruesa.layer.shadowOpacity = 0.0
            self.pizzaMasa = "Crujiente"
        }
    }
    
    @IBAction func opGruesa(sender: AnyObject) {
        if (bttnGruesa.selected == true){
            bttnGruesa.selected = false
            self.pizzaMasa = ""
        } else {
            bttnDelgada.selected = false
            bttnDelgada.layer.shadowOpacity = 0.0
            bttnCruji.selected = false
            bttnCruji.layer.shadowOpacity = 0.0
            bttnGruesa.selected = true
            bttnGruesa.layer.shadowOpacity = 1.0
            self.pizzaMasa = "Gruesa"
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
            let vistaSig = segue.destinationViewController as! ViewControllerTaman_o
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        } else {
            let vistaSig = segue.destinationViewController as! ViewControllerQueso
            vistaSig.pizzaSize = self.pizzaSize
            vistaSig.pizzaMasa = self.pizzaMasa
            vistaSig.pizzaQueso = self.pizzaQueso
            vistaSig.ingrGral = self.ingrGral
            vistaSig.ingArray = self.ingArray
        }

        
    }
    
    

}
