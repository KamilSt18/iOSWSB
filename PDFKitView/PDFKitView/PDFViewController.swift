//
//  PDFViewController.swift
//  PDFKitView
//
//  Created by Student G225 08 on 14/03/2022.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        
        pdfView.autoScales = true
        
        let fileURL = Bundle.main.url(forResource: "testowyPdf", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
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
