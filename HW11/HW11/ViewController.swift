//
//  ViewController.swift
//  HW11
//
//  Created by Роман Литвинович on 10.08.23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textfield: UITextField!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var setButton: UIButton!
    @IBOutlet private weak var timeInfoLbl: UILabel!
    @IBOutlet private weak var switchBtn: UISwitch!
    @IBOutlet private weak var clearButton: UIButton!
    
    private func setupUI(){
        timeInfoLbl.text = "        "
        timeInfoLbl.backgroundColor = UIColor.systemGray6
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
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
        timeInfoLbl.backgroundColor = sender.isOn ? UIColor.systemGray5 : UIColor.systemRed
    }
    
    @IBAction func clearBtnAction(_ sender: UIButton) {
        timeInfoLbl.text = "        "
        timeInfoLbl.backgroundColor = UIColor.systemGray6
    }
    
}
