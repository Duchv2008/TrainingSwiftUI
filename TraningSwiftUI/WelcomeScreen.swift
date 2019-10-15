//
//  WelcomeScreen.swift
//  TraningSwiftUI
//
//  Created by nhocbangchu95 on 10/15/19.
//  Copyright © 2019 nhocbangchu95. All rights reserved.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 10) {
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .edgesIgnoringSafeArea(.top)

                    Image("personal_bg")
                        .resizable()
                        .frame(width: 180, height: 180, alignment: .center)
                        .edgesIgnoringSafeArea(.top)
                }.frame(width: geo.size.width, height: geo.size.height / 2)
                    .background(Color.red)

                VStack(alignment: .center, spacing: 10) {

                    Button(action: {
                        print("Facebook Login")
                    }) {
                        Text("Facebook Login")
                            .padding([.top, .bottom], 5)
                            .padding([.leading, .trailing], 10)
                            .frame(width: geo.size.width - 40)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                    }
                    .cornerRadius(20)

                    Button(action: {
                        print("Google Login")
                    }) {
                        Text("Google Login")
                            .padding([.top, .bottom], 5)
                            .padding([.leading, .trailing], 10)
                            .frame(width: geo.size.width - 40)
                            .background(Color.red)
                            .foregroundColor(Color.white)
                    }
                    .cornerRadius(20)

                    HStack(alignment: .center, spacing: 5) {
                        Rectangle()
                            .frame(height: 1)
                            .padding([.leading], 20)
                            .background(Color.gray)

                        Text("Others")

                        Rectangle()
                            .frame(height: 1)
                            .padding([.trailing], 20)
                            .background(Color.gray)
                    }.frame(minWidth: 0, maxWidth: .infinity)

                    HStack(alignment: .center, spacing: 30) {
                        Button(action: {
                            print("Line")
                        }) {
                            Text("Line")
                        }
                            .frame(width: 40, height: 40, alignment: .center)
                        .border(Color.gray, width: 1)
                        .cornerRadius(20)


                        Button(action: {
                            print("Login")
                        }) {
                            Text("Login")
                            .frame(width: 40, height: 40, alignment: .center).border(Color.gray, width: 1)
                        }
                        .cornerRadius(20)

                    }

                    Button(action: {
                        print("Create new account")
                    }) {
                        Text("Create new account")
                            .foregroundColor(Color.red)
                    }.background(Color.clear)

                    Text("By using 17 you agree to accept our copy")
                        .font(Font.system(size: 10))

                    Button(action: {
                        print("Community Guidelines copy")
                    }) {
                        Text("Community Guidelines copy")
                            .foregroundColor(Color.blue)
                            .font(Font.system(size: 10))
                    }
                }
            }.frame(width: geo.size.width, height: geo.size.height)
        }

    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
