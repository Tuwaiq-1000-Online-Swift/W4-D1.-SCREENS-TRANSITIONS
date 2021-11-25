//
//  ViewController.swift
//  w4-d1-transitions
//
//  Created by يعرُب on 16/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = "معسكر البرمجة"
    }

    @IBAction func moveButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondVC
        
    
        if let viewController = vc {
            viewController.myTitle = titleLabel.text!
            present(viewController, animated: true, completion: nil)
//            navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
    
}

