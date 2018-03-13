//
//  ViewController.swift
//  Swich
//
//  Created by gdcp on 2018/3/13.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let swi = UISwitch()
//        swi.frame = CGRect(x: 100, y: 50, width: 20, height: 20)
//        swi.onTintColor = UIColor.green
//        swi.tintColor = UIColor.brown
//        swi.thumbTintColor = UIColor.white
//        swi.addTarget(self, action: #selector(changeColor(swi:)), for: .touchUpInside)
//        
//        self.view.addSubview(swi)

//        let page = UIPageControl(frame: CGRect(x: 100, y: 100, width: 100, height: 20))
//        page.numberOfPages = 4
//        page.currentPageIndicatorTintColor = UIColor.red
//        page.pageIndicatorTintColor = UIColor.black
//        self.view.backgroundColor = UIColor.white
//        page.addTarget(self, action: #selector(changevalue(page:)), for: .valueChanged)
//        self.view.addSubview(page)
        let seg = UISegmentedControl(items: ["1","2","3","4"])
        seg.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        seg.insertSegment(withTitle: "sd", at: 2, animated: true)
        seg.removeSegment(at: 0, animated: true)
        seg.setTitle("6", forSegmentAt: 3)

        self.view.addSubview(seg)
        
    }
    
    func changevalue(page:UIPageControl) {
        print(page.currentPage)
    }
    
    func changeColor(swi:UISwitch){
        if swi.isOn {
            self.view.backgroundColor = UIColor.darkGray
        } else{
            self.view.backgroundColor = UIColor.black
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

