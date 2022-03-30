//
//  ViewController.swift
//  ImageTest
//
//  Created by Михаил Светлов on 28.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewUp: UIImageView!
    
    @IBOutlet weak var imageViewDown: UIImageView!
    
    var image = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"),
                 UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"),
                 UIImage(named: "7"), UIImage(named: "8"), UIImage(named: "9"),
                 UIImage(named: "10")
                ]
    
    var testImage: [String: String] =
                   ["1": "The Machinist", "2": "Mortal Engines",
                    "3": "The Sorcerer's Apprentice", "4": "Tenet",
                    "5": "Kick Ass", "6": "Peacemaker",
                    "7": "Vikings", "8": "Brightburn",
                    "9": "Reacher", "10": "Disenchantment",
                   
                   ]
    
    
    
    var imageSelector = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewUp.image = UIImage(named: testImage["1"] ?? "Error")
        
        
        
        
        
        
        
        let tapGestureUp = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTappedUp(gesture:)))
        let tapGestureDown = UITapGestureRecognizer(target: self, action: #selector(ViewController.imageTappedDown(gesture:)))
        
        imageViewUp.addGestureRecognizer(tapGestureUp)
        imageViewUp.isUserInteractionEnabled = true
        imageViewDown.addGestureRecognizer(tapGestureDown)
        imageViewDown.isUserInteractionEnabled = true
    }
    
    @objc func imageTappedUp(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            if imageSelector <= image.count - 1 {
                for _ in image {
                    imageViewDown.image = image[imageSelector]
                    imageSelector += 1
                    break
                }
            } else {
                print("Stop")
            }
        }
    }
    
    @objc func imageTappedDown(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            if imageSelector <= image.count - 1 {
                for _ in image {
                    imageViewUp.image = image[imageSelector]
                    imageSelector += 1
                    break
                }
            } else {
                print("Stop")
            }
        }
    }
    
}


