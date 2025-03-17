//
//  FruitViewModel.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/15/25.
//

import SwiftUI

struct FruitBasicView: View {
    
    // property
    
    // @ObservedObject 사용하여 ViewModel 객체화 하기 -> SubView 에서 주로 사용 (부모 View 값을 넘겨 받았을 경우) 인스턴스가 관찰된 객체로 하위 뷰로 전달하는 종속 구조인 방법이다.
    
//    @ObservedObject var fruitViewModel = FruitViewModel()
    
    // @StateObject 사용하여 ViewModel 객체화 하기 -> View가 처음 생성, 초기화 할때, 부모 View에서 주로 사용
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack (spacing: 20) {
                            Text("\(fruit.count)")
                                .foregroundColor(.blue)
                            Text("\(fruit.name)")
                                .foregroundColor(.red)
                                .font(.headline)
                                .bold()
                        } //: HStack
                    } //: Loop
                } //: CONDITIONAL
            } //: List
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    )
            )
            .navigationTitle("과일 리스트")
        } //: NAVIGATION
    }
}

// SecondScreen

struct SecondScreen: View {
    
    // property
    // 이미 @StateObject에서 ViewModel을 초기화 하였고, SubView에 넘겨 주었기 때문에 2중으로 초기화 된것입니다. 이렇게 되면 상위뷰와 하위뷰가 연결되지 않고 독립적인 상태가 됩니다.
//    @ObservedObject var fruitViewModel = FruitViewModel()
    @ObservedObject var fruitViewModel: FruitViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
            
            // forground
            VStack (spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                } //:LOOP
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                
            } //: VStack
        } //: ZStack
    }
}
#Preview {
    FruitBasicView()
}
