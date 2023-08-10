//
//  ViewController.swift
//  HW11
//
//  Created by Роман Литвинович on 10.08.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var timeInfoLbl: UILabel!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var clearButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeInfoLbl.text = "        "
        timeInfoLbl.backgroundColor = UIColor.systemGray6
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        textfield.text = "\(value)"
        progressView.progress = value
    }
    
    @IBAction func setButtonAction(_ sender: UIButton) {
        let selectedDate = datePicker.date
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            
            let formattedTime = dateFormatter.string(from: selectedDate)
            timeInfoLbl.text = formattedTime
    }
    
    @IBAction func switchBtnAction(_ sender: UISwitch) {
        if sender.isOn {
               timeInfoLbl.backgroundColor = UIColor.systemGray5
           } else {
               timeInfoLbl.backgroundColor = UIColor.systemRed
           }
    }
    
    @IBAction func clearBtnAction(_ sender: UIButton) {
        timeInfoLbl.text = "        "
        timeInfoLbl.backgroundColor = UIColor.systemGray6
    }
    
}

