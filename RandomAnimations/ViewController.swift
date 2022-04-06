//
//  ViewController.swift
//  RandomAnimations
//
//  Created by Dymitr on 06.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    @IBAction func doItButton(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()

        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        sender.animation = "pop"
        sender.animate()
    }
    
}

