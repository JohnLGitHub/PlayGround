//
//  ViewController.swift
//  PeticionServidor
//
//  Created by jlorenzo on 12/20/15.
//  Copyright © 2015 Lone Wolf. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    
    @IBOutlet weak var httpResponse: UITextView!
    @IBOutlet weak var ISBN: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ISBN.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func buscaLibro() {
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:\(ISBN.text!)"
  
        let url = NSURL(string: urls)
        if url != nil {
            let datos : NSData? = NSData(contentsOfURL: url!)
            if datos != nil {
                let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
                httpResponse.text = String(texto)
            }
        }
        else{
            showAlert()
        }
        
    }
    
    
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        textField.resignFirstResponder()
        buscaLibro()
    }
    
    
    @IBAction func backgroundTap(sender : UIControl){
        ISBN.resignFirstResponder()
    }
    
     func textFieldShouldClear(textField: UITextField) -> Bool {
        httpResponse.text = nil
        return true
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Alert", message: "Verifique su conexion a Internet", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
}

