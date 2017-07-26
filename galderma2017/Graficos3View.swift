//
//  Graficos3View.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 28-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit

class Graficos3View: UIView {
    private var aux: Float = 0.0
    
    var Valor: Float {
        
        set (newValor){
            if (newValor > 248) {
                aux = 247
            } else if (newValor < 0) {
                aux = 0
            }else {
                aux = newValor
            }
            setNeedsDisplay()
        }
        get {
            return aux
        }
        
    }
    
    
    override func draw(_ rect: CGRect) {
        porcentaje(x: Valor)
        self.backgroundColor = UIColor.red
        
    }
  
    func porcentaje(x:Float){
        let ftargetFrame = CGRect(x: 0, y: 0, width: 786, height: 378)
        
        let h1 = CGFloat(x)
        let h2 = CGFloat(x)
        
        //  Graficos.drawCanvas1(frame: ftargetFrame, resizing: .aspectFit, valueH1G1: h1, valueH2G1: h2)
        
        Graficos.drawCanvas3( frame:ftargetFrame, resizing:  .aspectFit, valueH1G3: h1, valueH2G3:h2)
        
        
    }
    
    
    
}
