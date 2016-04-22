//
//  ViewController.swift
//  GetPicture
//
//  Created by kaitouLee on 16/4/22.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var iv: UIImageView!

    @IBAction func GetButPressed(sender: AnyObject) {
        let  c = UIImagePickerController()
        //指定获取方式Camera是通过摄像头获取本例用的是本地图片库
        c.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        c.delegate = self
        //获取图片 animated是否获取动画效果 completion完成事件控件
        self.presentViewController(c, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let image:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        iv.image = image
        //获取到图片到imageView上显示
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

