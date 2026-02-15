//
//  NavigationViewController.swift
//  CurrencyConverter
//
//  Created by Isaac Alvarez on 2/14/26.
//
import UIKit
class NavigationViewController: UIViewController {
    @IBOutlet weak var usdL: UILabel!
    @IBOutlet weak var eurL: UILabel!
    @IBOutlet weak var jpyL: UILabel!
    @IBOutlet weak var gbpL: UILabel!
    @IBOutlet weak var rubL: UILabel!
    var usd = ""
    var eur = ""
    var jpy = ""
    var gbp = ""
    var rub = ""
    override func viewDidLoad() {
        usdL.text = usd
        jpyL.text = jpy
        eurL.text = eur
        gbpL.text = gbp
        rubL.text = rub
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
