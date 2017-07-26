//
//  CetaphilSlide1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 24-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class CetaphilSlide1ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var burbujaNino: SpringImageView!
    @IBOutlet var burbujaSmile: SpringImageView!
    @IBOutlet var burbujaMano: SpringImageView!
    @IBOutlet var burbujaMama: SpringImageView!
    
    @IBOutlet var producto: SpringImageView!
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet var burbujaItem1: SpringImageView!
    @IBOutlet var burbujaItem2: SpringImageView!
    @IBOutlet var burbujaItem3: SpringImageView!
    @IBOutlet var burbujaItem4: SpringImageView!
    @IBOutlet var burbujaItem5: SpringImageView!
    @IBOutlet var burbujaItem6: SpringImageView!
    @IBOutlet var burbujaItem7: SpringImageView!
    @IBOutlet var burbujaItem8: SpringImageView!
    @IBOutlet var burbujaItem9: SpringImageView!
    @IBOutlet var burbujaItem10: SpringImageView!
    @IBOutlet var burbujaItem11: SpringImageView!
    @IBOutlet var burbujaItem12: SpringImageView!
    @IBOutlet var burbujaItem13: SpringImageView!
    @IBOutlet var burbujaItem14: SpringImageView!
    @IBOutlet var burbujaItem15: SpringImageView!
    @IBOutlet var burbujaItem16: SpringImageView!
    
    
    @IBOutlet var Left: UISwipeGestureRecognizer!


    var pos = Array(repeating: CGPoint(x:0.0,y:0.0), count: 16)
  
    // threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

    var tiempo = 2.5, offset = 1.0  //tiempo burbuja
    
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
      
        pos[0] = burbujaItem1.frame.origin
        pos[1] = burbujaItem2.frame.origin
        pos[2] = burbujaItem3.frame.origin
        pos[3] = burbujaItem4.frame.origin
        pos[4] = burbujaItem5.frame.origin
        pos[5] = burbujaItem6.frame.origin
        pos[6] = burbujaItem7.frame.origin
        pos[7] = burbujaItem8.frame.origin
        pos[8] = burbujaItem9.frame.origin
        pos[9] =  burbujaItem10.frame.origin
        pos[10] = burbujaItem11.frame.origin
        pos[11] = burbujaItem12.frame.origin
        pos[12] = burbujaItem13.frame.origin
        pos[13] = burbujaItem14.frame.origin
        pos[14] = burbujaItem15.frame.origin
        pos[15] = burbujaItem16.frame.origin
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        burbuja()
        
    }
    
    
    func slide(){
        self.tiempo = self.tiempo - 1.0
        burbujaNino.opacity      = 0.0
        burbujaNino.animation    = "animalPop"
        burbujaNino.curve        = "easeIn"
        burbujaNino.delay        = CGFloat(self.tiempo - 0.1)
        burbujaNino.duration     = 0.5
        burbujaNino.animate()
        
        burbujaMano.opacity      = 0.0
        burbujaMano.animation    = "animalPop"
        burbujaMano.curve        = "easeIn"
        burbujaMano.delay        = CGFloat(self.tiempo + 0.4)
        burbujaMano.duration     = 0.5
        burbujaMano.animate()
        
        burbujaSmile.opacity      = 0.0
        burbujaSmile.animation    = "animalPop"
        burbujaSmile.curve        = "easeIn"
        burbujaSmile.delay        = CGFloat(self.tiempo + 0.7)
        burbujaSmile.duration     = 0.5
        burbujaSmile.animate()

        
        burbujaMama.opacity      = 0.0
        burbujaMama.animation    = "animalPop"
        burbujaMama.curve        = "easeIn"
        burbujaMama.delay        = CGFloat(self.tiempo + 1.0)
        burbujaMama.duration     = 0.5
        burbujaMama.animate()
        
        producto.opacity      = 0.0
        producto.animation    = "squeezeRight"
        producto.curve        = "easeIn"
        producto.delay        = CGFloat(self.tiempo + 1.3)
        producto.duration     = 0.5
        producto.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "fadeIn"
        footer.curve        = "easeIn"
        footer.delay        = CGFloat(self.tiempo + 1.5)
        footer.duration     = 0.5
        footer.animate()
        
        
        view.removeGestureRecognizer(Left)

        delay(delay: self.tiempo + 1.5 + 0.5){
            self.view.addGestureRecognizer(self.Left)
        }
    }
    
    func burbuja(){
        var puntoFinalX : CGFloat = 0.0, puntoFinalY : CGFloat = 0.0, puntoInicialX : CGFloat = 0.0, puntoInicialY : CGFloat = 0.0, puntoControl1X : CGFloat = 0.0, puntoControl1Y : CGFloat = 0.0, puntoControl2X : CGFloat = 0.0, puntoControl2Y : CGFloat = 0.0
        

        puntoInicialX = pos[0].x
        puntoInicialY = pos[0].y + 800
        puntoFinalX = pos[0].x
        puntoFinalY = pos[0].y - 1200
  
        puntoControl1X = 600
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = offset + 2.5

        var path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        var anim = CAKeyframeAnimation(keyPath: "position")
        
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem1.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[1].x
        puntoInicialY = pos[1].y+800
        puntoFinalX = pos[1].x
        puntoFinalY = pos[1].y - 1200
        
        puntoControl1X = 600
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = offset +  1.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
      
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem2.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[2].x
        puntoInicialY = pos[2].y+800
        puntoFinalX = pos[2].x
        puntoFinalY = pos[2].y - 1200
        
        puntoControl1X = 600
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = offset +  2.0
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem3.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[3].x
        puntoInicialY = pos[3].y+800
        puntoFinalX = pos[3].x
        puntoFinalY = pos[3].y - 1200
        
        puntoControl1X = 400
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = offset +  1.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem4.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[4].x
        puntoInicialY = pos[4].y+800
        puntoFinalX = pos[4].x
        puntoFinalY = pos[4].y - 1200
        
        puntoControl1X = 200
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = offset +  2.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem5.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[5].x
        puntoInicialY = pos[5].y+800
        puntoFinalX = pos[5].x
        puntoFinalY = pos[5].y - 1200
        
        puntoControl1X = 600
        puntoControl1Y = 500
        
        puntoControl2X = 800
        puntoControl2Y = 700
        
        tiempo = offset +  1.8
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem6.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[6].x
        puntoInicialY = pos[6].y+800
        puntoFinalX = pos[6].x
        puntoFinalY = pos[6].y - 1200
        
        puntoControl1X = 500 - 300
        puntoControl1Y = 300
        
        puntoControl2X = 800 - 300
        puntoControl2Y = 600
        
        tiempo = offset +  2.0
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem7.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[7].x
        puntoInicialY = pos[7].y+800
        puntoFinalX = pos[7].x
        puntoFinalY = pos[7].y - 1200
        
        puntoControl1X = 600 - 200
        puntoControl1Y = 300
        
        puntoControl2X = 800  - 200
        puntoControl2Y = 600
        
        tiempo = offset +  1.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem8.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[8].x
        puntoInicialY = pos[8].y+800
        puntoFinalX = pos[8].x
        puntoFinalY = pos[8].y - 1200
        
        puntoControl1X = 600 - 350
        puntoControl1Y = 300
        
        puntoControl2X = 800 - 350
        puntoControl2Y = 600
        
        tiempo = offset +  2.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem9.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[9].x
        puntoInicialY = pos[9].y+1300
        puntoFinalX = pos[9].x
        puntoFinalY = pos[9].y - 1200
        
        puntoControl1X = 600 - 300
        puntoControl1Y = 300 - 50
        
        puntoControl2X = 800 - 300
        puntoControl2Y = 600 - 100
        
        tiempo = offset +  3.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem10.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[10].x
        puntoInicialY = pos[10].y+800
        puntoFinalX = pos[10].x
        puntoFinalY = pos[10].y - 1200
        
        puntoControl1X = 600 - 400
        puntoControl1Y = 300 - 150
        
        puntoControl2X = 800 - 400
        puntoControl2Y = 600 - 150
        
        tiempo = offset +  1.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem11.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[11].x
        puntoInicialY = pos[11].y+800
        puntoFinalX = pos[11].x
        puntoFinalY = pos[11].y - 1200
        
        puntoControl1X = 600
        puntoControl1Y = 300
        
        puntoControl2X = 800
        puntoControl2Y = 600
        
        tiempo = offset +  1.0
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem12.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[12].x
        puntoInicialY = pos[12].y+800
        puntoFinalX = pos[12].x
        puntoFinalY = pos[12].y - 1200
        
        puntoControl1X = 600 - 200
        puntoControl1Y = 300
        
        puntoControl2X = 800 - 200
        puntoControl2Y = 600
        
        tiempo = offset +  2.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem13.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[13].x
        puntoInicialY = pos[13].y+800
        puntoFinalX = pos[13].x
        puntoFinalY = pos[13].y - 1200
        
        puntoControl1X = 600 - 350
        puntoControl1Y = 300
        
        puntoControl2X = 800 - 350
        puntoControl2Y = 600
        
        tiempo = offset +  2.2
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem14.layer.add(anim, forKey: "animate position along path")
        
        puntoInicialX = pos[14].x
        puntoInicialY = pos[14].y+800
        puntoFinalX = pos[14].x
        puntoFinalY = pos[14].y - 1200
        
        puntoControl1X = 600 - 300
        puntoControl1Y = 300
        
        puntoControl2X = 800 - 300
        puntoControl2Y = 600
        
        tiempo = offset +  1.5
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: puntoInicialX,y: puntoInicialY))
        path.addCurve(to: CGPoint(x: puntoFinalX,y: puntoFinalY) , controlPoint1:  CGPoint(x: puntoControl1X, y: puntoControl1Y), controlPoint2: CGPoint(x: puntoControl2X, y: puntoControl2Y) )
        
        
        anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.cgPath
        
        anim.rotationMode = kCAAnimationRotateAutoReverse
        anim.repeatCount = Float.infinity
        anim.duration = tiempo
        
        burbujaItem15.layer.add(anim, forKey: "animate position along path")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         if segue.identifier == "play" {
         let nextScene =  segue.destinationViewController as! DaylongSun00ViewController
         // Pass the selected object to the new view controller.
         nextScene.video = "play"
         }
         */
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

