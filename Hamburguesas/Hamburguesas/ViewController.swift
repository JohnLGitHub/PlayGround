//
//  ViewController.swift
//  Hamburguesas
//
//  Created by jlorenzo on 12/14/15.
//  Copyright © 2015 Lone Wolf. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelHamburguesa: UILabel!
    
    var pais = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quieroUnaHamburguesa() {
        labelPais.text = pais.obtenerPais();
        labelHamburguesa.text = hamburguesas.obtenerHamburguesas()
    }
   }

