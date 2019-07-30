//
//  ScoreViewController.swift
//  ContainerView
//
//  Created by CHOMINJI on 29/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateScore() {
        score = score + 1
        scoreLabel.text = String(score)
    }
}
