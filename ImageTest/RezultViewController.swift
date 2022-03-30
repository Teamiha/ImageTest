//
//  RezultViewController.swift
//  ImageTest
//
//  Created by Михаил Светлов on 30.03.2022.
//

import UIKit

class RezultViewController: UIViewController {

    
    @IBOutlet weak var rezultImage: UIImageView!
    
    @IBOutlet weak var labelImage: UILabel!
    
    var dex: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //rezultImage.image = UIImage(named: dex)
        labelImage.text = dex
    }
    

  

}
