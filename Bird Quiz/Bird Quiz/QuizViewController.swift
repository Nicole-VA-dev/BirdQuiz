//
//  QuizViewController.swift
//  Bird Quiz
//
//  Created by Nicole Vera on 8/17/26.
//

import UIKit

class QuizViewController: UIViewController {
 
    @IBOutlet weak var swimmingSwitch: UISwitch!
    
    @IBOutlet weak var sportsSwitch: UISwitch!
    
    @IBOutlet weak var travelingSwitch: UISwitch!
    
    @IBOutlet weak var hikingSwitch: UISwitch!
    
    
    
    @IBAction func seeResultsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toLoading", sender: self)
    }
    
    func collectSelectedHobbies() -> [String] {
        var hobbies: [String] = []
        if swimmingSwitch.isOn { hobbies.append("Swimming") }
        if sportsSwitch.isOn { hobbies.append("Playing Sports")  }
        if travelingSwitch.isOn { hobbies.append("Traveling") }
        if hikingSwitch.isOn { hobbies.append("Hiking") }
        return hobbies
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLoading" {
            let destination = segue.destination as! LoadingViewController
            destination.selectedHobbies = collectSelectedHobbies()
        }
    }
}
