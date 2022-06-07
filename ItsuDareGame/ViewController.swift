//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by Risako Kato on 2022/06/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doushitaLabel: UILabel!
    
    let itsuArray: [String] = ["1年前", "1週間前", "昨日", "今日"]
    let dokoArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doushitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]

    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokoArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        if(index == 3) {
            index = 0
        } else {
            index = index + 1
        }
    }
    
    @IBAction func reset(){
        itsuLabel.text = "-----"
        dokodeLabel.text = "-----"
        daregaLabel.text = "-----"
        doushitaLabel.text = "-----"
        
        index = 0
    }
    
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doushitaIndex = Int.random(in: 0...3)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokoArray[dokoIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
    }

}

