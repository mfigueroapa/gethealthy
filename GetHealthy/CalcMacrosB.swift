//
//  CalcMacrosB.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/6/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class CalcMacrosB: UIViewController {
    
    @IBOutlet weak var B1Checked: UIButton!
    @IBOutlet weak var B1Unchecked: UIButton!
    
    @IBOutlet weak var B2Checked: UIButton!
    @IBOutlet weak var B2Unchecked: UIButton!
    
    @IBOutlet weak var B3Checked: UIButton!
    @IBOutlet weak var B3Unchecked: UIButton!
    
    @IBOutlet weak var B4Checked: UIButton!
    @IBOutlet weak var B4Unchecked: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func siguienteButtonClicked(_ sender: Any) {
        if (Model.activeValue > 0) {
            performSegue(withIdentifier: "toCalcMacrosC", sender: AnyObject.self)
        }
    }
    
    @IBAction func unwindSegueToCalcMacrosB(_ sender: UIStoryboardSegue) {
    }
    
    //Acciones del "boton 1"
    @IBAction func B1Unchecked(_ sender: Any) {
        if (B1Unchecked.isHidden == false) {
            B1Unchecked.isHidden = true
            B1Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B2Checked.isHidden = true
            B3Checked.isHidden = true
            B4Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B2Unchecked.isHidden = false
            B3Unchecked.isHidden = false
            B4Unchecked.isHidden = false
            Model.activeValue = 1
        }
        print("B1Unchecked clicked")
    }
    @IBAction func B1Checked(_ sender: Any) {
        if (B1Checked.isHidden == false) {
            B1Checked.isHidden = true
            B1Unchecked.isHidden = false
            Model.activeValue = 0
        }
        print("B1Checked clicked")
    }
    
    //Acciones del "boton 2"
    @IBAction func B2Unchecked(_ sender: Any) {
        if (B2Unchecked.isHidden == false) {
            B2Unchecked.isHidden = true
            B2Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B1Checked.isHidden = true
            B3Checked.isHidden = true
            B4Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B1Unchecked.isHidden = false
            B3Unchecked.isHidden = false
            B4Unchecked.isHidden = false
            Model.activeValue = 2
        }
    }
    
    @IBAction func B2Checked(_ sender: Any) {
        if (B2Checked.isHidden == false) {
            B2Checked.isHidden = true
            B2Unchecked.isHidden = false
            Model.activeValue = 0
        }
    }
    
    //Acciones del "boton 3"
    @IBAction func B3Unchecked(_ sender: Any) {
        if (B3Unchecked.isHidden == false) {
            B3Unchecked.isHidden = true
            B3Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B2Checked.isHidden = true
            B1Checked.isHidden = true
            B4Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B2Unchecked.isHidden = false
            B1Unchecked.isHidden = false
            B4Unchecked.isHidden = false
            Model.activeValue = 3
        }
    }
    
    @IBAction func B3Checked(_ sender: Any) {
        if (B3Checked.isHidden == false) {
            B3Checked.isHidden = true
            B3Unchecked.isHidden = false
            Model.activeValue = 0
        }
    }
    
    //Acciones del "boton 4"
    @IBAction func B4Unchecked(_ sender: Any) {
        if (B4Unchecked.isHidden == false) {
            B4Unchecked.isHidden = true
            B4Checked.isHidden = false
            //Nos aseguramos de que las opciones no esten seleccionadas
            B2Checked.isHidden = true
            B3Checked.isHidden = true
            B1Checked.isHidden = true
            //Nos aseguramos de que los botones de seleccion se sigan viendo para el usuario.
            B2Unchecked.isHidden = false
            B3Unchecked.isHidden = false
            B1Unchecked.isHidden = false
            Model.activeValue = 4
        }
    }
    
    @IBAction func B4Checked(_ sender: Any) {
        if (B4Checked.isHidden == false) {
            B4Checked.isHidden = true
            B4Unchecked.isHidden = false
            Model.activeValue = 0
        }
    }
}

