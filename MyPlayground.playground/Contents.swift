import UIKit


////1일차 - 조건문
///
//var isDarkMode : Bool = false
//
//if isDarkMode {
//    print("다크모드입니다")
//} else{
//    print("다크모드가 아닙니다")
//}
//
//var title : String = isDarkMode ? "다크모드 입니다" : "다크모드가 아닙니다"
//
//print("title: \(title)")


//2일차 - foreach 반복문

//콜렉션 : 데이터를 모아둔 것
//배열, 셋, 딕셔너리, 튜플
//배열
//var myArray : [Int] = [0,1,2,3,4,5,6,7,8,9,10]
//
//for item in myArray{
//    print("item : \(item)" )
//}
//
//for item in myArray where item > 5{
//    print("5보다 큰 수 : \(item)")
//}
//
//for item in myArray where item % 2 == 0{
//    print("짝수 : \(item)")
//}


////3일차 - enum 케이스 나누기
//
//// 학교 - 초, 중, 고
//enum School {
////    case elementary
////    case middle
////    case high
//    case elementary,middle,high
//}
//
//let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
//print("yourSchool:",yourSchool)
//
//
//enum Grade : Int{
//    case first = 1
//    case second = 2
//}
//
//let yourGrade = Grade.second
//print("yourGrade: \(yourGrade)")
//print("yourGrade: \(yourGrade.rawValue)")
//
//
//enum SchoolDetail {
//    case elementary(name: String)
//    case middle(name:String)
//    case high(name:String)
//    func getName() -> String{
//        switch self {
//        case .elementary(let name):
//            return name
//        case let .middle(name):
//            return name
//        case .high(let name):
//            return name
//        }
//    }
//}
//
//let yourMiddeleSchoolName = SchoolDetail.middle(name: "신화중")
//
//print("yourMiddleSchoolName: \(yourMiddeleSchoolName)")
//print("yourMiddleSchoolName: \(yourMiddeleSchoolName.getName())")


////4일차 - For 반복문
//
////레인지
////0...5
////0,1,2,3,4,5
//
////0..<5
////0,1,2,3,4
//
//for i in 0...5{
//    print("호호 i : \(i)")
//}
//
////짝수 출력
//for i in 0..<5 where i % 2 == 0{
//    print("호호 짝수 i : \(i)")
//}
//
////var randomInts: [Int] = []
//var randomInts: [Int] = [Int]()
//
//for _ in 0..<25{
//    let randomNumber = Int.random(in: 0...100)
//    randomInts.append(randomNumber)
//}
//
//print("randomInts: \(randomInts)")
//

////5일차 - Unwrap 옵셔널변수
//
////옵셔널이란?
////값이 있는지 없는지 모른다.
//var someVariable : Int? = nil
//
//if someVariable == nil {
//    someVariable = 90
//}
//
//print("someVariable: ", someVariable)
//
////언랩핑이란?
////랩 즉 감싸져있는 것을 벗기는 것
//if let otherVariable = someVariable{
//    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
//
//}else {
//    print("값이 없다.")
//}
//
//someVariable = nil
//
////someVariable이 비어있으면 즉 값이 없으면 기본값으로 요놈을 넣겠다.
//let myValue = someVariable ?? 10
//print("myValue = \(myValue)")
//
//var firstValue : Int? = 30
//var secondValue : Int? = 50
//
//print("firstValue: \(firstValue)")
//print("secondValue: \(secondValue)")
//
//unwrap(firstValue)
//unwrap(secondValue)
//
//func unwrap(_ parameter: Int?){
//    print("unwrap() called")
//    //값이 없으면 리턴 해버린다.
//    //즉 지나간다.
//    guard let unWrappedParam = parameter else{
//        return
//    }
//
//    print("unWrappedParam : \(unWrappedParam)")
//}


