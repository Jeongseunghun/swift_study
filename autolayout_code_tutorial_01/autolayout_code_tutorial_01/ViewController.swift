//
//  ViewController.swift
//  autolayout_code_tutorial_01
//
//  Created by 정승훈 on 2023/01/05.
//

import UIKit

class ViewController: UIViewController {
    
    
    //클로저로 뷰를 설정
    var mySecondView  : UIView = {
       let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    var myThirdView : MyCircleView = {
        let circleView = MyCircleView()
         circleView.backgroundColor = .blue
         circleView.translatesAutoresizingMaskIntoConstraints = false
        return circleView
    
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myFirstView = UIView()
        myFirstView.translatesAutoresizingMaskIntoConstraints = false
        myFirstView.backgroundColor = .systemPink
        self.view.addSubview(myFirstView)
        
        // x축, y축 위치 , 가로, 세로
        myFirstView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myFirstView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true
        
        // 뷰의 가로세로, 크기 제공
        myFirstView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        myFirstView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        myFirstView.layer.cornerRadius = 30
        
        
        self.view.addSubview(mySecondView)
        NSLayoutConstraint.activate([
            mySecondView.widthAnchor.constraint(equalToConstant: 100),
            mySecondView.heightAnchor.constraint(equalToConstant: 100),
            mySecondView.leadingAnchor.constraint(equalTo: myFirstView.leadingAnchor, constant: 10),
            mySecondView.topAnchor.constraint(equalTo: myFirstView.bottomAnchor, constant: 50)
        ])
       
        self.view.addSubview(myThirdView)
        myThirdView.widthAnchor.constraint(equalTo: mySecondView.widthAnchor,multiplier:1.5).isActive = true
        myThirdView.heightAnchor.constraint(equalTo: mySecondView.heightAnchor,multiplier:1.5).isActive = true
        myThirdView.topAnchor.constraint(equalTo: mySecondView.bottomAnchor,constant: 50).isActive = true
        myThirdView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }


}

#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {

    //update
    func updateUIViewController(_ uiViewController: UIViewController,
        context: Context) {
    }

    //makeui
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController()
    }

}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
        .previewDisplayName("아이폰 11")
    }
}


#endif

