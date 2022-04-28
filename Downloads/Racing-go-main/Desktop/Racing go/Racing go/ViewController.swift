//
//  ViewController.swift
//  Racing go
//
//  Created by Гость on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pcCar: UIImageView!
    @IBOutlet weak var userCar : UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var semaforLabel: UILabel!
    @IBOutlet weak var lineFinish: UIImageView!
    
    var stateSemafor: Int = 1
    var timerGame: Timer!
    var timerPC : Timer!
    
    @objc func pcDrive () {
        
        if stateSemafor == 2 {
            pcCar.center.x += 10
        }
        
        if pcCar.center.x > lineFinish.center.x {
            resultLabel.isHighlighted = false
            resultLabel.text = "YOU LOSE"
            resultLabel.textColor = .red
            timerPC.invalidate()
            timerGame.invalidate()
        }
    }
    @objc func intervalTimer() {
    stateSemafor += stateSemafor
        if stateSemafor > 2 {
        
        stateSemafor = 1
        }
        switch stateSemafor {
        case 1:
            semaforLabel.text = "STOP"
            semaforLabel.textColor = .red
        case 2:
            semaforLabel.text = "DRIVE"
            semaforLabel.textColor = .green
        default:
            break
        }
    }
    @IBAction func driveGame(_ sender: UIButton) }

            
        }
    }
    

