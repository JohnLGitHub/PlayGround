//
//  TipoMasaViewController.swift
//  PizzaApp
//
//  Created by jlorenzo on 1/10/16.
//  Copyright © 2016 Lone Wolf. All rights reserved.
//

import UIKit

class TipoMasaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var tipoMasaPicker: UIPickerView!
    
    var pizza = ViewController.sharedInstance.pizza
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tipoMasaPicker.delegate = self
        self.tipoMasaPicker.dataSource = self
        
        print(pizza.tamano)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UIPickerView Delegates
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pizza.tiposDeMasa().count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pizza.tiposDeMasa()[row]
    }
    
    
    
    @IBAction func masaSeleccionada(sender: AnyObject) {
        pizza.tipoMasa = pizza.tiposDeMasa()[tipoMasaPicker.selectedRowInComponent(0)]
        print(pizza.tipoMasa)
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
