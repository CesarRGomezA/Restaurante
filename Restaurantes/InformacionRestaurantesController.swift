//
//  InformacionRestaurantesController.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RestaurantesController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbRestaurantes: UITableView!
    var restaurantes : [Restaurante] = []
    override func viewDidLoad() {
        restaurantes.append(Restaurante(nombre: "El pollo feliz", direccion: "calle ocho", telefono: "6523655236", descripcion: "comida rica"))
        restaurantes.append(Restaurante(nombre: "El pato feliz", direccion: "calle uno", telefono: "652264", descripcion: "comida muy rica"))
        restaurantes.append(Restaurante(nombre: "El elefante feliz", direccion: "calle dos", telefono: "65412328236", descripcion: "comida muy muy rica"))
        restaurantes.append(Restaurante(nombre: "El leon feliz", direccion: "calle tres", telefono: "6523655236", descripcion: "comida muy muy muy rica"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante")
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        return celda!
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesMateria"{
            let destino = segue.destination as? DetallesRestaurantes
            destino?.restaurante = restaurantes[tbRestaurantes.indexPathForSelectedRow!.row]
        }
    }
    
    
    
    
}
