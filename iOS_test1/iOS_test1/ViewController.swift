//
//  ViewController.swift
//  iOS_test
//
//  Created by admin on 2020/12/8.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTouchDown(_ sender: Any) {
        let flutterEngine = ((UIApplication.shared.delegate) as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .fullScreen
        self.present(flutterViewController, animated: true, completion: nil)
    }

}
