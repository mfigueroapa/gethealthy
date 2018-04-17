//
//  FoodTrackingTableViewCell.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/8/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class FoodTrackingTableViewCell: UITableViewCell {

    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodCalories: UILabel!
    
    func updateView(food: FoodOject) {
        foodName.text = food.name
        foodCalories.text = "\(food.calories!) kcals"
    }

}
