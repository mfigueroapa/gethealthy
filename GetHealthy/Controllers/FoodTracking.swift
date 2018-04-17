//
//  FoodTracking.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 3/7/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import UIKit

class FoodTracking: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var addFoodButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cleanInfoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? FoodTrackingTableViewCell {
            let food = Model.foodList[indexPath.row]
            
            cell.updateView(food: food)
            return cell
        } else {
            return FoodTrackingTableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let food = Model.foodList[indexPath.row]
        let alertControler = UIAlertController(title: food.name, message: "Ingresa nuevos valores", preferredStyle:.alert)
        let updateAction = UIAlertAction(title: "Actualizar", style:.default){(_) in
            let name = alertControler.textFields?[0].text
            let calories = alertControler.textFields?[1].text
            Model.foodList[indexPath.row].name = name
            Model.foodList[indexPath.row].calories = calories
            self.tableView.reloadData()
        }
        
        let deleteAction = UIAlertAction(title: "Eliminar comida", style:.default){(_) in
            Model.foodList.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.default, handler: { (action) in alertControler.dismiss(animated: true, completion:nil) })
        
        alertControler.addTextField{(textField) in
            textField.text = food.name
        }
        
        alertControler.addTextField{(textField) in
            textField.text = food.calories
        }
        
        alertControler.addAction(updateAction)
        alertControler.addAction(deleteAction)
        alertControler.addAction(cancelAction)
        present(alertControler, animated:  true, completion: nil)
    }
    
    @IBAction func cleanInfoButtonClicked(_ sender: Any) {
        let alertController = UIAlertController(title: "Cuidado", message: "¿Seguro que quieres eliminar todo?", preferredStyle:.alert)
        let yes = UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: { (action) in alertController.dismiss(animated: true, completion:nil)
            Model.foodList.removeAll()
            self.tableView.reloadData()
        })
        let no = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.default, handler: { (action) in alertController.dismiss(animated: true, completion:nil) })

        alertController.addAction(yes)
        alertController.addAction(no)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func addFoodButtonClicked(_ sender: Any) {

        let alertController = UIAlertController(title: "Nueva comida", message: "Registra la comida con sus calorias", preferredStyle:.alert)
        
        alertController.addAction(UIAlertAction(title: "Agregar", style: UIAlertActionStyle.default, handler: { (action) in alertController.dismiss(animated: true, completion:nil)
            let name = alertController.textFields?[0].text
            let calories = alertController.textFields?[1].text
            var food : FoodOject
            food = FoodOject(name: name, calories: calories)
            Model.foodList.append(food)
            self.tableView.reloadData()
            self.viewDidLoad()
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.default, handler: { (action) in alertController.dismiss(animated: true, completion:nil)
        }))
        
        alertController.addTextField{(textField) in
            textField.placeholder = "Nombre de la comida y cantidad"
        }
        
        alertController.addTextField{(textField) in
            textField.placeholder = "Calorias"
        }
        self.present(alertController, animated: true, completion: nil)

    }
}
