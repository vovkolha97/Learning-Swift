//
//  ViewController.swift
//  Try2
//
//  Created by Вовк Ольга' on 1/9/19.
//  Copyright © 2019 Вовк Ольга'. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Labe: UILabel!
    @IBAction func Butt(_ sender: Any) {
        var index = Int.random(in: 0..<array.count)
        
        while(true){
            if(Labe.text != array[index]){
                break
            } else{
              index = Int.random(in: 0..<array.count)
            }
            
        }
              Labe.text = array[index]
    }
    var array = ["drink more water", "watch a comedy", "call to old friend", "take a bath with foam", "take a break", "work hard", "read book", "go for a walk", "don't die", "don't forget about your friends", "remember - everything is possible", "clean your desk", "don't eat alone", "take care of your shoes"]
    
    
    @IBOutlet weak var b: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

