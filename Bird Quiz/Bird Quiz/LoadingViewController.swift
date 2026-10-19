//
//  LoadingViewController.swift
//  Bird Quiz
//
//  Created by Nicole Vera on 8/17/26.
//

import UIKit

class LoadingViewController: UIViewController {
    var selectedHobbies: [String] = []
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        progressView.progress = 0.0
        Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true) { timer in
            self.progressView.progress += 0.01
            self.progressLabel.text = "\(Int(self.progressView.progress * 100))%"
            if self.progressView.progress >= 1.0 {
                timer.invalidate()
                self.performSegue(withIdentifier: "toResults", sender: self)
            }
         }
                
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResults" {
            let destination = segue.destination as! ResultsViewController
            destination.selectedHobbies = selectedHobbies
        }
    }
}
