//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("title-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

// MARK: - guard let 옵셔널 바인딩
// guard let image = UIImage(named: "title-image")
//      else { fatalError("Fail to load image") }
// return Image(uiImage: image)

// MARK: - 기본 이미지 생성 및 사이즈 변경하기
//Image("title-image")
//    .resizable()
//    .frame(width: 100, height: 100)

//Image(systemName: "circle")
//    .resizable()
//    .frame(width: 100, height: 100)

// MARK: - 도형 그리기
/*
 Rectangle()
    .fill(Color.blue)
    .frame(width: 100, height: 100)

 Circle()
    .fill(Color.green)
    .frame(width: 100, height: 100)
 */

// MARK: - 이미지 색상 변경하기
/*
Image(systemName: "circle.fill")
    .foregroundColor(Color.black)
*/

// MARK: - aspectRatio를 활용해 .fill, fit 등 이미지 조정하기
/*
Image("title-image")
    .resizable()
    .aspectRatio(contentMode: .fill)
*/
// MARK: - 텍스트 배경 그라데이션 넣기
/*
Text("Sweet Swift")
    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
*/

#Preview {
    ContentView()
}
