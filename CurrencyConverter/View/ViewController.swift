//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Isaac Alvarez on 2/14/26.
//
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var errorL: UILabel!
    @IBOutlet weak var usdTF: UITextField!
    @IBOutlet weak var eurS: UISwitch!
    @IBOutlet weak var jpyS: UISwitch!
    @IBOutlet weak var gbpS: UISwitch!
    @IBOutlet weak var rubS: UISwitch!
    @IBOutlet weak var convertB: UIButton!
    var CCLogic = ccLogic()
    override func viewDidLoad() {
        super.viewDidLoad()
        usdTF.text = ""
        eurS.isOn = false
        jpyS.isOn = false
        gbpS.isOn = false
        rubS.isOn = false
        errorL.text = "Please input a valid integer and make a selection"
        convertB.isEnabled = false
    }
    @IBAction func textChanged(_ sender: UITextField) {
        updateUI()
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateUI()
    }
    func updateUI() {
        let validInteger = Int(usdTF.text ?? "") != nil
        let selectionMade = eurS.isOn || jpyS.isOn || gbpS.isOn || rubS.isOn
        if validInteger && selectionMade {
            errorL.isHidden = true
            convertB.isEnabled = true
        } else if !validInteger && selectionMade {
            errorL.isHidden = false
            errorL.text = "Please input a valid integer"
            convertB.isEnabled = false
        } else if validInteger && !selectionMade {
            errorL.isHidden = false
            errorL.text = "Please make a selection"
            convertB.isEnabled = false
        } else {
            errorL.isHidden = false
            errorL.text = "Please input a valid integer and make a selection"
            convertB.isEnabled = false
        }
        if let value = Int(usdTF.text ?? "") {
            CCLogic.setUSD(value)
        }
        CCLogic.setEURswitch(eurS.isOn)
        CCLogic.setJPYswitch(jpyS.isOn)
        CCLogic.setGBPswitch(gbpS.isOn)
        CCLogic.setRUBswitch(rubS.isOn)
    }
    @IBAction func navigate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigation" {
            let navigation = segue.destination as! NavigationViewController
            navigation.usd = CCLogic.getUSD()
            navigation.eur = CCLogic.getEUR()
            navigation.jpy = CCLogic.getJPY()
            navigation.gbp = CCLogic.getGBP()
            navigation.rub = CCLogic.getRUB()
        }
    }

}
