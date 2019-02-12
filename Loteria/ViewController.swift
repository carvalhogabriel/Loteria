//
//  ViewController.swift
//  Loteria
//
//  Created by Gabriel Guerrero on 2/12/19.
//  Copyright © 2019 Gabriel Guerrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: @IBOutlet's
    
    @IBOutlet weak var gameTypeLabel: UILabel!
    @IBOutlet weak var gameTypeSegmentedControl: UISegmentedControl!
    @IBOutlet var balls: [UIButton]!
    
    //MARK: @IBAction's
    @IBAction func generateGameClick() {
    }
    
    //MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

