//
//  UserProfile.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-04.
//

import SwiftUI

struct UserProfile: View {
    @EnvironmentObject private var session: SessionStore
    
    var body: some View {
        VStack {
            if session.session != nil {
                UserPage()
            } else {
                LoginView()
            }
        }.onAppear(perform: {self.session.listen()})
    }
}

struct UserProfile_Previews: PreviewProvider {
    static let session = SessionStore()
    static var previews: some View {
        UserProfile().environmentObject(session)
    }
}
