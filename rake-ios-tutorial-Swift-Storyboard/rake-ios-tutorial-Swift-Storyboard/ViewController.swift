//
//  ViewController.swift
//  rake-ios-tutorial-Swift-Storyboard
//
//  Created by 송혜영(Hyeyoung Song)/Data Infrastructure팀/SKP on 11/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnTrack: UIButton!
    @IBOutlet weak var btnFlush: UIButton!
    @IBOutlet weak var toggleDmpMode: UISwitch!

    var rake: Rake?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rake = Rake.sharedInstance()
        print("rake libversion :\(String(describing: rake?.libVersion()))")
        
    }
    
    @IBAction func actionBtnTrack(_ sender: AnyObject) {
        do {
            let shuttle = DiRakeClientTestIOsSentinelShuttle()
            shuttle.ab_test_group("1")
            
            try rake?.track(shuttle.toDictionary())
            
            // [RAKE-803] 현재의 trackCount 확인하는 API 사용 예제 (swift)
            self.rake?.getCurrentTrackCount({ trackCount in
                print("track (trackCount:\(trackCount))")
            })
            
        } catch let error {
            print("\(error)")
        }
    }
    
    @IBAction func actionBtnFlush(_ sender: AnyObject) {
        rake?.flush()
        print("flush")
    }
}
