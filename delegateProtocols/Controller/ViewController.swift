//
//  ViewController.swift
//  delegateProtocols
//
//  Created by Soft on 22/12/1942 Saka.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Char: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    var bozz: Boss_VC!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func slectPlyr(_ sender: Any) {
        let vc = (storyboard?.instantiateViewController(identifier: "Boss_VC")) as! Boss_VC
        vc.Attacker = self
        present(vc, animated: true, completion: nil)
    }
    
}

extension ViewController: Army {
    func ChooseOne(name: String, image: UIImage) {
        self.Char.image = image
        self.name.text = name
    }
    
    
}
