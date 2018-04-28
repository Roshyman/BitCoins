//
//  DetalleViewController.swift
//  BitCoinApp
//
//  Created by Ronald Murillo Solano on 27/4/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation
import UIKit

class DetalleViewController: UIViewController{
    
    let precioBitCoin : Int = 10
    
    @IBOutlet weak var lblCoin: UILabel!
    
    @IBOutlet weak var lblCambio: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var dineroRecibido : Int = 0
        var misBitCoins : Int = 0
        dineroRecibido = Int(variables.dinero)!
        misBitCoins = comprarBitCoins(dinero: dineroRecibido)
        
        lblCoin.text = String(misBitCoins)
        variables.BitCoinsAcumulados = variables.BitCoinsAcumulados + misBitCoins

    }
    
    
    func comprarBitCoins(dinero: Int) -> Int{
        var bitCoinComprados : Int = 0
        var cambio : String = ""
        var dineroGastado : Int = 0
        
        if (precioBitCoin > dinero){
            bitCoinComprados = 0
            dineroGastado = 0
            cambio = String (calcularCambio(dineroUsado: dineroGastado, dineroTotal: dinero))
            lblCambio.text = cambio
            return 0
        }
        else{
            bitCoinComprados = dinero / precioBitCoin
            dineroGastado = bitCoinComprados * precioBitCoin
            cambio = String (calcularCambio(dineroUsado: dineroGastado, dineroTotal: dinero))
            lblCambio.text = cambio
            return bitCoinComprados
        }
    }
    
    
    func calcularCambio(dineroUsado: Int, dineroTotal: Int) -> Int{
        var cambio : Int = 0
        cambio = dineroTotal - dineroUsado
        return cambio
        
    }
    
    
    
    
}
