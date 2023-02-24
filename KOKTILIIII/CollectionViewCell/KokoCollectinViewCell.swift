//
//  KokoCollectinViewCell.swift
//  KOKTILIIII
//
//  Created by Mac on 23/2/23.
//

import UIKit
import Kingfisher

class KokoCollectinViewCell: UICollectionViewCell {
    
    static let reid = (String(describing: KokoCollectinViewCell.self))
    
    
    
    @IBOutlet weak var KokImageView: UIImageView!
    
    
    @IBOutlet weak var LableKok: UILabel!
    
    
    
    
    
    
    
    
    func DisplayInfo(koktil:Drinks){
        LableKok.text = koktil.strDrink
        KokImageView.kf.setImage(with: URL(string: koktil.strDrinkThumb))
        KokImageView.layer.cornerRadius = 50
        KokImageView.clipsToBounds = true
        
    }
}

