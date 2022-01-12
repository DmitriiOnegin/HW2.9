//
//  ViewController.swift
//  HW2.9
//
//  Created by Dmitrii Onegin on 12.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    var numberAnimation = 0
   
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var runButtonLabel: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRundomAnimation()
    }

    @IBAction func runAnimationButton() {
        getRundomAnimation()
        
    }
}

extension ViewController {
    
    private func getRundomAnimation() {
        let animations = DataManager.shared.animations
        let curve = DataManager.shared.curve
        var numberNextAnimation: Int {
            numberAnimation + 1 == animations.count ? 0 : numberAnimation + 1
        }
        
        if numberAnimation == animations.count {
            numberAnimation = 0
        }
        
        animationView.animation = animations[numberAnimation]
        animationView.curve = curve.randomElement() ?? ""
        animationView.force = CGFloat(Double.random(in: 0.1 ... 1.5))
        animationView.duration = CGFloat(Double.random(in: 0.1 ... 1.5))
        animationView.delay = CGFloat(Double.random(in: 0.1 ... 0.5))
        
        animationView.animate()
        
        setViewLabel(presetLabel: animationView.animation,
                     curveLabel: animationView.curve,
                     forceLabel: animationView.force,
                     durationLabel: animationView.duration,
                     delayLabel:  animationView.delay,
                     runButtonLabel: animations[numberNextAnimation])

        numberAnimation += 1
        
    }
    
    private func setViewLabel(presetLabel: String, curveLabel: String, forceLabel: CGFloat, durationLabel: CGFloat, delayLabel: CGFloat, runButtonLabel: String) {
        let force = Double(forceLabel)
        let duration = Double(durationLabel)
        let delay = Double(delayLabel)
        
        self.presetLabel.text = "preset: " + presetLabel
        self.curveLabel.text = "curve: " + curveLabel
        self.forceLabel.text = "force: " + String(format: "%.2f", force)
        self.durationLabel.text = "duration: " + String(format: "%.2f", duration)
        self.delayLabel.text = "delay: " + String(format: "%.2f", delay)
        self.runButtonLabel.setTitle("Run Animation: \(runButtonLabel)", for: .normal)
    }

}
