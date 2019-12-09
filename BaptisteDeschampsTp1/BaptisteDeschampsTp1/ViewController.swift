//
//  ViewController.swift
//  BaptisteDeschampsTp1
//
//  Created by local192 on 04/12/2019.
//  Copyright © 2019 local192. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TxtAnneeNaissance: UITextField!
    @IBOutlet weak var affichageAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtAnneeNaissance.text = "1998"
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculerAge(_ sender: Any) {

        affichageAge.text = "votre age est : \(age())"
        self.view.endEditing(true)
    }
    
    func age()-> Int {
        let valAnneeNaissance = Int(TxtAnneeNaissance.text!)
        let valAnneeEnCours = Calendar.current.component(.year, from: Date())
        let valAge = valAnneeEnCours - valAnneeNaissance!
        return valAge
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        affichageAge.text = "votre age est : \(age())"
        return true
    }
    
}


