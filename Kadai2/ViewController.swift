//
//  ViewController.swift
//  Kadai2
//
//  Created by Hiroatsu on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButton(_ sender: UIButton) {
        let number1 = Double(textField1.text!) ?? 0
        let number2 = Double(textField2.text!) ?? 0

        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultLabel.text =  String(number1 + number2)
        case 1:
            resultLabel.text =  String(number1 - number2)
        case 2:
            resultLabel.text =  String(number1 * number2)
        case 3:
            if number2 == 0 {
                resultLabel.text = "割る数には0以外を入力してください"
            } else {
                resultLabel.text =  String(number1 / number2)
            }
        default:
            break
        }
    }
}
