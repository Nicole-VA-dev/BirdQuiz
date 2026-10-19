//
//  StartViewController.swift
//  Bird Quiz
//
//  Created by Nicole Vera on 8/17/26.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBAction func takeQuizPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toQuiz", sender: self)
    }
    @IBOutlet weak var startBirdImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startBirdImageView.image = UIImage(named: "Penguin")
    }

}

