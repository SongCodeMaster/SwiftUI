//
//  SpacerBasic.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/6/25.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        // 1번 - Spacer 예시 도형
        HStack (spacing: 0) {
            Spacer(minLength: 0) // 비어있는 뷰라 생각하면 편한듯
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 10) // minLength 설정안해도 10과 비슷
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
    }
}

struct SpacerBasic2: View {
    var body: some View {
        // 2번 - App 상단 설정 닫기 아이콘 만들기
        VStack {
            HStack (spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()

        }
    }
}

// Xcode 15 (iOS 17) 이후 PreView 변경 적용
#Preview("1.Spacer 예시 도형") {
    SpacerBasic()
}

#Preview("2.App 상단 설정 닫기 아이콘 만들기") {
    SpacerBasic2()
}
