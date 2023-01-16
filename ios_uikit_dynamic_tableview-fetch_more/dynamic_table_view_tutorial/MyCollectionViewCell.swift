//
//  MyCollectionViewCell.swift
//  dynamic_table_view_tutorial
//
//  Created by 정승훈 on 2023/01/08.
//  Copyright © 2023 Tuentuenna. All rights reserved.
//

import Foundation
import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var profileLabel: UILabel!
    
    
    var imageName : String = ""{
        didSet{
            print("MyCollectionViewCell / imageName - didSet() : \(imageName)")
            // 셀의 UI 설정
            self.profileImg.image = UIImage(systemName: imageName)
            self.profileLabel.text = imageName
        }
    }
    
    override func awakeFromNib(){
        super.awakeFromNib()
        print("MyCollectionViewCell - awakeFromNib() called")
        self.contentView.backgroundColor = .blue
        self.contentView.layer.cornerRadius = 8
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = .init(genericCMYKCyan: 4, magenta: 4, yellow: 4, black: 4, alpha: 4)
    }
    
}
