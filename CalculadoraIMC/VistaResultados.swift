//
//  VistaResultados.swift
//  CalculadoraIMC
//
//  Created by Jose Navarro Alabarta on 5/1/16.
//  Copyright © 2016 Jose Navarro Alabarta. All rights reserved.
//

import UIKit

class VistaResultados: UIViewController {

    @IBOutlet weak var resultIMC: UILabel!
    var indiceIM : Double=0.0
    var idioma: String = ""
    
    @IBOutlet weak var clasificacion: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        resultIMC.text=String(indiceIM)
        clasificacion.text = clasificarIMC(imc: indiceIM)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clasificarIMC(imc : Double) -> String {
        if (imc < 16.00 ){
            if idioma == "en" {
                return "Underweight: \nSevere thinness"
            }else if idioma == "ca"{
                return "Infrapès: \nPrimor Severa"
            }else {
                //if idioma == "es" {
                return "Infrapeso: \nDelgadez Severa"
            }
        }else if ( imc >= 16.00 && imc < 16.99){
            if idioma == "en" {
                return "Underweight: \nModerate thinness"
            }else if idioma == "ca"{
                return " Infrapès: \nPrimor moderada"
            }else {
                //if idioma == "es" {
                return " Infrapeso: \nDelgadez Severa"
            }
        }else if ( imc >= 17.00 && imc < 18.49){
            if idioma == "en" {
                return "Underweight: \nAccpetable thinness"
            }else if idioma == "ca"{
                return " Infrapès: \nPrimor moderada"
            }else {
                //if idioma == "es" {
                return " Infrapeso: \nDelgadez moderada"
            }
        }else if ( imc >= 18.50 && imc < 24.99){
            if idioma == "en" {
                return "Normal weight"
            }else if idioma == "ca"{
                return "Pès Normal"
            }else {
                //if idioma == "es" {
                 return "Peso Normal"
            }
        }else if ( imc >= 25.00 && imc < 29.99){
            if idioma == "en" {
                return "Overweight"
            }else if idioma == "ca"{
                return "Sobrepès"
            }else {
                //if idioma == "es" {
                return "Sobrepeso"
            }
        }else if ( imc >= 30.00 && imc < 34.99){
            if idioma == "en" {
                return "Obese: \nType I"
            }else if idioma == "ca"{
                return "Obesitat: \nTipus I"
            }else {
                // if idioma == "es" {
                return "Obeso: Tipo I"
            }
        }else if ( imc >= 35.00 && imc < 40.00){
            if idioma == "en" {
                return "Obese: \nType II"
            }else if idioma == "ca"{
                return "Obesitat: \nTipus II"
            }else {
            //if idioma == "es" {
                return "Obeso: Tipo II"
            }
        }else{
            if idioma == "en" {
                return "Obese: \nType III"
            }else if idioma == "ca"{
                 return "Obesitat: \nTipus III"
            }else {
                return "Obeso: Tipo III"
            }
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
