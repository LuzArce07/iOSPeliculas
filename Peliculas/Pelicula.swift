//
//  Pelicula.swift
//  Peliculas
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

//Las clases van en mayuscula y en singular
class Pelicula {
    
    var titulo : String
    var director : String
    var año : Int
    
    init(titulo : String, director : String, año : Int) {
        self.titulo = titulo
        self.director = director
        self.año = año
        
    }
    
}
