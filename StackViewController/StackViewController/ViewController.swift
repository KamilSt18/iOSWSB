//
//  ViewController.swift
//  StackViewController
//
//  Created by Student G225 08 on 28/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func clickButton(_ sender: UIButton) {
        let dialogMessage = UIAlertController(title: "Pomyślnie", message:"Zarejestrowano konto!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: {(action) -> Void in print("Ok.")})
        dialogMessage.addAction(ok)
        self.present(dialogMessage, animated: true, completion: nil)
    }


}

