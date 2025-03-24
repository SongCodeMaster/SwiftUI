//
//  AppStorageTest.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/24/25.
//

import SwiftUI

struct AppStorageTest: View {
    @AppStorage("userAge") private var userAge: Int = 20
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
        VStack {
            Text("Age:\(userAge)")
            
            Button(action: {
                userAge += 1
            }, label: {
                Text("나이 증가")
            })
            
            Toggle("DarkMode", isOn: $isDarkMode)
                .frame(width: 150)
        }
    }
}

#Preview {
    AppStorageTest()
}
