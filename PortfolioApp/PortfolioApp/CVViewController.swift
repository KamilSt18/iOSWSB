//
//  CVViewController.swift
//  PortfolioApp
//
//  Created by Student G225 08 on 14/03/2022.
//

import UIKit
import PDFKit

class CVViewController: UIViewController {

    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pdfView = PDFView(frame: view2.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view2.addSubview(pdfView)
        
        pdfView.autoScales = true
        
        let fileURL = Bundle.main.url(forResource: "mojeCV", withExtension: "pdf")
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
