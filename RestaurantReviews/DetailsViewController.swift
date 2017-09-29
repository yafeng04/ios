//
//  DetailsViewController.swift
//  RestaurantReviews
//
//  Created by Kunwei Du on 29/9/17.
//  Copyright © 2017 iphone100plus. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    var titleText:String?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let titleText = titleText {
            titleLabel.text = titleText
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    let backgroundImages = ["1","2","3","4"]
    
    func randomImgPicker() {
        let randomNumber = Int(arc4random_uniform(UInt32(backgroundImages.count))) // generating random number
        imageView.image = UIImage(named: backgroundImages[randomNumber])
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        randomImgPicker()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
