//
//  ScienceQuizViewController.swift
//  ContainerView
//
//  Created by CHOMINJI on 29/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class ScienceQuizViewController: UIViewController {

    weak var delegate: ScoreDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func correctAnswer(_ sender: Any) {
        delegate?.addOneToScore()
    }
}
