//
//  InfoView.swift
//  KOKTILIIII
//
//  Created by Mac on 23/2/23.
//

import UIKit

class InfoView: UIViewController {
    
    
    
    
    
    
    @IBOutlet weak var CollectionView2: UICollectionView!
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var ImageInfo: UIImageView!
    
    
    
    @IBOutlet weak var LableInfo: UILabel!
    
    
    
    
    @IBOutlet weak var ViewReating: UIView!
    
        
    @IBOutlet weak var ImagePeple1: UIImageView!
    
    @IBOutlet weak var Imge2: UIImageView!
    var dish : Drinks!
    
    @IBAction func ButtonBye(_ sender: Any) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup2()
        koktili()
        ViewReating.layer.cornerRadius = 25
        ImagePeple1.layer.cornerRadius = 50
        Imge2.layer.cornerRadius = 50
        CollectionView2.layer.cornerRadius = 55
    
        
        
        // Do any additional setup after loading the view.
    }
    private func setup2(){
        CollectionView2.dataSource = self
        CollectionView2.delegate = self
        CollectionView2.register(UINib(nibName: PeopleSmscell.reid, bundle: nil),forCellWithReuseIdentifier: PeopleSmscell.reid)
    }
    
    
    private func koktili(){
        ImageInfo.kf.setImage(with: URL(string: dish.strDrinkThumb))
        LableInfo.text = dish.strDrink
        
        
    }
}
extension InfoView:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PeopleSmscell.reid, for: [indexPath.row]) as! PeopleSmscell
        return cell
    }
    
    
}
extension InfoView:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 230, height: 220)
    }
}
