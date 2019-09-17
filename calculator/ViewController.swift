//
//  ViewController.swift
//  calculator
//
//  Created by 岑臣 on 2019/8/20.
//  Copyright © 2019 jack.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var ButtonFour: UIButton!
    
    @IBOutlet weak var ButtonSix: UIButton!
    
    @IBOutlet weak var ButtonTwo: UIButton!
    
    
    @IBOutlet weak var ButtonEqual: UIButton!
    
    
    @IBOutlet weak var ButtonZero: UIButton!
    
    @IBOutlet weak var ButtonSeven: UIButton!
    
    @IBOutlet weak var ButtonSubtract: UIButton!
    
    @IBOutlet weak var ButtonOne: UIButton!
    
    @IBOutlet weak var ButtonEight: UIButton!
    
    
    @IBOutlet weak var ButtonMulti: UIButton!
    
    @IBOutlet weak var ButtonShowNumber: UIButton!
    
    
    @IBOutlet weak var ButtonNativeOrActive: UIButton!
    
    
    @IBOutlet weak var ButtonPoint: UIButton!
    
    
    @IBOutlet weak var ButtonFive: UIButton!
    
    
    @IBOutlet weak var ButtonShowPercentage: UIButton!
    
    
    @IBOutlet weak var ButtonAdd: UIButton!
    
    
    @IBOutlet weak var ButtonNine: UIButton!
    
    
    @IBOutlet weak var ButtonThree: UIButton!
    

    
    @IBOutlet weak var ButtonDivision: UIButton!
    
    
    @IBOutlet weak var ButtonClear: UIButton!
    
    var numberFirst :  Double = 0.0
    var numberSecond : Double = 0.0
    var DivisionMethod : Bool = false
     var MutilMethod : Bool = false
     var SubstractMethod : Bool = false
     var AddMethod : Bool = false
    var result : Double = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.black
        ButtonClear.backgroundColor = UIColor.lightGray
        ButtonClear.layer.cornerRadius = 40
        ButtonNativeOrActive.backgroundColor = UIColor.lightGray
        ButtonNativeOrActive.layer.cornerRadius = 40
        ButtonShowPercentage.backgroundColor = UIColor.lightGray
        ButtonShowPercentage.layer.cornerRadius = 40
        ButtonDivision.backgroundColor = UIColor.orange
        ButtonDivision.layer.cornerRadius = 40
        ButtonSeven.backgroundColor = UIColor.gray
        ButtonSeven.layer.cornerRadius = 40
        ButtonEight.backgroundColor = UIColor.gray
        ButtonEight.layer.cornerRadius = 40
        ButtonNine.backgroundColor = UIColor.gray
        ButtonNine.layer.cornerRadius = 40
        ButtonMulti.backgroundColor = UIColor.orange
        ButtonMulti.layer.cornerRadius = 40
        ButtonFour.backgroundColor = UIColor.gray
        ButtonFour.layer.cornerRadius = 40
        ButtonFive.backgroundColor = UIColor.gray
        ButtonFive.layer.cornerRadius = 40
        ButtonSix.backgroundColor = UIColor.gray
        ButtonSix.layer.cornerRadius = 40
        ButtonSubtract.backgroundColor = UIColor.orange
        ButtonSubtract.layer.cornerRadius = 40
        ButtonOne.backgroundColor = UIColor.gray
        ButtonOne.layer.cornerRadius = 40
        ButtonTwo.backgroundColor = UIColor.gray
        ButtonTwo.layer.cornerRadius = 40
        ButtonThree.backgroundColor = UIColor.gray
        ButtonThree.layer.cornerRadius = 40
        ButtonAdd.backgroundColor = UIColor.orange
        ButtonAdd.layer.cornerRadius = 40
        ButtonZero.backgroundColor = UIColor.lightGray
        ButtonZero.layer.cornerRadius = 35
        ButtonPoint.backgroundColor = UIColor.gray
        ButtonPoint.layer.cornerRadius = 40
        ButtonEqual.backgroundColor = UIColor.orange
        ButtonEqual.layer.cornerRadius = 40
        ButtonOne.addTarget(self, action: Selector(("One:")), for:UIControl.Event.touchUpInside)
           ButtonClear.addTarget(self, action: Selector(("Clear:")), for:UIControl.Event.touchUpInside)
         ButtonTwo.addTarget(self, action: Selector(("Two:")), for:UIControl.Event.touchUpInside)
         ButtonThree.addTarget(self, action: Selector(("Three:")), for:UIControl.Event.touchUpInside)
         ButtonFour.addTarget(self, action: Selector(("Four:")), for:UIControl.Event.touchUpInside)
         ButtonFive.addTarget(self, action: Selector(("Five:")), for:UIControl.Event.touchUpInside)
         ButtonSix.addTarget(self, action: Selector(("Six:")), for:UIControl.Event.touchUpInside)
         ButtonSeven.addTarget(self, action: Selector(("Seven:")), for:UIControl.Event.touchUpInside)
         ButtonEight.addTarget(self, action: Selector(("Eight:")), for:UIControl.Event.touchUpInside)
         ButtonNine.addTarget(self, action: Selector(("Nine:")), for:UIControl.Event.touchUpInside)
         ButtonShowNumber.titleLabel?.adjustsFontSizeToFitWidth = true
    
         ButtonNativeOrActive.tag = 0

    
       
    }
 
    @IBAction func One(_ sender: UIButton) {
        
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let one = "1"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4{
            if originalNumber.contains("."){
                newNumber = originalNumber + one
              
            }
            ButtonShowNumber.setTitle("\(one)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        }else{
            if originalNumber.contains("."){
                newNumber = originalNumber + one
            } else if originalNumber == "0"{
                newNumber = one
            }else{
                newNumber = originalNumber + one
            }
            
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        }
    }
    @IBAction func Clear(_ sender: UIButton) {
         result = 0
         numberFirst = 0
        numberSecond = 0
         ButtonShowNumber.setTitle("0", for: UIControl.State.normal)
        ButtonShowNumber.tag = 0
    }
    
    @IBAction func Two(_ sender:UIButton) {
        
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let two = "2"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
            if originalNumber.contains("."){
                newNumber = originalNumber + two
            }

            ButtonShowNumber.setTitle("\(two)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + two
            } else if originalNumber == "0"{
                newNumber = two
            }else{
                newNumber = originalNumber + two
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        }
    }
    
    
    @IBAction func Three(_ sender: UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let three = "3"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
            if originalNumber.contains("."){
                newNumber = originalNumber + three
            }
            
            ButtonShowNumber.setTitle("\(three)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + three
            } else if originalNumber == "0"{
                newNumber = three
            }else{
                newNumber = originalNumber + three
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        }
    }
    
    
    @IBAction func Four(_ sender:UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let four = "4"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4{
            if originalNumber.contains("."){
                newNumber = originalNumber + four
            }
            
            ButtonShowNumber.setTitle("\(four)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
            
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + four
            } else if originalNumber == "0"{
                newNumber = four
            }else{
                newNumber = originalNumber + four
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }
    }
    
    
    @IBAction func Five(_ sender:UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let five = "5"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4{
            if originalNumber.contains("."){
                newNumber = originalNumber + five
            }
            
            ButtonShowNumber.setTitle("\(five)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }else {
            if originalNumber.contains("."){
                newNumber = originalNumber + five
            } else if originalNumber == "0"{
                newNumber = five
            }else{
                newNumber = originalNumber + five
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }
    }
    
    @IBAction func Six(_ sender: UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let six = "6"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4{
            if originalNumber.contains("."){
                newNumber = originalNumber + six
            }
            ButtonShowNumber.setTitle("\(six)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + six
            } else if originalNumber == "0"{
                newNumber = six
            }else{
                newNumber = originalNumber + six
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }
    }
    
    @IBAction func Seven(_ sender: UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let seven = "7"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
           
            if originalNumber.contains("."){
                newNumber = originalNumber + seven
            }
                 ButtonShowNumber.setTitle("\(seven)", for: UIControl.State.normal)
            
              ButtonShowNumber.tag = 0
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + seven
            } else if originalNumber == "0"{
                newNumber = seven
            }else{
                newNumber = originalNumber + seven
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }
    }
    
    @IBAction func Eight(_ sender: UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let eight = "8"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
            if originalNumber.contains("."){
                newNumber = originalNumber + eight
            }
            ButtonShowNumber.setTitle("\(eight)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + eight
            } else if originalNumber == "0"{
                newNumber = eight
            }else{
                newNumber = originalNumber + eight
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }
    }
    
    @IBAction func Nine(_ sender:UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let Nine = "9"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
            if originalNumber.contains("."){
                newNumber = originalNumber + Nine
            }
            ButtonShowNumber.setTitle("\(Nine)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }else {
            if originalNumber.contains("."){
                newNumber = originalNumber + Nine
            } else if originalNumber == "0"{
                newNumber = Nine
            }else{
                newNumber = originalNumber + Nine
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
              ButtonShowNumber.tag = 0
        }
    }
    
    
    @IBAction func Zero(_ sender: UIButton) {
      
      
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let Zero = "0"
        var newNumber = ""
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4  {
        
            if originalNumber.contains("."){
                newNumber = originalNumber + Zero
            }
            ButtonShowNumber.setTitle("\(Zero)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        } else {
            if originalNumber.contains("."){
                newNumber = originalNumber + Zero
            } else if originalNumber == "0"{
                newNumber = Zero
            }else{
                newNumber = originalNumber + Zero
            }
            ButtonShowNumber.setTitle("\(newNumber)", for: UIControl.State.normal)
        }
       
    }
    
    
    @IBAction func Division(_ sender: UIButton) {
        DivisionMethod = true
        MutilMethod = false
        SubstractMethod = false
        AddMethod = false
         numberFirst = 0
        if result != 0 {
            numberFirst = result
        } else {
            numberFirst = Double(ButtonShowNumber.titleLabel?.text ?? "") ?? 0.0
        }
        
        ButtonShowNumber.tag = 4
    
        
    }
    
    @IBAction func Multi(_ sender: UIButton) {
        MutilMethod = true
        SubstractMethod = false
        AddMethod = false
         DivisionMethod = false
          numberFirst = 0
        if result != 0 {
            numberFirst = result
        } else {
            numberFirst = Double(ButtonShowNumber.titleLabel?.text ?? "") ?? 0.0
        }
        
        ButtonShowNumber.tag = 3
    }
    
    @IBAction func Subtract(_ sender: UIButton) {
        SubstractMethod = true
        MutilMethod = false
        AddMethod = false
        DivisionMethod = false
          numberFirst = 0
        if result != 0 {
            numberFirst = result
        } else {
            numberFirst = Double(ButtonShowNumber.titleLabel?.text ?? "") ?? 0.0
        }
        
        ButtonShowNumber.tag = 2
    }
    
    @IBAction func Add(_ sender: UIButton) {
        AddMethod = true
        SubstractMethod = false
        MutilMethod = false
        DivisionMethod = false
        numberFirst = 0
        if result != 0 {
             numberFirst = result
        } else {
        numberFirst = Double(ButtonShowNumber.titleLabel?.text ?? "") ?? 0.0
        }
        ButtonShowNumber.tag = 1
       
    }
    
    @IBAction func Equal(_ sender: UIButton) {

        numberSecond = 0
        numberSecond = Double(ButtonShowNumber.titleLabel?.text ?? "") ?? 0.0
        if DivisionMethod{
            
             ButtonShowNumber.titleLabel?.text = "\( numberFirst / numberSecond)"
             result =  numberFirst / numberSecond
        }else if MutilMethod {
            ButtonShowNumber.titleLabel?.text = "\( numberFirst * numberSecond)"
            result =  numberFirst * numberSecond
            
        }else if SubstractMethod {
            ButtonShowNumber.titleLabel?.text = "\( numberFirst - numberSecond)"
            result = numberFirst - numberSecond
        } else {
           
             ButtonShowNumber.titleLabel?.text = "\( numberFirst + numberSecond)"
            result = numberFirst + numberSecond
        }
       
    }
    
    @IBAction func AddPoint(_ sender: UIButton) {
        let originalShowResult = ButtonShowNumber.titleLabel?.text ?? ""
        let addPoint = originalShowResult + "."
        ButtonShowNumber.setTitle("\(addPoint)", for: UIControl.State.normal)
    }
    
    @IBAction func ButtonNativeOrActive(_ sender: UIButton) {
        var Active = ButtonShowNumber.titleLabel?.text ?? ""
        var Native = ""
        if sender.tag == 0 {
         
            sender.tag = 1
            Native = "-" + Active
             ButtonShowNumber.setTitle("\(Native)", for: UIControl.State.normal)
            if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
                numberSecond = Double(Native) ?? 0.0
            } else{
                numberFirst = Double(Native) ?? 0.0
            }
        }else {
            sender.tag = 0
           Native = Active.replacingOccurrences(of: "-", with: "")
         ButtonShowNumber.setTitle("\(Native)", for: UIControl.State.normal)
            if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
                numberSecond = Double(Native) ?? 0.0
            } else{
                numberFirst = Double(Native) ?? 0.0
            }
        }
        
    }
    
    @IBAction func ButtonShowPercentage(_ sender: UIButton) {
        let originalNumber = ButtonShowNumber.titleLabel?.text ?? ""
        let BeforePercentage = Double( originalNumber) ?? 0.0
        let AfterPercentage = BeforePercentage/100
        
      
        if ButtonShowNumber.tag == 1 || ButtonShowNumber.tag == 2 || ButtonShowNumber.tag == 3 || ButtonShowNumber.tag == 4 {
          numberSecond = AfterPercentage
            
            ButtonShowNumber.setTitle("\(AfterPercentage)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        } else {
           numberFirst = AfterPercentage
            ButtonShowNumber.setTitle("\(AfterPercentage)", for: UIControl.State.normal)
            ButtonShowNumber.tag = 0
        }
    }
    
}

