//
//  CoreDataHandler.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 4/16/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import CoreData
import UIKit

class CoreDataHandler: NSObject {
    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveObject(name: String, calories: String) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Food", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(name, forKey: "name")
        manageObject.setValue(calories, forKey: "calories")
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }//end catch
    }//end saveObject
    
    class func fetchObject() -> [Food]? {
        let context = getContext()
        var food:[Food]? = nil
        do {
            food = try context.fetch(Food.fetchRequest())
            return food
        } catch {
            return food
        }//end catch
    }//end fetchObject
    
    class func deleteObject(food: Food) -> Bool {
        let context = getContext()
        context.delete(food)
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }//end catch
    }//end deleteObject
    
    class func cleanDelete() -> Bool {
        let context = getContext()
        let delete = NSBatchDeleteRequest(fetchRequest: Food.fetchRequest())
        
        do {
            try context.execute(delete)
            return true
        } catch {
            return false
        }//end catch
    }//end cleanDelete
    
}
