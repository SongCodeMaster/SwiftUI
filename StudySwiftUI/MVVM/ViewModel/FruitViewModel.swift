//
//  FruitViewModel.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/15/25.
//

import Foundation

class FruitViewModel: ObservableObject {
    // property
    
    // publised wrapper 는 @State와 비슷하게 상태값을 선언하는데, class 안에서는 @ Published를 사용한다는 점이 다릅니다.
    // @Published 는 Fruit 배열의 값이 View 에서 변경이 되면 FruitViewModel 에서 새로 변경사항을 알아차려서 변경한다는 점입니다.
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // MARK: - function
    
    func getFruit() {
        
        // fruit 의 각각의 값 선언
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 31)
        
        // 3초 딜레이후, fruitArray 에 선언된 값을 집어넣기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    // fruitArray에서 값을 삭제하는 logic
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
