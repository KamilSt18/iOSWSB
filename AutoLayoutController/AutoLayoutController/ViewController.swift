//
//  ViewController.swift
//  AutoLayoutController
//
//  Created by Student G225 08 on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func clickButton(_ sender: UIButton) {
        let dialogMessage = UIAlertController(title: "Informacja", message: "Ten kot jest niedostępny w Twojej lokalizacji", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: {(action) -> Void in
            print("Ok. Przyciśnięty przycisk")
        })
        dialogMessage.addAction(ok)
        self.present(dialogMessage, animated: true, completion: nil)
    }

}

