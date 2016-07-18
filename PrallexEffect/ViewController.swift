//
//  ViewController.swift
//  PrallexEffect
//
//  Created by Sandeep Kumar on 5/30/16.
//  Copyright © 2016 Sandeep Kumar. All rights reserved.
//

import UIKit

let defaultHeight = 234

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = "Hawaiian narrative indicates the name's origin in the legend of Hawaiʻiloa, the Polynesian navigator attributed with discovery of the Hawaiian Islands. The story relates how he named the island of Kauaʻi after a favorite son; a possible translation of Kauaʻi is \"place around the neck\", meaning how a father would carry a favorite child. Another possible translation is \"food season\". Kauaʻi's origins are volcanic, the island having been formed by the passage of the Pacific Plate over the Hawaii hotspot. At approximately six million years old, it is the oldest of the main islands. The highest peak on this mountainous island is Kawaikini at 5,243 feet (1,598 m). The second highest peak is Mount Waiʻaleʻale near the center of the island, 5,148 feet (1,569 m) above sea level. One of the wettest spots on earth, with an annual average rainfall of 460 inches or 1170 cm, is located on the east side of Mount Waiʻaleʻale. The high annual rainfall has eroded deep valleys in the central mountains, carving out canyons with many scenic waterfalls. On the west side of the island, Waimea town is located at the mouth of the Waimea River, whose flow formed Waimea Canyon, one of the world's most scenic canyons, which is part of Waimea Canyon State Park. At 3,000 feet (914 m) deep, Waimea Canyon is often referred to as \"The Grand Canyon of the Pacific\". Kokeo Point lies on the south side of the island. The Na Pali Coast is a center for recreation in a wild setting, including kayaking past the beaches, or hiking on the trail along the coastal cliffs.[6] The headland, Kuahonu Point, is on the south-east of the island."
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView == self.scrollView {
            let height =  -scrollView.contentOffset.y + CGFloat(defaultHeight)
            if height < 0 {
                return
            }
            heightConstraint.constant = height
            topConstraint.constant = scrollView.contentOffset.y + 64
            view.layoutIfNeeded()
            
        }
    }
}

