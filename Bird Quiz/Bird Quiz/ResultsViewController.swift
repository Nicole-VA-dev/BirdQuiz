//
//  ResultsViewController.swift
//  Bird Quiz
//
//  Created by Nicole Vera on 8/17/26.
//

import UIKit

class ResultsViewController: UIViewController {
    var selectedHobbies: [String] = []
    
    
    @IBOutlet weak var birdImageView: UIImageView!
    @IBOutlet weak var resultBirdImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    
    @IBAction func returnToStartPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toStart", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let bird = determineBird()
        birdImageView.image = UIImage(named: bird)
        resultLabel.text = "You are a \(bird)!"
        resultBirdImageView.image = UIImage(named: bird)
        
    }
    
    
    func determineBird() -> String {
        if selectedHobbies.contains("Swimming") { return "Penguin" }
        if selectedHobbies.contains("Hiking") { return "Eagle" }
        if selectedHobbies.contains("Traveling") { return "Swallow" }
        if selectedHobbies.contains("Playing Sports") { return "Falcon" }
        return "Sparrow"
    }
    
    
    
    
    
    
    
}
