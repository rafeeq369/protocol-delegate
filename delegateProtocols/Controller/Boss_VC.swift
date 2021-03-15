//
//  Boss_VC.swift
//  delegateProtocols
//
//  Created by Soft on 22/12/1942 Saka.
//

import UIKit

protocol Army {
    func ChooseOne(name: String, image: UIImage)
}

class Boss_VC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var chars = [#imageLiteral(resourceName: "wallBreaker"), #imageLiteral(resourceName: "golem"), #imageLiteral(resourceName: "hog"), #imageLiteral(resourceName: "minion"), #imageLiteral(resourceName: "walk"), #imageLiteral(resourceName: "wich"), #imageLiteral(resourceName: "pekka")]
    var chars2 = ["wallBreaker", "golem", "hog", "minion", "walk", "wich", "pekka",  ]
    @IBOutlet weak var collectionView: UICollectionView!
    
    var Attacker : Army!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = chars[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var shoulder = chars[indexPath.row]
        Attacker.ChooseOne(name: "Attacker", image: UIImage(named: "\(chars2[indexPath.row])")!)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func MINION(_ sender: Any) {
        Attacker.ChooseOne(name: "Minion", image: UIImage(named: "minion")!)
        self.dismiss(animated: true, completion: nil)
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
