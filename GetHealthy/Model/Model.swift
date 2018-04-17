//
//  Model.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/6/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import Foundation
import CoreData



class Model {
    static var genre : String = ""
    static var height : Double = 0.0
    static var age : Double = 0.0
    static var weight : Double = 0.0
    static var activeValue : Double = 0.0
    static var goalValue : Double = 0.0
    static var lifeStyleValue : Double = 0.0
    
    static var proteinIntake : Double = 0.0
    static var carbsIntake : Double = 0.0
    static var fatsIntake : Double = 0.0
    static var callIntake : Double = 0.0
    
    static var foodList : Array<FoodOject> = []
    static var food : [Food]? = nil

    static func initialize() {
        print("model initialized")
        var thefood : FoodOject
        thefood = FoodOject(name: "Chicken breast", calories: "100")
        foodList.append(thefood)
        thefood = FoodOject(name: "Oatmeal", calories: "100")
        foodList.append(thefood)
        thefood = FoodOject(name: "Protein powder", calories: "100")
        foodList.append(thefood)
        
        
        
        CoreDataHandler.saveObject(name: "greek yogurt", calories: "150")
        CoreDataHandler.saveObject(name: "choco yogurt", calories: "450")
        food = CoreDataHandler.fetchObject()
        for f in food! {
            print("somethig")
            print(f.name!)
            print(f.calories!)
        }
        print("//////////////////////////////////////////")
//        CoreDataHandler.deleteObject(food: food![0])
//        food = CoreDataHandler.fetchObject()
//        for f in food! {
//            print("somethig")
//            print(f.name!)
//            print(f.calories!)
//        }
        
//        CoreDataHandler.cleanDelete()
//        food = CoreDataHandler.fetchObject()
//        print("Print del objeto despues de cleanDelete: " , food)
    }
    
    static func processGender(){
        print("processGender method called")
        switch genre {
        case "M":
            print("Men formula")
            callIntake = ((10 * weight) + ( 6.25 * height) - ((5 * age) + 5)+380)

        case "F":
            print("Women formula")
            callIntake = ((10 * weight) + ( 6.25 * height) - ((5 * age) - 161)+380)
            
        default:
            print("Not a valid string")
        }
    }
    
    static func processActiveValue() {
        print("processActiveValue method called")
        switch activeValue {
        case 1:
            callIntake = callIntake + 0
        case 2:
            callIntake = callIntake + 250
        case 3:
            callIntake = callIntake + 500
        case 4:
            callIntake = callIntake + 800
        default:
            print("entered to default")
        }
    }
    
    static func processGoalValue() {
        print("processGoalValue method called")
        switch goalValue {
        case 1:
            callIntake = callIntake - 500
        case 2:
            callIntake = callIntake + 0
        case 3:
            callIntake = callIntake + 300
        default:
            print("not a valid goalValue")
        }
    }
    
    static func processLifeStyleValue() {
        print("processLifeStyleValue method called")
        switch lifeStyleValue {
        case 1:
            callIntake = callIntake + 0
        case 2:
            callIntake = callIntake + 250
        case 3:
            callIntake = callIntake + 200
        default:
            print("not a valid goalValue")
        }
    }
    
    static func calculateMacros(){
        print("calculateMacros method called")
        processGender()
        processActiveValue()
        processGoalValue()
        processLifeStyleValue()
        print("calories: ", callIntake)
        print("we are printing the callIntake calculated from the calculateMacros method!: \(callIntake)")
    }
}
