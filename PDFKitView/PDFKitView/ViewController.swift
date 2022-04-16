//
//  ViewController.swift
//  PDFKitView
//
//  Created by Student G225 08 on 14/03/2022.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let pdfView = PDFView(frame: view2.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view2.addSubview(pdfView)
        
        pdfView.autoScales = true
        
        let fileURL = Bundle.main.url(forResource: "testowyPdf", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
    }
}

