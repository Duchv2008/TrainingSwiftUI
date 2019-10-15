//
//  WelcomeScreen.swift
//  TraningSwiftUI
//
//  Created by nhocbangchu95 on 10/15/19.
//  Copyright © 2019 nhocbangchu95. All rights reserved.
//

import SwiftUI


struct WelcomeScreen: View {
    
    private func TopView(geo: GeometryProxy) -> some View {
        GeometryReader { geo2 in
            VStack(alignment: .center, spacing: 10) {
                Image("personal_bg")
                    .resizable()
                    .frame(width: geo.size.width - 80,
                           height: (geo.size.height / 2), alignment: .topLeading)
            }
            .frame(width: geo.size.width, height: geo2.size.height, alignment: .top)
        }
    }
    
    private func facebookLogin(geo: GeometryProxy) -> some View {
        Button(action: {
            print("Facebook Login")
        }) {
            Text("Facebook Login")
                .padding(.vertical, 5)
                .padding([.leading, .trailing], 10)
                .frame(width: geo.size.width - 40, height: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
        }.clipShape(Capsule())
    }
    
    private func googleLogin(geo: GeometryProxy) -> some View {
        Button(action: {
            print("Google Login")
        }) {
            Text("Google Login")
                .padding(.vertical, 5)
                .padding([.leading, .trailing], 10)
                .frame(width: geo.size.width - 40, height: 50)
                .background(Color.red)
                .foregroundColor(Color.white)
        }.clipShape(Capsule())
    }
    
    private func otherText() -> some View {
        HStack(alignment: .center, spacing: 5) {
            Rectangle()
                .frame(height: 1)
                .background(Color.black)
            Text("Others")
                .padding(.horizontal, 20)
            Rectangle()
                .frame(height: 1)
                .background(Color.black)
        }.frame(minWidth: 0, maxWidth: .infinity)
            .padding(.horizontal, 20)
    }
    
    private func loginView() -> some View {
        HStack(alignment: .center, spacing: 30) {
            Button(action: {
                print("Line")
            }) {
                Text("Line")
                    .foregroundColor(Color.black)
            }.frame(width: 50, height: 50, alignment: .center)
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 1))

            Button(action: {
                print("Login")
            }) {
                Text("Login")
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(Color.black)
            }
            .overlay(
            Circle().stroke(Color.gray, lineWidth: 1))

        }
    }
    
    private func bottomPrivacyView() -> some View {
        VStack(alignment: .center, spacing: 10) {
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
    }
    
    private func BottomView(geo: GeometryProxy) -> some View {
        VStack(alignment: .center, spacing: 20) {
            self.facebookLogin(geo: geo)
            self.googleLogin(geo: geo)
            self.otherText()
            self.loginView()
            self.bottomPrivacyView()
        }
        .frame(width: geo.size.width, alignment: .bottom)
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            GeometryReader { geo in
                VStack(alignment: .center, spacing: 20) {
                    Image("logo")
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .bottom)
                        .scaledToFit()
                    
                    ZStack(alignment: .bottom) {
                        self.TopView(geo: geo)
                        self.BottomView(geo: geo)
                    } // ZStack
                } // VStack
                .frame(width: geo.size.width, height: geo.size.height, alignment: .bottom)
                    
            }
        }

    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
