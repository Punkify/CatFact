//
//  ViewController.swift
//  CatFact
//
//  Created by Developer on 26/11/21.
//

import UIKit

class FactViewController: UIViewController {
    
    @IBOutlet weak var displayFactLabel: UILabel!
    
    var factBrain = FactBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        
    }
    
    func fetchData() {
        
       displayFactLabel.text = factBrain.loadFact()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        fetchData()
        
    }

}

