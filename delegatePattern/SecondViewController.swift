//
//  SecondViewController.swift
//  delegatePattern
//
//  Created by Michael Flowers on 10/29/21.
//

import UIKit
protocol SecondVCDelegate: AnyObject {
    func changeColor(_ color: UIColor)
}
class SecondViewController: UIViewController {

    weak var delegate: SecondVCDelegate? {
        didSet {
            print("delegate was set")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(delegate.self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BlueButtonPressed(_ sender: UIButton) {
        print(delegate.self)
        if delegate == nil {
            print("delegate is nil")
        } else {
            delegate?.changeColor(.blue)
            dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func RedButtonPressed(_ sender: UIButton) {
        delegate?.changeColor(.red)
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func GreenButtonPressed(_ sender: UIButton) {
        delegate?.changeColor(.green)
        dismiss(animated: true, completion: nil)

    }
    @IBAction func OrangeButtonPressed(_ sender: UIButton) {
        delegate?.changeColor(.orange)
        dismiss(animated: true, completion: nil)
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
