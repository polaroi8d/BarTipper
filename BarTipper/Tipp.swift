//
//  Tipp.swift
//  BarTipper
//
//  Created by Levi on 2016. 12. 03..
//  Copyright © 2016. levi. All rights reserved.
//

import Foundation

class Tipp {
    let tipp = 0
    
    var tippsalary = 0.0
    var tippSpeed = 0
    var tippService = 0
    var tippFood = 0
    var tippAmount = 0.0
    
    func calculateTipp() -> Double {
        var recommendedTipp = tippAmount * 0.1
        var rating: Double
        
        if ( tippSpeed == 0 && tippService == 0 && tippFood == 0 ){
            return recommendedTipp
        } else if ( tippSpeed == 5 && tippService == 5 && tippFood == 5 ) {
            recommendedTipp *= 3
            if ( tippsalary == 100000 ){
                return recommendedTipp + recommendedTipp * (recommendedTipp/100000)
            } else if ( tippsalary == 300000 ){
                return recommendedTipp + recommendedTipp * (recommendedTipp/50000)
            } else if ( tippsalary == 6000000){
                return recommendedTipp + recommendedTipp * (recommendedTipp/10000)
            } else {
                return recommendedTipp
            }
        } else {
            rating = Double ((tippSpeed * tippService * tippFood)) / Double (25)
            // value between 2 and 100 divide by 25
            return recommendedTipp * rating
        }
    }
}
