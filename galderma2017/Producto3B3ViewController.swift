//
//  Producto3B3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 26-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3B3ViewController: UIViewController {

    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!

    
    @IBOutlet var logoGrafico: SpringImageView!
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet var Graficos: GraficosView!
    var gameTimer: Timer!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Graficos.backgroundColor = UIColor.clear
        self.Graficos.Valor = 0
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.5
        item1.animate()
        
        logoGrafico.opacity      = 0.0
        logoGrafico.animation    = "animalPop"
        logoGrafico.curve        = "easeIn"
        logoGrafico.delay        = 0.4
        logoGrafico.duration     = 0.5
        logoGrafico.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "slideUp"
        footer.curve        = "easeIn"
        footer.delay        = 1.4
        footer.duration     = 0.5
        footer.animate()
 
        
        delay(delay: 2.0){
            self.btnExit.isHidden = false
        }
        delay(delay:0.4){
            
            self.gameTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.runTimedCode), userInfo: nil, repeats: true)
        }
        delay(delay:5.0){
            
            self.gameTimer.invalidate()
        }
        
        
    }
    
    func runTimedCode() {
        self.Graficos.backgroundColor = UIColor.clear
        self.Graficos.Valor = self.Graficos.Valor + 10
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
