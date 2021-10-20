//
//  OperacionViewController.swift
//  Segue
//
//  Created by Mac9 on 22/09/21.
//

import UIKit

class OperacionViewController: UIViewController {
    var operacion:  String?
    var num1: Float?
    var num2: Float?
    var resultado: String?
    @IBOutlet weak var primernumlbl: UITextField!
    @IBOutlet weak var segundonumlbl: UITextField!
    @IBOutlet weak var operacionlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        operacionlbl.text = operacion
        // Do any additional setup after loading the view.
    }
    
    @IBAction func volverbtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
        
    /*
    // M    ARK: -   Navigation

    // In a     storyboard-based application, you will often want to do a little preparation before navigation
    override fun    c prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func operacionbtn(_ sender: UIButton) {
                let numero1: Double? = Double(primernumlbl.text ?? "0")
                let numero2: Double? = Double(segundonumlbl.text ?? "0")
                if primernumlbl.text != "" || segundonumlbl.text != "" {
                switch operacion {
                
                case "suma":
                    resultado = "El resultado de la suma es: \(numero1!+numero2!)"
                    
                case "resta":
                    resultado = "El resultado de la resta es: \(numero1!-numero2!)"
                   
                case "multiplicacion":
                    resultado = "El resultado de la multiplicacion es: \(numero1!*numero2!)"
                    
                case "division":
                    resultado = "El resultado de la division es: \(numero1!/numero2!)"
                   
               
                default:
                    resultado = "No se selecciono ninguna."
                }
                }else{
                    resultado = "Dejaste vacio algun campo"
                }
                
        performSegue(withIdentifier: "resultado", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultado" {
            let Op = segue.destination as! ResultadoViewController
            Op.restultado = resultado
            
            
        }
    }
    	
}
