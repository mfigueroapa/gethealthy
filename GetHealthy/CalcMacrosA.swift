//
//  CalcularMacrosVC-A.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/6/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class CalcMacrosA: UIViewController {
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var weigthTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Model.initialize()
    }

    @IBAction func unwindSegueToCalcMacrosA(_ sender: UIStoryboardSegue) {
    }
    
    @IBAction func siguienteButtonCicked(_ sender: Any) {
        if (!heightTextField.text!.isEmpty && !genreTextField.text!.isEmpty && !ageTextField.text!.isEmpty && !weigthTextField.text!.isEmpty) {
            //action the segue
            performSegue(withIdentifier: "toCalcMacrosB", sender: AnyObject.self)
            //le pasamos los datos al model
            Model.genre = genreTextField.text!
            if let heightValue = Double(heightTextField.text!) {
                Model.height = heightValue
            }
            if let ageValue = Double(ageTextField.text!) {
                Model.age = ageValue
            }
            if let weightValue = Double(weigthTextField.text!) {
                Model.weight = weightValue
            }
        }
    }
}
