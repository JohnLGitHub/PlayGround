//
//  ConfirmarOrdenViewController.swift
//  PizzaApp
//
//  Created by jlorenzo on 1/11/16.
//  Copyright © 2016 Lone Wolf. All rights reserved.
//

import UIKit

class ConfirmarOrdenViewController: UIViewController {
    
    var pizza = ViewController.sharedInstance.pizza
    
    @IBOutlet weak var tamanoLbl: UILabel!
    @IBOutlet weak var tipoMasaLbl: UILabel!
    @IBOutlet weak var tipoQuesoLbl: UILabel!
    @IBOutlet weak var ingredientesLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamanoLbl.text = pizza.tamano
        tipoMasaLbl.text = pizza.tipoMasa
        tipoQuesoLbl.text = pizza.tipoQueso
        ingredientesLbl.text = pizza.obtenerStringIngredientes()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
