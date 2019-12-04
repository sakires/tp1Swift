//
//  ViewController.swift
//  BaptisteDeschampsTp1
//
//  Created by local192 on 04/12/2019.
//  Copyright © 2019 local192. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TxtAnneeNaissance: UITextField!
    @IBOutlet weak var affichageAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtAnneeNaissance.text = "1998"
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculerAge(_ sender: Any) {
        let valAnneeNaissance = Int(TxtAnneeNaissance.text!)
        let valAnneeEnCours = Calendar.current.component(.year, from: Date())
        let valAge = valAnneeEnCours - valAnneeNaissance!
        affichageAge.text = "votre age est : " + String(valAge)
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


