//
//  factBrain.swift
//  CatFact
//
//  Created by Developer on 26/11/21.
//

import Foundation

struct FactBrain {
    
    var facts: Fact?
    
    mutating func loadFact() -> String {
        
        let urlString = "https://catfact.ninja/fact"
        if let url = URL(string: urlString) {
            if  let data = try? Data(contentsOf: url) {
                do {
                    let json = try JSONDecoder().decode(Fact.self, from: data)
                    facts = json
                    return "\(facts!.fact)"
                }
                catch {
                    print(error)
                }
            }
        }
        return "\(facts!.fact)"
    }
}
