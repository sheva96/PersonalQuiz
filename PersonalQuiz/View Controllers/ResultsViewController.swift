//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 26.10.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var definitionTextLabel: UILabel!
    
    var answersChoosen: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showResult()
        navigationItem.hidesBackButton = true
    }
}

// MARK: - Show Result
extension ResultsViewController {
    private func showResult() {
        
        var animal: AnimalType {
            var animals: [AnimalType] = []
            
            answersChoosen.forEach { (animal) in
                if animals.contains(animal.type) {
                    animals.insert(animal.type, at: 0)
                } else {
                    animals.append(animal.type)
                }
            }
            return animals[0]
        }
        
        animalTypeLabel.text = "Вы - \(animal.rawValue)"
        definitionTextLabel.text = animal.definition
    }
}
