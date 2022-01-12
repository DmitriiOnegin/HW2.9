//
//  ViewController.swift
//  HW2.9
//
//  Created by Dmitrii Onegin on 12.01.2022.
//

import Spring

class ViewController: UIViewController {
    
   
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var runButtonLabel: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //runButtonLabel.titleLabel?.text =
    }

    @IBAction func runAnimationButton() {
        animationView.animation = "pop"
        animationView.curve = "easeInOut"
        animationView.force = 2
        animationView.duration = 1
        animationView.delay = 0.3
        
        animationView.animate()
        
        runButtonLabel.setTitle("pop", for: .normal)
        
    }
    
    
    
    
}

