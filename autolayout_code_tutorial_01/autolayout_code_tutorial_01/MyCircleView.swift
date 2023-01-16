//
//  myCircleView.swift
//  autolayout_code_tutorial_01
//
//  Created by 정승훈 on 2023/01/05.
//

import Foundation
import UIKit

class MyCircleView: UIView  {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("MyCircleView - layoutSubviews() called")
        self.layer.cornerRadius = self.frame.height / 2
    }
}
