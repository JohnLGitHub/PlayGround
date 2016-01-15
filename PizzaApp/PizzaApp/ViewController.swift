//
//  ViewController.swift
//  PizzaApp
//
//  Created by jlorenzo on 1/10/16.
//  Copyright © 2016 Lone Wolf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var TamanoPizzPick: UIPickerView!
    static let sharedInstance: ViewController = ViewController()
    var pizza = Pizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.TamanoPizzPick.delegate = self
        self.TamanoPizzPick.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK : UIPickerview Delegate 
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pizza.tamanos().count

    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pizza.tamanos()[row]
    }
    
    
    @IBAction func tamanoSeleccionado(sender: AnyObject) {
        
        ViewController.sharedInstance.pizza.tamano = pizza.tamanos()[TamanoPizzPick.selectedRowInComponent(0)]
    }

    
  
    
}

