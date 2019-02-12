//
//  ViewController.swift
//  Loteria
//
//  Created by Gabriel Guerrero on 2/12/19.
//  Copyright © 2019 Gabriel Guerrero. All rights reserved.
//

import UIKit

enum GameType : String {
    case megasena = "Mega-Sena"
    case quina = "Quina"
}

infix operator >-<
func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

class ViewController: UIViewController {

    //MARK: - @IBOutlet's
    @IBOutlet weak var gameTypeLabel: UILabel!
    @IBOutlet weak var gameTypeSegmentedControl: UISegmentedControl!
    @IBOutlet var balls: [UIButton]!
    
    //MARK: - @IBAction's
    @IBAction func generateGameClick() {
        switch gameTypeSegmentedControl.selectedSegmentIndex {
        case 0:
            showNumbers(for: .megasena)
        default:
            showNumbers(for: .quina)
        }
    }
    
    //MARK: - Private Method's
    private func showNumbers(for type: GameType) {
        self.gameTypeLabel.text = type.rawValue
        var game : [Int] = []
        
        switch type {
            case .megasena:
                game = 6>-<60
                balls.last?.isHidden = false
            case .quina:
                game = 5>-<80
                balls.last?.isHidden = true
        }
        
        for (index, game) in game.enumerated() {
            balls[index].setTitle("\(game)", for: .normal)
        }
    }
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showNumbers(for: .megasena)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

