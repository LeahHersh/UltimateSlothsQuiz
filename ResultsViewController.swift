//
//  ResultsViewController.swift
//  Ultimate Sloths Quiz
//
//  Created by admin on 5/24/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var total:Int=0;
           var noCorrect:Int=0
    @IBOutlet weak var resultsMessageLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    

    
    override func viewDidLoad() {
       
        super.viewDidLoad()
            resultsMessageLabel.text = "You got \(noCorrect) out of \(total)"
        resultsMessageLabel.text = "Hey sloths fan."
        // Do any additional setup after loading the view.
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
