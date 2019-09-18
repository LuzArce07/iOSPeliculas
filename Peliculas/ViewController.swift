//
//  ViewController.swift
//  Peliculas
//
//  Created by Luz on 9/18/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "La risa en vacaciones 3", director: "Vicente Fox", año: 1890))
        peliculas.append(Pelicula(titulo: "Iron Man 4", director: "Marvel", año: 2021))
        peliculas.append(Pelicula(titulo: "Kung fu panda 4", director: "Dreamworks", año: 2030))
        
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    
    }
    
    //Filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return peliculas.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = "\(peliculas[indexPath.row].año)" //Casting para int
        
        return celda!
        
    }
    
}

