//
//  ViewController.swift
//  TextFieldTextView
//
//  Created by 关东升 on 2016-11-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - 实现UITextFieldDelegate委托协议方法
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField获得焦点，点击return键")
        return true
    }
    
    // MARK: - 实现UITextViewDelegate委托协议方法
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            print("TextView获得焦点，点击return键")
            return false
        }
        return true
    }

}

