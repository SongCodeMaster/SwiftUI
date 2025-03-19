//
//  PaddingBasic.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/6/25.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            // 1. Padding 기본
            Text("Hello, World!")
                .background(Color.yellow)
                .padding() // .ppading(.all, 15)
                .padding(.leading, 20)
                .background(Color.blue)
                .padding(.bottom, 20)
            
            Divider()
            
            // 2. Padding 응용
            Text("Hello, World")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
                .background(Color.blue)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다. ")
        }
        //VStack 범위 밖에서 padding 설정하면?
        .padding() // 기본값임. 전체 15 패딩
        .padding(.vertical, 30)
        .background(
            Color.green
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
