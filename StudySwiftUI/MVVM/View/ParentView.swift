//
//  ParentView.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/24/25.
//

import SwiftUI

struct ParentView: View {
    @StateObject var userViewModel: UserViewModel = .init()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("현재 사용지: \(userViewModel.username)")
                    .font(.title)
                
                NavigationLink(
                    "프로필 화면으로 이동",
                    destination: ProfileView().environmentObject(userViewModel)
                )
                .padding()
                
                NavigationLink(
                    "설정 화면으로 이동",
                    destination: SettingsView().environmentObject(userViewModel)
                )
            } //: VStack
        } //: NavigationStack
    }
}

#Preview {
    ParentView()
}
