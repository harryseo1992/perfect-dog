//
//  UserPage.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-09-25.
//

import SwiftUI

struct UserPage: View {
    @State var selectedTab = Tabs.FirstTab
    
    var body: some View {
        VStack {
            Group { // Tabs
                VStack{
                    HStack {
                        Text("Hello, User!")
                            .font(.system(size: 30)).bold()
                        Spacer()
                        Image("doggy")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .clipped()
                    }
                    .padding([.top, .leading, .trailing])
                    .background(Color.perfectDog.edgesIgnoringSafeArea(.all))
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "gamecontroller.fill")
                            .foregroundColor(selectedTab == .FirstTab ? Color.white : Color.black)
                        Text("Play")
                            .padding([.top, .bottom], 5)
                    }
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(selectedTab == .SecondTab ? Color.white : Color.black)
                        Text("Past History")
                            .padding([.top, .bottom], 5)
                    }
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                    Spacer()
                }
                }
                .background(Color.perfectDog.edgesIgnoringSafeArea(.all))
            }
            VStack {
                Image("PerfectDog")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.top, 50)
                Text("Perfect Doggo")
                Spacer()
                Button(action: {}) {
                    Text("Choose your perfect doggo")
                        .fontWeight(.medium)
                        .padding(8.0)
                }
                    .foregroundColor(.black)
                    .frame(maxWidth:.infinity)
                    .background(Color.perfectDog)
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.perfectDog, lineWidth: 1)
                    )
                    .padding([.leading, .trailing, .bottom])
            }
            Spacer()
            
            if selectedTab == .FirstTab {
                FirstTabView()
            } else if selectedTab == .SecondTab {
                SecondTabView()
            }
        }
    }
}

struct FirstTabView : View {
    
    var body : some View {
        VStack {
            Text("FIRST TAB VIEW")
        }
    }
}

struct SecondTabView : View {
    
    var body : some View {
        Text("SECOND TAB VIEW")
    }
}

enum Tabs {
    case FirstTab
    case SecondTab
}

// Perhaps this Color extension can go elsewhere

extension Color {
    static let oldPrimaryColor = Color(UIColor.systemOrange)
    static let perfectDog = Color("PerfectDog")
}

struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage()
    }
}
