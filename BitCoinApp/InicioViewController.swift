//
//  InicioViewController.swift
//  BitCoinApp
//
//  Created by Ronald Murillo Solano on 27/4/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation
import UIKit

class InicioViewController: UIViewController {
    
    @IBOutlet weak var txtDinero: UITextField!
    
    @IBOutlet weak var txtMisBitCoins: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtMisBitCoins.text = String(variables.BitCoinsAcumulados)
    }
    
    @IBAction func btnComprar(_ sender: UIButton) {
        
        variables.dinero = txtDinero.text!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        txtMisBitCoins.text = String(variables.BitCoinsAcumulados)
        txtDinero.text = "0"
    }
    
    
    
}
