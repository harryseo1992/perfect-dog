//
//  User.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-01.
//

import Foundation

class User {
    var uid: String
    var email: String?
    var displayName: String?

    init(uid: String, displayName: String?, email: String?) {
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }

}
