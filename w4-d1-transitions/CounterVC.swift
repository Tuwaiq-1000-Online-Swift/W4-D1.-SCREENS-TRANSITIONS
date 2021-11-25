//
//  CounterVC.swift
//  w4-d1-transitions
//
//  Created by يعرُب on 16/04/1443 AH.
//

import UIKit

class CounterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var counter = 0
    @IBAction func incrementButtonClicked(_ sender: Any) {
        counter += 1
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        print(counter)
        let vc = storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC
        
        if let viewCont = vc {
            viewCont.counter = String(counter)
            present(viewCont, animated: true, completion: nil)
        }
        
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
