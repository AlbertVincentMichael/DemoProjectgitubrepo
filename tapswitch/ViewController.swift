//
//  ViewController.swift
//  tapswitch
//
//  Created by albert Michael on 21/06/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    var images:[String]=["lightOff","lightOff","lightOff","lightOff","lightOn","lightOff","lightOff","lightOn","lightOff","lightOn"]

   
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        collectionView.delegate = self
        collectionView.dataSource = self
       
      //  let tap = UITapGestureRecognizer(target: self, action: #selector()
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.startAc) )
//        start.addGestureRecognizer(tap)


        // Do any additional setup after loading the view.
        
    }
    
@objc func startAc(_ sender: UITapGestureRecognizer? = nil)
    {
        print("on")
        
        
            //.backgroundColor = .green
//            labelState.text = "on"

}
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PulbCollectionViewCell", for: indexPath) as? PulbCollectionViewCell
        cell?.View.layer.cornerRadius = 15
        cell?.View.layer.shadowColor = UIColor.black.cgColor
        cell?.View.layer.shadowOffset = CGSize(width: 0.3, height: 0.3)
        cell?.View.layer.shadowOpacity = 0.5
//        cell?.View.layer.shadowColor = UIColor.white.cgColor
//        cell?.View.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        cell?.View.layer.shadowRadius = 2.0
//        cell?.View.layer.cornerRadius = 20
//        cell?.View.layer.shadowOpacity = 0.5
//        cell?.View.layer.masksToBounds = false
//        cell?.View.layer.shadowColor = UIColor.white.cgColor
//        cell?.View.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        cell?.View.layer.shadowRadius = 2.0
//        cell?.View.layer.shadowOpacity = 0.5
//        cell?.View.layer.masksToBounds = false
//        cell?.View.layer.shadowPath = UIBezierPath(roundedRect: cell!.bounds, cornerRadius: (cell?.contentView.layer.cornerRadius)!).cgPath
        cell?.image.image = UIImage(named: images[indexPath.row])
        cell?.label.text = images[indexPath.row]
//                let tap = UITapGestureRecognizer(target: self, action: #selector(self.startAc) )
       // cell?.View.addGestureRecognizer(tap)

        return cell!
    }
    private func setUpCollectionView()
    {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
       // collectionIcon.setCollectionViewLayout(layout, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.startAc()
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PulbCollectionViewCell", for: indexPath) as? PulbCollectionViewCell
      
        
      
    }

}
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 1.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        
        let widthPerItem = collectionView.frame.width / 3 - lay.minimumInteritemSpacing
        
        return CGSize(width: widthPerItem - 2, height: 150)
        
    }
    
}

