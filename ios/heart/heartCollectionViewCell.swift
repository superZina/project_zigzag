//
//  heartCollectionViewCell.swift
//  ios
//
//  Created by 이진하 on 2020/06/03.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit
import WCLShineButton

class heartCollectionViewCell: UICollectionViewCell {
    var item_id:Int? = 0
    var bt1:WCLShineButton = WCLShineButton()
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var discount: UILabel!
    @IBOutlet weak var item_name: UILabel!
    @IBOutlet weak var mall_name: UILabel!
    @IBOutlet weak var free_ship: UILabel!
    @IBOutlet weak var item_image: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.discount.textColor = ColorPalette.zigzagPink
        //        self.item_image.frame.size = CGSize(width: 185, height: 200)
        self.item_image.clipsToBounds = true
        self.item_image.layer.masksToBounds = true
        self.item_image.layer.cornerRadius = 4
        self.free_ship.layer.cornerRadius = 3
        self.free_ship.layer.masksToBounds = true
        self.free_ship.alpha = 0.7
        
        var param1 = WCLShineParams()
        param1.bigShineColor = ColorPalette.zigzagPink
        param1.smallShineColor = UIColor(rgb: (170,170,170))
        param1.animDuration = 1
        bt1 = WCLShineButton(frame: .init(x: 95, y:115, width: 20, height: 20), params: param1)
        bt1.fillColor = ColorPalette.zigzagPink
        bt1.color = UIColor.systemGray5
        bt1.image = .custom(UIImage(named:"emptyheart")!)
//        if isHeart == true {
//            bt1.isSelected = true
//        }else {
//            bt1.isSelected = false
//        }
//        bt1.addTarget(self, action: #selector(heartAction), for: .valueChanged)
        self.addSubview(bt1)
    }
    
}
