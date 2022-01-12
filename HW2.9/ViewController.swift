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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        
    }
    
    
    
}

