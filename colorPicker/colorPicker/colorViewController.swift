//
//  colorViewController.swift
//  colorPicker
//
//  Created by Benson Philipose on 11/14/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import UIKit

class colorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    
    var Color = [color(name:"red", colorUI: UIColor.red), color(name:"orange", colorUI: UIColor.orange),color(name:"green", colorUI: UIColor.green),  color(name:"blue", colorUI: UIColor.blue), color(name:"yellow", colorUI: UIColor.yellow),  color(name:"purple", colorUI: UIColor.purple), color(name:"brown", colorUI: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Color[0].colorUI
        self.colorLabel.text = "red"
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Color[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Color.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = Color[row].colorUI
        self.colorLabel.text = Color[row].name
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
