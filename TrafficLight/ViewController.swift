//
//  ViewController.swift
//  TrafficLight
//
//  Created by Иван Дрожжин on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightLabel: UIView!
    @IBOutlet weak var yellowLightLabel: UIView!
    @IBOutlet weak var greenLightLabel: UIView!
    
    @IBOutlet var lightLabels: [UIView]!
    @IBOutlet weak var actionButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightLabels.forEach {
            $0.layer.cornerRadius = $0.frame.height / 4
            $0.alpha = 0.3
        }
        
        actionButton.layer.cornerRadius = 10
        actionButton.configuration?.contentInsets = NSDirectionalEdgeInsets(
            top: 5,
            leading: 10,
            bottom: 5,
            trailing: 10
        )
        
        
    }

    @IBAction func actionButtonTapped(_ sender: UIButton) {
        if counter == 0 {
            redLightLabel.alpha = 1
            actionButton.setTitle("Next", for: .normal)
            counter += 1
            return
        }
        
        lightLabels.forEach { $0.alpha = 0.3 }
        lightLabels[counter % 3].alpha = 1
        counter += 1
    }
    
}

