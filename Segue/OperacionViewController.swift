//
//  OperacionViewController.swift
//  Segue
//
//  Created by Mac9 on 22/09/21.
//

import UIKit

class OperacionViewController: UIViewController {

    @IBOutlet weak var primernumlbl: UITextField!
    @IBOutlet weak var segundonumlbl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

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
    }
    	
}
