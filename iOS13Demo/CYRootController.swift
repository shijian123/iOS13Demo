//
//  CYRootController.swift
//  iOS13Demo
//
//  Created by zcy on 2019/9/24.
//  Copyright © 2019 CY. All rights reserved.
//

import UIKit

class CYRootController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        title = "iOS13"
    
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 100, y: 100, width: 60, height: 30)
        btn.setTitle("按钮", for: .normal)
        btn.addTarget(self, action: #selector(clickBtnMethod), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc func clickBtnMethod(sender: UIButton){
        let alertView = UIAlertController(title: "提示", message: "点击一次", preferredStyle: .alert)
        let alertAct = UIAlertAction(title: "确认", style: .default) { (action) in
            print("确认点击")
        }
        alertView.addAction(alertAct)
        self.present(alertView, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
