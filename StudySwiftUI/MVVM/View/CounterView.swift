//
//  CounterView.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/24/25.
//

import SwiftUI

struct CounterView: View {
    @StateObject var viewModel: CounterViewModel = .init()
    
    var body: some View {
        Text("\(viewModel.count)")
        
        Button(action: {
            viewModel.count += 1
        }, label: {
            Text("카운터 증가 버튼")
        })
    }
}

#Preview {
    CounterView()
}
