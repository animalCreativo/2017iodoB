//
//  PediatricoCViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class PediatricoCViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    var a11=0
    var a12=0
    var a21=0
    var a22=0
    var a31=0
    var a32=0
    var a41=0
    var a42=0
    var a51=0
    var a52=0
    
    var b=0
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet weak var imgFranja1: SpringImageView!
    @IBOutlet weak var imgFranja2: SpringImageView!
    @IBOutlet weak var imgFranja3: SpringImageView!
    @IBOutlet weak var imgFranja4: SpringImageView!
    @IBOutlet weak var imgFranja5: SpringImageView!
    
    @IBOutlet weak var imgCelda11: SpringImageView!
    @IBOutlet weak var imgCelda12: SpringImageView!
    @IBOutlet weak var imgCelda21: SpringImageView!
    @IBOutlet weak var imgCelda22: SpringImageView!
    @IBOutlet weak var imgCelda31: SpringImageView!
    @IBOutlet weak var imgCelda32: SpringImageView!
    @IBOutlet weak var imgCelda41: SpringImageView!
    @IBOutlet weak var imgCelda42: SpringImageView!
    @IBOutlet weak var imgCelda51: SpringImageView!
    @IBOutlet weak var imgCelda52: SpringImageView!
    
    @IBOutlet weak var imgBoton: SpringImageView!
    
    
    @IBAction func btn11(sender: AnyObject) {
        
        
        if(a11==0 && a12==0){
            imgCelda11.image = UIImage(named: "gameicon1")
            a11=1
        }else if(a11==0 && a12==1){
            imgCelda11.image = UIImage(named: "gameicon1")
            a11=1
            imgCelda12.image = UIImage(named: "gameicon2")
            a12=0
        }
        chequear()
    }
    
    @IBAction func btn12(sender: AnyObject) {
        
        if(a11==0 && a12==0){
            imgCelda12.image = UIImage(named: "gameicon7")
            a12=1
        }else if(a11==1 && a12==0){
            imgCelda11.image = UIImage(named: "gameicon5")
            a11=0
            imgCelda12.image = UIImage(named: "gameicon7")
            a12=1
        }
        chequear()
        
        
    }
    
    @IBAction func btn21(sender: AnyObject) {
        if(a21==0 && a22==0){
            imgCelda21.image = UIImage(named: "gameicon1")
            a21=1
        }else if(a21==0 && a22==1){
            imgCelda21.image = UIImage(named: "gameicon1")
            a21=1
            imgCelda22.image = UIImage(named: "gameicon2")
            a22=0
        }
        chequear()
    }
    
    
    @IBAction func btn22(sender: AnyObject) {
        if(a21==0 && a22==0){
            imgCelda22.image = UIImage(named: "gameicon7")
            a22=1
        }else if(a21==1 && a22==0){
            imgCelda21.image = UIImage(named: "gameicon5")
            a21=0
            imgCelda22.image = UIImage(named: "gameicon7")
            a22=1
        }
        chequear()
    }
    
    @IBAction func btn31(sender: AnyObject) {
        if(a31==0 && a32==0){
            imgCelda31.image = UIImage(named: "gameicon1")
            a31=1
        }else if(a31==0 && a32==1){
            imgCelda31.image = UIImage(named: "gameicon1")
            a31=1
            imgCelda32.image = UIImage(named: "gameicon2")
            a32=0
        }
        chequear()
        
    }
    
    @IBAction func btn32(sender: AnyObject) {
        if(a31==0 && a32==0){
            imgCelda32.image = UIImage(named: "gameicon7")
            a32=1
        }else if(a31==1 && a32==0){
            imgCelda31.image = UIImage(named: "gameicon5")
            a31=0
            imgCelda32.image = UIImage(named: "gameicon7")
            a32=1
        }
        chequear()
    }
    
    @IBAction func btn41(sender: AnyObject) {
        if(a41==0 && a42==0){
            imgCelda41.image = UIImage(named: "gameicon1")
            a41=1
        }else if(a41==0 && a42==1){
            imgCelda41.image = UIImage(named: "gameicon1")
            a41=1
            imgCelda42.image = UIImage(named: "gameicon2")
            a42=0
        }
        chequear()
    }
    
    @IBAction func btn42(sender: AnyObject) {
        if(a41==0 && a42==0){
            imgCelda42.image = UIImage(named: "gameicon7")
            a42=1
        }else if(a41==1 && a42==0){
            imgCelda41.image = UIImage(named: "gameicon5")
            a41=0
            imgCelda42.image = UIImage(named: "gameicon7")
            a42=1
        }
        chequear()
    }
    
    
    @IBAction func btn51(sender: AnyObject) {
        if(a51==0 && a52==0){
            imgCelda51.image = UIImage(named: "gameicon1")
            a51=1
        }else if(a51==0 && a52==1){
            imgCelda51.image = UIImage(named: "gameicon1")
            a51=1
            imgCelda52.image = UIImage(named: "gameicon2")
            a52=0
        }
        chequear()
        
    }
    
    @IBAction func btn52(sender: AnyObject) {
        
        if(a51==0 && a52==0){
            imgCelda52.image = UIImage(named: "gameicon7")
            a52=1
        }else if(a51==1 && a52==0){
            imgCelda51.image = UIImage(named: "gameicon5")
            a51=0
            imgCelda52.image = UIImage(named: "gameicon7")
            a52=1
        }
        chequear()
    }
    
    
    @IBAction func btnGo(sender: AnyObject) {
        if(b==1){
            revisar()
        }else if(b==2){
            inicial()
        }
        
        
        
    }
    
    @IBOutlet weak var imgTitulo: UIImageView!
    
    @IBOutlet weak var imgTabla: UIImageView!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn31: UIButton!
    @IBOutlet weak var btn32: UIButton!
    @IBOutlet weak var btn41: UIButton!
    @IBOutlet weak var btn42: UIButton!
    @IBOutlet weak var btn51: UIButton!
    @IBOutlet weak var btn52: UIButton!
    
    @IBOutlet weak var btnGo: UIButton!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        self.inicial()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
         efectosSlide()
        
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func efectosSlide(){
        self.btn1.isHidden = true
        self.btn3.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        imgFranja1.opacity      = 0.0
        imgFranja1.animation    = "fadeIn"
        imgFranja1.curve        = "easeIn"
        imgFranja1.delay        = 0.4
        imgFranja1.duration     = 0.5
        imgFranja1.animate()
        
        imgFranja2.opacity      = 0.0
        imgFranja2.animation    = "fadeIn"
        imgFranja2.curve        = "easeIn"
        imgFranja2.delay        = 0.4
        imgFranja2.duration     = 0.5
        imgFranja2.animate()
        
        imgFranja3.opacity      = 0.0
        imgFranja3.animation    = "fadeIn"
        imgFranja3.curve        = "easeIn"
        imgFranja3.delay        = 0.4
        imgFranja3.duration     = 0.5
        imgFranja3.animate()
        
        imgFranja4.opacity      = 0.0
        imgFranja4.animation    = "fadeIn"
        imgFranja4.curve        = "easeIn"
        imgFranja4.delay        = 0.4
        imgFranja4.duration     = 0.5
        imgFranja4.animate()
        
        imgFranja5.opacity      = 0.0
        imgFranja5.animation    = "fadeIn"
        imgFranja5.curve        = "easeIn"
        imgFranja5.delay        = 0.4
        imgFranja5.duration     = 0.5
        imgFranja5.animate()
        
        imgCelda11.opacity      = 0.0
        imgCelda11.animation    = "fadeIn"
        imgCelda11.curve        = "easeIn"
        imgCelda11.delay        = 0.4
        imgCelda11.duration     = 0.5
        imgCelda11.animate()
        
        imgCelda12.opacity      = 0.0
        imgCelda12.animation    = "fadeIn"
        imgCelda12.curve        = "easeIn"
        imgCelda12.delay        = 0.4
        imgCelda12.duration     = 0.5
        imgCelda12.animate()
        
        imgCelda21.opacity      = 0.0
        imgCelda21.animation    = "fadeIn"
        imgCelda21.curve        = "easeIn"
        imgCelda21.delay        = 0.4
        imgCelda21.duration     = 0.5
        imgCelda21.animate()
        
        imgCelda22.opacity      = 0.0
        imgCelda22.animation    = "fadeIn"
        imgCelda22.curve        = "easeIn"
        imgCelda22.delay        = 0.4
        imgCelda22.duration     = 0.5
        imgCelda22.animate()
        
        imgCelda31.opacity      = 0.0
        imgCelda31.animation    = "fadeIn"
        imgCelda31.curve        = "easeIn"
        imgCelda31.delay        = 0.4
        imgCelda31.duration     = 0.5
        imgCelda31.animate()
        
        imgCelda32.opacity      = 0.0
        imgCelda32.animation    = "fadeIn"
        imgCelda32.curve        = "easeIn"
        imgCelda32.delay        = 0.4
        imgCelda32.duration     = 0.5
        imgCelda32.animate()
        
        imgCelda41.opacity      = 0.0
        imgCelda41.animation    = "fadeIn"
        imgCelda41.curve        = "easeIn"
        imgCelda41.delay        = 0.4
        imgCelda41.duration     = 0.5
        imgCelda41.animate()
        
        imgCelda42.opacity      = 0.0
        imgCelda42.animation    = "fadeIn"
        imgCelda42.curve        = "easeIn"
        imgCelda42.delay        = 0.4
        imgCelda42.duration     = 0.5
        imgCelda42.animate()
        
        imgCelda51.opacity      = 0.0
        imgCelda51.animation    = "fadeIn"
        imgCelda51.curve        = "easeIn"
        imgCelda51.delay        = 0.4
        imgCelda51.duration     = 0.5
        imgCelda51.animate()
        
        imgCelda52.opacity      = 0.0
        imgCelda52.animation    = "fadeIn"
        imgCelda52.curve        = "easeIn"
        imgCelda52.delay        = 0.4
        imgCelda52.duration     = 0.5
        imgCelda52.animate()
        
        imgBoton.opacity      = 0.0
        imgBoton.animation    = "zoomIn"
        imgBoton.curve        = "easeIn"
        imgBoton.delay        = 0.9
        imgBoton.duration     = 0.5
        imgBoton.animate()

         delay(delay:1.5){
            self.btn1.isHidden = false
            self.btn3.isHidden = false
        }

    }
    
    func revisar(){
        
        if (a11==1){
            imgFranja1.image = UIImage(named: "gameFranja1")
            
        }else{
            imgFranja1.image = UIImage(named: "gameFranja2")
            
        }
        if (a21==1){
            imgFranja2.image = UIImage(named: "gameFranja1")
            
        }else{
            imgFranja2.image = UIImage(named: "gameFranja2")
            
        }
        if (a31==1){
            imgFranja3.image = UIImage(named: "gameFranja1")
            
        }else{
            imgFranja3.image = UIImage(named: "gameFranja2")
            
        }
        if (a41==1){
            imgFranja4.image = UIImage(named: "gameFranja1")
            
        }else{
            imgFranja4.image = UIImage(named: "gameFranja2")
        }
        if (a51==1){
            imgFranja5.image = UIImage(named: "gameFranja1")
        }else{
            imgFranja5.image = UIImage(named: "gameFranja2")
        }
        imgFranja1.isHidden=false
        imgFranja2.isHidden=false
        imgFranja3.isHidden=false
        imgFranja4.isHidden=false
        imgFranja5.isHidden=false
        btn11.isHidden=true
        btn12.isHidden=true
        btn21.isHidden=true
        btn22.isHidden=true
        btn31.isHidden=true
        btn32.isHidden=true
        btn41.isHidden=true
        btn42.isHidden=true
        btn51.isHidden=true
        btn52.isHidden=true
        
        
        imgBoton.image = UIImage(named: "gameBtn2")
        b=2
        
    }
    
    func chequear(){
        
        
        if(( a11 == 1 || a12 == 1 ) && (a21 == 1 || a22 == 1) && ( a31 == 1 || a32 == 1) && ( a41 == 1 || a42 == 1) && ( a51 == 1) || a52 == 1){
            
            imgBoton.image = UIImage(named: "gameBtn3")
            b=1
            btnGo.isHidden = false
        }
        
        
    }
    
    
    func inicial(){
        btnGo.isHidden = true
        imgCelda11.image = UIImage(named: "gameicon5")
        imgCelda12.image = UIImage(named: "gameicon2")
        imgCelda21.image = UIImage(named: "gameicon5")
        imgCelda22.image = UIImage(named: "gameicon2")
        imgCelda31.image = UIImage(named: "gameicon5")
        imgCelda32.image = UIImage(named: "gameicon2")
        imgCelda41.image = UIImage(named: "gameicon5")
        imgCelda42.image = UIImage(named: "gameicon2")
        imgCelda51.image = UIImage(named: "gameicon5")
        imgCelda52.image = UIImage(named: "gameicon2")
        
        imgBoton.image = UIImage(named: "gameBtn")
        
        imgFranja1.isHidden = true
        imgFranja2.isHidden = true
        imgFranja3.isHidden = true
        imgFranja4.isHidden = true
        imgFranja5.isHidden = true
        /*
         btn11.hidden=true
         btn12.hidden=true
         btn21.hidden=true
         btn22.hidden=true
         btn31.hidden=true
         btn32.hidden=true
         btn41.hidden=true
         btn42.hidden=true
         btn51.hidden=true
         btn52.hidden=true*/
        
        btn11.isHidden = false
        btn12.isHidden = false
        btn21.isHidden = false
        btn22.isHidden = false
        btn31.isHidden = false
        btn32.isHidden = false
        btn41.isHidden = false
        btn42.isHidden = false
        btn51.isHidden = false
        btn52.isHidden = false
        
        a11=0
        a12=0
        a21=0
        a22=0
        a31=0
        a32=0
        a41=0
        a42=0
        a51=0
        a52=0
        
        b=0
    }
    
    
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier == "dos" {
            let nextScene =  segue.destinationViewController as! Epiduo1ViewController
            // Pass the selected object to the new view controller.
            nextScene.pantalla = "dos"
        }
        
    }
 */
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
