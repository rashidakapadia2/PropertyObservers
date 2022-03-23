//
//  ViewController.swift
//  PropertyObservers
//
//  Created by Neosoft on 23/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    
    var score = 0 {
        didSet {
            lblScore.text = "Score : \(score)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTap()
    }

    func labelTap() {
        let labelTapped = UITapGestureRecognizer(target: self, action: #selector(label(_:)))
        lblScore.isUserInteractionEnabled = true
        lblScore.addGestureRecognizer(labelTapped)
    }
    @objc func label(_ sender: UITapGestureRecognizer) {
        score += 1
    }
}

