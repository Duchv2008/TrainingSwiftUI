//
//  ContentView.swift
//  TraningSwiftUI
//
//  Created by nhocbangchu95 on 10/15/19.
//  Copyright © 2019 nhocbangchu95. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var fruits = [FruitModel]()

    init() {
        let newFruits = [
            FruitModel(name: "Apple", descripton: "Apples is red"),
            FruitModel(name: "Banana", descripton: "Bananas are yellow and long"),
            FruitModel(name: "Cherry", descripton: "Cherry are red and grows in bunch"),
            FruitModel(name: "Grape", descripton: "Grapes are purple and grow in bunches"),
            FruitModel(name: "Mango", descripton: "Mangoes are yellow and oval")]
        fruits.append(contentsOf: newFruits)
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("1")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center).background(Color.red)
            Text("2").frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center).background(Color.blue)
        }
//        NavigationView {
//            List(fruits) { fruit in
//                Image(fruit.image)
//                    .resizable()
//                    .frame(width: 50, height: 50, alignment: Alignment.center)
//                    .cornerRadius(25)
//                VStack(alignment: .leading, spacing: 5) {
//                    Text(fruit.name)
//                        .font(Font.largeTitle)
//                        .foregroundColor(Color.red)
//                        .fontWeight(Font.Weight.bold)
//                    Text(fruit.description)
//                        .font(Font.subheadline)
//                }
//            }.background(Color.clear)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
