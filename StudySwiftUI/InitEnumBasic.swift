//
//  EnitEnumBasic.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/10/25.
//

import SwiftUI

struct InitEnumBasic: View {
    /// - Init과 Enum 기초 활용
    /// 반복되는 UI 요소를 Enum으로 효율적으로 관리하기, Init으로 뷰 초기화시 값 할당
    
    // 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    // init 함수 생성
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack (spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    HStack {
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 43, fruit: .orange)
    }
}
