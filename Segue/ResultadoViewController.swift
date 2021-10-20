//
//  ResultadoViewController.swift
//  Segue
//
//  Created by Mac9 on 22/09/21.
//

import UIKit

class ResultadoViewController: UIViewController {
    var restultado: String?
    @IBOutlet weak var resultadolbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultadolbl.text = restultado
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backToATapped(_ sender: Any) {
        performSegue(withIdentifier: "unwind", sender: self)
    }
    @IBAction func volverbtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
