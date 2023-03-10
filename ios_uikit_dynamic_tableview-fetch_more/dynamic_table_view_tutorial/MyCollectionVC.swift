//
//  MyCollectionVC.swift
//  dynamic_table_view_tutorial
//
//  Created by 정승훈 on 2023/01/07.
//  Copyright © 2023 Tuentuenna. All rights reserved.
//

import Foundation
import UIKit

class MyCollectionVC: UIViewController{
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    
    fileprivate let systemImageNameArray = [
            "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "ant", "hare", "car", "airplane", "heart", "bandage", "waveform.path.ecg", "staroflife", "bed.double.fill", "signature", "bag", "cart", "creditcard", "clock", "alarm", "stopwatch.fill", "timer"
        ]
    
    
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        // 정대리 유튜브 커뮤니티 상속 13번 글 참고
        super.viewDidLoad()
        print("MyCollectionVC - viewDidLoad() called")
        
        // 콜렉션 뷰에 대한 설명
        myCollectionView.autoresizingMask = [.flexibleWidth, . flexibleHeight]
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        // 사용할 콜렉션뷰 셀을 등록
        // 쎌 리소스 파일 가져오기
//        let myCustomCollectionViewCellNib = UINib(nibName:"MyCustomCollectionViewCell"), bundle: nil)
        
        //닙파일을 가져온다.
        let myCustomCollectionViewCellNib = UINib(nibName: String(describing: MyCustomCollectionViewCell.self), bundle: nil)
        
        //가져온 닙파일로 콜렉션뷰에 셀로 등록한다.
        self.myCollectionView.register(myCustomCollectionViewCellNib, forCellWithReuseIdentifier: String(describing: MyCustomCollectionViewCell.self))
        
        // 콜렉션뷰의 콜렉션뷰 레이아웃을 설정한다.
        self.myCollectionView.collectionViewLayout = createCompositionalLayoutFirst()
        
    }
        
    @IBAction func onCollectionViewTypeChange(_ sender: UISegmentedControl) {
        print("MyCollectionVC -onCollectionViewTypeChange() calle / sender : \(sender.selectedSegmentIndex)")
        switch sender.selectedSegmentIndex {
        case 0:
            //테이블뷰 형태
            self.myCollectionView.collectionViewLayout = createCompositionalLayoutFirst()
        case 1:
            //2X2그리드형태
            self.myCollectionView.collectionViewLayout = createCompositionalLayoutSecond()
        case 2:
            //3X3그리드형태
            self.myCollectionView.collectionViewLayout = createCompositionalLayoutThird()
        default:
            break
        }
    }
}

//MARK: - 콜렉션뷰 콤포지셔널 레이아웃 관련
extension MyCollectionVC {
    
    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutFirst() -> UICollectionViewLayout {
        
        print("createCompositionalLayoutFirst() called")
        //콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            //만들게 되면 튜플 (키: 값, 키 : 값) 의 묶음으로 들어옴 반환하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야 함
            
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            //아이템에 대한 사이즈 - absolute는 고정값, estimated는 추측, fraction 퍼센트
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            
            //위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            //아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            // 변경할 부분
            let groupHeight = NSCollectionLayoutDimension.fractionalWidth(1/3)
            
            //그룹사이즈
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupHeight)
            
            //그룹사이즈로 그룹만들기
            //변경할 부분
//            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item,item,item])
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)

            
            
            //그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
//            section.orthogonalScrollingBehavior = .groupPaging
            
            //섹션에 대한 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
   
        }
        return layout
    }
    
    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutSecond() -> UICollectionViewLayout {
        
        print("createCompositionalLayoutSecond() called")

        //콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            //만들게 되면 튜플 (키: 값, 키 : 값) 의 묶음으로 들어옴 반환하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야 함
            
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            //아이템에 대한 사이즈 - absolute는 고정값, estimated는 추측, fraction 퍼센트
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            
            //위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            //아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            // 변경할 부분
            let groupHeight = NSCollectionLayoutDimension.fractionalWidth(1/2)
            
            //그룹사이즈
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupHeight)
            
            //그룹사이즈로 그룹만들기
            //변경할 부분
//            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item,item,item])
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)

            
            
            //그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
//            section.orthogonalScrollingBehavior = .groupPaging
            
            //섹션에 대한 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
   
        }
        return layout
    }
    
    // 콤포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayoutThird() -> UICollectionViewLayout {
        
        print("createCompositionalLayoutThird() called")

        //콤포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout{
            //만들게 되면 튜플 (키: 값, 키 : 값) 의 묶음으로 들어옴 반환하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야 함
            
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            //아이템에 대한 사이즈 - absolute는 고정값, estimated는 추측, fraction 퍼센트
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            
            //위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            //아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            // 변경할 부분
            let groupHeight = NSCollectionLayoutDimension.fractionalWidth(1/3)
            
            //그룹사이즈
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupHeight)
            
            //그룹사이즈로 그룹만들기
            //변경할 부분
//            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item,item,item])
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 3)

            
            
            //그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
//            section.orthogonalScrollingBehavior = .groupPaging
            
            //섹션에 대한 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
   
        }
        return layout
    }
}

// 데이터 소스 설정 - 데이터와 관련된 것들
extension MyCollectionVC: UICollectionViewDataSource {
    
    // 각 섹션에 들어가는 아이템 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.systemImageNameArray.count
    }
    
    // 각 콜렉션뷰 셀에 대한 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        let cellId = String(describing: MyCollectionViewCell.self)
//        print("cellId : \(cellId)")
        
        
        // 셀의 인스턴스
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MyCollectionViewCell
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MyCustomCollectionViewCell.self), for: indexPath) as! MyCustomCollectionViewCell
        
        cell.imageName = self.systemImageNameArray[indexPath.item]
        
//        cell.contentView.backgroundColor = .blue
//        cell.contentView.layer.cornerRadius = 8
//        cell.contentView.layer.borderWidth = 1
//        cell.contentView.layer.borderColor = .init(genericCMYKCyan: 4, magenta: 4, yellow: 4, black: 4, alpha: 4)
        
        // 데이터에 따른 셀 UI 변경
//        // 이미지에 대한 설정
//        cell.profileImg.image = UIImage(systemName: self.systemImageNameArray[indexPath.item])
//
//        // 라벨 설정
//        cell.profileLabel.text = self.systemImageNameArray[indexPath.item]
        
        return cell
    }
    
    
}

// 콜렉션뷰 델리겟 - 액션과 관련된 것들
extension MyCollectionVC: UICollectionViewDelegate {
    
}


