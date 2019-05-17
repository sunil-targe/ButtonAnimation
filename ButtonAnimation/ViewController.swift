//
//  ViewController.swift
//  ButtonAnimation
//
//  Created by Sunil Targe on 2019/5/17.
//  Copyright © 2019 suniltarge. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let twitterButton = AnimatedButton()
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
        /// Set an animation on the button.
        twitterButton.animation = Animation.named("TwitterHeartButton")
        /// Turn off clips to bounds, as the animation goes outside of the bounds.
        twitterButton.clipsToBounds = false
        /// Set animation play ranges for touch states
        twitterButton.setPlayRange(fromMarker: "touchDownStart", toMarker: "touchDownEnd", event: .touchDown)
        twitterButton.setPlayRange(fromMarker: "touchDownEnd", toMarker: "touchUpCancel", event: .touchUpOutside)
        twitterButton.setPlayRange(fromMarker: "touchDownEnd", toMarker: "touchUpEnd", event: .touchUpInside)
        view.addSubview(twitterButton)
        
        twitterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        twitterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

