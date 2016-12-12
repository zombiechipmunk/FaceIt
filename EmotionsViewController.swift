//
//  EmotionsViewController.swift
//  FaceIt
//
//  Created by Tea Jakić on 12/12/2016.
//  Copyright © 2016 Tea Jakić. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController
{
    private let emotionalFaces: Dictionary <String, FacialExpression> = [
        "angry" : FacialExpression( eyes: .Closed, eyeBrows: .Furrowed,mouth: .Frown),
        "happy": FacialExpression(eyes: .Open, eyeBrows: .Normal, mouth: .Smile),
        "worried": FacialExpression(eyes: .Open, eyeBrows: .Relaxed, mouth: .Smirk),
        "mischievious": FacialExpression(eyes: .Open, eyeBrows: .Furrowed, mouth: .Grin)
    ]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationvc = segue.destination
        if let  facevc = destinationvc as? FaceViewController{
            if let identifier = segue.identifier {
                if let expression = emotionalFaces[identifier]{
                    facevc.expression = expression
                }
            }
        }
    }
}
    


