//
//  ViewController.swift
//  GrebenkinAJ_HW2.1.2
//
//  Created by Artem Grebenkin on 9/18/19.
//  Copyright © 2019 Artem Grebenkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redVC: UIView!
    @IBOutlet weak var yellowVC: UIView!
    @IBOutlet weak var greenVC: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    var views = [UIView]()
    var indexOfcurrentView = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redVC.backgroundColor = .red
        yellowVC.backgroundColor = .yellow
        greenVC.backgroundColor = .green
        
        views = [redVC, yellowVC, greenVC]
        
        startButton.layer.cornerRadius = startButton.frame.height / 5
        
        for vc in views {
            vc.layer.cornerRadius = redVC.frame.height / 2
        }
        turnLightOff()
  
    }
    

    @IBAction func startButtonPressed() {
        
        turnLightOff()
        if self.indexOfcurrentView == views.count {self.indexOfcurrentView = 0}
        views[self.indexOfcurrentView].alpha = 1
        indexOfcurrentView += 1
        
        guard self.startButton.title(for: .normal) == "START" else {return}
        self.startButton.setTitle("NEXT", for: .normal)
    }
    
    
    func turnLightOff() {
        for vc in self.views {
            vc.alpha = 0.3
        }
    }
    
}