////6일차 - 클래스 vs 스트럭트
//
//// 유튜버 (데이터) 모델 - struct / 구조체
//struct YoutuberStruct {
//    var name : String
//    var subscribersCount : Int
//}
//
//var devJeong = YoutuberStruct(name: "정대리", subscribersCount: 99999)
//
//var devJeongClone = devJeong
//
//print("값 넣기 전 devJoengClone.name : \(devJeongClone.name)")
//
//
//devJeongClone.name = "호롤롤로"
//
//print("값 넣은 후 devJeongClone.name : \(devJeongClone.name)")
//print("값 넣은 후 devJeong.name : \(devJeong.name)")
//
//
////클래스
//class YoutuberClass {
//    var name : String
//    var subscribersCount : Int
//    //생성자 - 즉 메모리에 올린다
//    //init으로 매개변수를 가진 생성자 메소드를 만들어야
//    //매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있다.
//        init(name : String, subscribersCount: Int){
//        self.name = name
//        self.subscribersCount = subscribersCount
//    }
//}
//
//var jeongDaeRi = YoutuberClass(name: "정대리", subscribersCount: 99999)
//var jeongDaeRiClone = jeongDaeRi
//
//print("값 넣기 전 jeongDaeRiClone.name : \(jeongDaeRiClone.name)")
//
//
//jeongDaeRiClone.name = "호롤로로로"
//
//print("값 넣은 후 jeongDaeRiClone.name : \(jeongDaeRiClone.name)")
//print("값 넣은 후 jeongDaeRi.name : \(jeongDaeRi.name)")
 

////7일차 - 프로퍼티 옵저버
//
//var myAge = 0 {
//    willSet{
//        print("값이 설정될 예정이다. myAge: \(myAge)")
//    }
//    didSet{
//        print("값이 설정되었다. myAge: \(myAge)")
//    }
//}
//
//myAge = 10
//myAge = 20


////8일차 - 함수 매개변수 이름
//
////함수, 메소드 정의
//func myFunction(name:String) -> String{
//    return "안녕하세요?! \(name) 입니다!"
//}
//
////함수, 메소드를 호출한다. call
//myFunction(name: "승훈")
//
////함수, 메소드 정의
//func myFunctionSecond(with name:String) -> String{
//    return "안녕하세요?! \(name) 입니다!"
//}
//
//myFunctionSecond(with: "호로롤")
//
////함수, 메소드 정의
//func myFunctionThird(_ name:String) -> String{
//    return "안녕하세요?! \(name) 입니다!"
//}
//
//myFunctionThird("하하하")


////9일차 - 제네릭
//
//struct MyArray<T>{
//
//    //제네릭을 담은 빈 배열
//    var elements : [T] = [T]()
//
//    init(_ elements: [T]){
//        self.elements = elements
//    }
//}
//
//struct Friend {
//    var name: String
//}
//
//struct PpakCoder{
//    var name: String
//}
//
//var mySomeAraay = MyArray([1,2,3])
//print("MySomeArray : \(mySomeAraay)")
//
//var myStringArray = MyArray(["가","나","다"])
//print("myStringArray : \(myStringArray)")
//
//let friend_01 = Friend(name:"철수")
//let friend_02 = Friend(name:"영희")
//let friend_03 = Friend(name:"수진")
//
//var myFriendsArray = MyArray([friend_01,friend_02,friend_03])
//print("myFriendArray : \(myFriendsArray)")


////10일차 - 클로저
////String을 반환하는 클로저
//let myName : String = {
//        //myName으로 들어간다
//        return "정대리"
//}()
//
//print(myName)
//
//// 클로저 정의
//let myRealName = { (name: String) -> String in
//    return "개발하는 \(name)"
//}
//
//myRealName("쩡대리")
//
//let myRealNameLogic : (String) -> Void = { (name: String) in
//    print("개발하는 \(name)")
//
//}
//
//myRealNameLogic("호롤로로")


//11일차


//12일차 - 객체 생성자, 해제자




































