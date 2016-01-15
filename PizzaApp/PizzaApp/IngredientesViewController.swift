//
//  IngredientesViewController.swift
//  PizzaApp
//
//  Created by jlorenzo on 1/10/16.
//  Copyright © 2016 Lone Wolf. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    var pizza = ViewController.sharedInstance.pizza
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ingredienteSeleccionado(sender: CheckBox) {
        let tagIndex  = sender.tag
        let ingrediente = pizza.ingredientes()[tagIndex]
        
        if sender.isChecked {
            pizza.ingrediente.removeAtIndex(tagIndex)
        }else{
            pizza.ingrediente.append(ingrediente)
        }
        
    }
    
    @IBAction func validarCandidadIngredientes(sender: AnyObject) {
        
        let (estanLosIngredientes,mensaje) = cantidadIngredientesCorrecta()
        
        if !estanLosIngredientes {
            showAlert(mensaje: mensaje)
        } 
    }
    
    func cantidadIngredientesCorrecta() -> (Bool, String) {
        var mensaje : String? = ""
        
        if pizza.ingrediente.count < pizza.cantidadMinIngredientes {
            mensaje = "Debe alegir almenos un ingrediente"
            
        } else if pizza.ingrediente.count > pizza.cantidadMaxIngredientes {
                mensaje = "Debe alegir almenos un ingrediente"
        }
        
        if mensaje != "" {
            return(false, mensaje!)
        }
        return(true,mensaje!)
        
    }

    func showAlert(mensaje mensaje : String) {
        let alert = UIAlertController(title: "Alert", message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        let (estanLosIngredients,_) = cantidadIngredientesCorrecta()
        
        if estanLosIngredients {
            return true
        }
        
        return false
    }

 /*   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        //Get reference of the destination view controller
        let destionationViewController = segue.destinationViewController as! ConfirmarOrdenViewController
        
        //  print(String(pizza.tamano!))
        destionationViewController.tamanoLbl.text = pizza.tamano
        destionationViewController.tipoMasaLbl.text = pizza.tipoMasa
        destionationViewController.tipoQuesoLbl.text = pizza.tipoQueso
        
    }*/



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
