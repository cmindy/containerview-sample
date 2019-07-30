//
//  ViewController.swift
//  ContainerView
//
//  Created by CHOMINJI on 29/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

//class BaseViewController: UIViewController {
//
//    var scoreVC:ScoreViewController?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let baseTabBarVC = segue.destination as? UITabBarController {
//            if let firstTab = baseTabBarVC.viewControllers?.first as? StartupQuizViewController {
//                firstTab.delegate = self
//            }
//            if let secondTab = baseTabBarVC.viewControllers?[1] as? ScienceQuizViewController {
//                secondTab.delegate = self
//            }
//        }
//        if let vc = segue.destination as? ScoreViewController {
//            scoreVC = vc
//        }
//    }
//}

class BaseViewController: UIViewController {
    fileprivate var scoreVC: ScoreViewController?
    fileprivate var firstTab: StartupQuizViewController?
    fileprivate var secondTab: ScienceQuizViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // If not using segues, use this
        setupViews()
        
    }
    
    fileprivate func setupViews() {
        guard let scoreVC = children.first as? ScoreViewController,
            let tabVC = children.last as? UITabBarController,
            let firstTab = tabVC.viewControllers?.first as? StartupQuizViewController,
            let secondTab = tabVC.viewControllers?.last as? ScienceQuizViewController
            else {
            print("Something went wrong and you do not have your view controllers defined properly")
            return
        }
        self.scoreVC = scoreVC
        self.firstTab = firstTab
        self.firstTab?.delegate = self
        self.secondTab = secondTab
        self.secondTab?.delegate = self
    }
}

extension BaseViewController: ScoreDelegate {
    func addOneToScore() {
        print("score to be updated")
        scoreVC?.updateScore()
    }
}
