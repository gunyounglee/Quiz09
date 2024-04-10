//
//  ViewController.swift
//  Quiz09
//
//  Created by TJ on 2022/04/17.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var pickerText: UIPickerView!
    @IBOutlet weak var tvGugudan: UITextView!
    
   
//    var gugudan = ["2","3","4","5","6","7","8","9"]
    var dan = [Int](2...9)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        lblTitle.text = "\(dan[0]) 단"
        calcDan(dan: dan[0])
        
        
        
       
        
        pickerText.dataSource = self
        pickerText.delegate = self
        

    }
    
    func calcDan(dan : Int){
        
        tvGugudan.text.removeAll()
        for i in 1...9{
            tvGugudan.text += "\(dan) X \(i) = \(dan * i) \n"
        }
    }
}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dan.count
    }
    
    
}

extension ViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return " \(dan[row]) 단"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblTitle.text = "\(dan[row]) 단"
        calcDan(dan: dan[row])
    }
}
