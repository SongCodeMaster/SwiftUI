//
//  ForEachLoopBasic.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/11/25.
//

import SwiftUI

struct ForEachLoopBasic: View {
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        // 1번
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호: \(index)번")
                }
            }
            
            Divider()
            
            // 2번 - data와 인덱스 고유 id를 넣어줘야 한다.
            /*
             위 코드에서 id: \.self를 사용하면,
             SwiftUI는 data의 각요소(item)가 자기 자신(.self)을 고유 식별자로 사용한다고 판단.
             */
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
