//
//  ViewController.swift
//  delegatePattern
//
//  Created by Michael Flowers on 10/29/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
//button will call segue
    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSegue" {
            guard let destination = segue.destination as? SecondViewController else {
                print("no SecondViewController: Error in the segue")
                return
            }
            print("setting the delegate")
            destination.delegate = self
        }
    }
}

extension ViewController: SecondVCDelegate {
    //You don't need to call this anywhere. It will trigger when it's called in the delegator's file
    func changeColor(_ color: UIColor) {
        print("changeColor protocol function was triggered")
        view.backgroundColor = color
        
    }
    
    
}
