//
//  CalcMacrosEResults.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/6/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit
import UIKit

class CalcMacrosEResults: UIViewController {
    
    @IBOutlet weak var calorieLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        calorieLabel.text = "Se recomiendan \(Model.callIntake) KCALS al día y es importanter que incluyas al menos un aproximado de la siguiente cantidad de macronutrientes:"
    }
    
    @IBAction func volverACalcularButtonClicked(_ sender: Any) {
        Model.activeValue = 0
        Model.goalValue = 0
        Model.lifeStyleValue = 0
    }
    
    @IBAction func unwindSegueToCalcMacrosEResults(_ sender: UIStoryboardSegue) {

    }
    
    
    
}

