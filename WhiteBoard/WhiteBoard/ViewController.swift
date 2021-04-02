//
//  ViewController.swift
//  WhiteBoard
//
//  Created by Shubham Kulthe on 09/09/20.
//  Copyright © 2020 Shubham Kulthe. All rights reserved.
//

import UIKit
import PencilKit

class ViewController: UIViewController,PKCanvasViewDelegate,PKToolPickerObserver {

    @IBOutlet weak var canvasView: PKCanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        canvasView.delegate = self
        canvasView.drawing = drawing
        
        canvasView.alwaysBounceVertical = true
        
        if let window = parent?.view.window,
            let toolPicker = PKToolPicker.shared(for: window){
            toolPicker.setVisible(true, forFirstResponder: canvasView)
            toolPicker.addObserver(canvasView)
           
            canvasView.becomeFirstResponder()
        }
    }

    let canvasWidth:CGFloat = 768
    let overscrollHight:CGFloat = 768
    var drawing = PKDrawing()
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
    }
    @IBAction func clearButtonTapped(_ sender: UIBarButtonItem) {
    }
    
}

