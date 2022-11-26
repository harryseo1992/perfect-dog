//
//  API.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-10.
//

import Foundation


class Api : ObservableObject{
    @Published var dogs = [Dog]()
    var dogsBreeds: [String] = ["akita","boxer","beagle"]
    let randomInt = Int.random(in: 0..<2)
    
    func loadData(completion:@escaping (Dog) -> ()) {
        guard let url = URL(string: "https://dog.ceo/api/breed/\(dogsBreeds[randomInt])/images/random") else {
            print("Invalid url...")
            return
        }
            URLSession.shared.dataTask(with: url) { data, response, error in
                let dogs = try! JSONDecoder().decode(Dog.self, from: data!)
                print(dogs)
            DispatchQueue.main.async {
                completion(dogs)
            }
        }.resume()
    }
}