//
//  ViewController.swift
//  Tabla
//
//  Created by Antonio Peralta on 6/30/20.
//  Copyright © 2020 Antonio Peralta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var contenidoTable:Array = ["pdf1", "pdf2", "pdf3", "pdf4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        celda.textLabel?.text = contenidoTable[indexPath.row]
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "pantalla2Segue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantalla2Segue"{
            let idPdfObtenido = sender as! Int
            let objPantalla2:ViewController2ViewController = segue.destination as! ViewController2ViewController
            objPantalla2.nombrePdfObtenido = contenidoTable[idPdfObtenido]
        }
    }
}

