//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by An on 29/09/2019.
//  Copyright © 2019 An. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    @IBOutlet var subject: UILabel!
    @IBOutlet var contents: UILabel!
    @IBOutlet var img: UIImageView!
    
    var param: MemoData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        self.navigationItem.title = dateString
    }
}
