//
//  ViewController2ViewController.swift
//  Tabla
//
//  Created by Antonio Peralta on 7/1/20.
//  Copyright © 2020 Antonio Peralta. All rights reserved.
//

import UIKit
import WebKit

class ViewController2ViewController: UIViewController {

    @IBOutlet var viewWeb: WKWebView!
    
    var nombrePdfObtenido:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mostrarPdf()
    }
    
    func mostrarPdf(){
        let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfObtenido!, ofType: "pdf", inDirectory: "PDF")!)
        
        let datosPdf = try? Data(contentsOf: direccionPdf)
        
        viewWeb.load(datosPdf!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPdf)
    }
}

