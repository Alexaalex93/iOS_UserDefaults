//
//  ViewController.swift
//  UserDefs
//
//  Created by cice on 23/1/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        defaults.setValue(25, forKey: "Edad")
        defaults.setValue(true, forKey: "UserTouchID")
        defaults.setValue(CGFloat.pi, forKey: "Pi")
        defaults.setValue("Hola", forKey: "Saludo")
        defaults.setValue(Date(), forKey: "Última actualización")
        let array = ["Hola", "Mundo"]
        defaults.setValue(array, forKey: "Array Guardado")
        let dict = ["Nombre": "Pablo", "Pais": "España"]
        defaults.setValue(dict, forKey: "DictGuardado")

        //Nil coalescing operator
        let myArray = defaults.object(forKey: "Array Guardado") as? [String] ?? [String]()  //Accedemos a un elemento con la Key guardada. Lo ultimo, si existe nos devuelve un array de string, si no existe crea un array de string ( Eso significa la ??)
        let myDict = defaults.object(forKey: "DictGuardado") as? [String:String] ?? [String:String]()
        
        //Normas para guardar objetos en UserDefaults
            //1 - Tipos Primitivos o clases que cumplan la 2ª regla
            //2 - Si es una clase, esta debe cumplir el protocolo en NSCoding
            //3 - Array / Dictionaries - Todos sus Keys o Values deben cumplir la norma 1 o 2
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

