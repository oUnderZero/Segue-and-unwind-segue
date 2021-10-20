//
//  ViewController.swift
//  Segue
//
//  Created by Mac9 on 21/09/21.
//

import UIKit

class ViewController: UIViewController {
    var operacion: String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
       
    }
    @IBAction func sumar(_ sender: Any) {
        operacion = "suma"
        performSegue(withIdentifier: "operacion", sender: self)
    }
    @IBAction func multiplicacion(_ sender: Any) {
        operacion = "multiplicacion"
        performSegue(withIdentifier: "operacion", sender: self)
        
    }
    @IBAction func resta(_ sender: Any) {
        operacion = "resta"
        performSegue(withIdentifier: "operacion", sender: self)
        
    }
    
    @IBAction func division(_ sender: Any) {
        operacion = "division"
        performSegue(withIdentifier: "operacion", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "operacion" {
            let Op = segue.destination as! OperacionViewController
            Op.operacion = operacion
            
        }
    }
}

