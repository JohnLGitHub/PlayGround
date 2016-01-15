//
//  TipoQuesoViewController.swift
//  PizzaApp
//
//  Created by jlorenzo on 1/10/16.
//  Copyright © 2016 Lone Wolf. All rights reserved.
//

import UIKit

class TipoQuesoViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var tipoQuesoPicker: UIPickerView!
    var pizza = ViewController.sharedInstance.pizza
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tipoQuesoPicker.delegate = self
        self.tipoQuesoPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pizza.tiposDeQueso().count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pizza.tiposDeQueso()[row]
    }
    
    @IBAction func quesoSeleccionado(sender: AnyObject) {
         pizza.tipoQueso = pizza.tiposDeQueso()[tipoQuesoPicker.selectedRowInComponent(0)]
        print(pizza.tamano)
    }
    
    //MARK : UIPickerView Delegates
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
