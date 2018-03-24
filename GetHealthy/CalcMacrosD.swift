//
//  CalcMacrosD.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/6/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class CalcMacrosD: UIViewController {
    
    @IBOutlet weak var B1Unchecked: UIButton!
    @IBOutlet weak var B1Checked: UIButton!
    @IBOutlet weak var B2Unchecked: UIButton!
    @IBOutlet weak var B2Checked: UIButton!
    @IBOutlet weak var B3Unchecked: UIButton!
    @IBOutlet weak var B3Checked: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calcularButtonClicked(_ sender: Any) {
        
        if (Model.lifeStyleValue > 0) {
//            print("before performing segue: \(Model.callIntake)")
//            print("eded",Model.age)
//            print("peso",Model.weight)
//            print("altura",Model.height)
//            print("genero",Model.genre)
//            print("activeVal", Model.activeValue)
//            print("goalVal", Model.goalValue)
//            print("lifeStyleValue", Model.lifeStyleValue)
            Model.calculateMacros()
            performSegue(withIdentifier: "toCalcMacrosEResults", sender: AnyObject.self)
        }
    }

    @IBAction func unwindSegueToCalcMacrosD(_ sender: UIStoryboardSegue) {
    }

    @IBAction func B1Unchecked(_ sender: Any) {
        if (B1Unchecked.isHidden == false) {
            B1Unchecked.isHidden = true
            B1Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B2Checked.isHidden = true
            B3Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B2Unchecked.isHidden = false
            B3Unchecked.isHidden = false
            Model.lifeStyleValue = 1
        }
    }
    
    @IBAction func B1Checked(_ sender: Any) {
        if (B1Checked.isHidden == false) {
            B1Checked.isHidden = true
            B1Unchecked.isHidden = false
            Model.lifeStyleValue = 0
        }
    }
    
    @IBAction func B2Unchecked(_ sender: Any) {
        if (B2Unchecked.isHidden == false) {
            B2Unchecked.isHidden = true
            B2Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B1Checked.isHidden = true
            B3Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B1Unchecked.isHidden = false
            B3Unchecked.isHidden = false
            Model.lifeStyleValue = 2
        }
    }
    
    @IBAction func B2Checked(_ sender: Any) {
        if (B2Checked.isHidden == false) {
            B2Checked.isHidden = true
            B2Unchecked.isHidden = false
            Model.lifeStyleValue = 0
        }
    }
    
    @IBAction func B3Unchecked(_ sender: Any) {
        if (B3Unchecked.isHidden == false) {
            B3Unchecked.isHidden = true
            B3Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B1Checked.isHidden = true
            B2Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B1Unchecked.isHidden = false
            B2Unchecked.isHidden = false
            Model.lifeStyleValue = 3
        }
    }
    
    @IBAction func B3Checked(_ sender: Any) {
        if (B3Checked.isHidden == false) {
            B3Checked.isHidden = true
            B3Unchecked.isHidden = false
            Model.lifeStyleValue = 0
        }
    }
}

