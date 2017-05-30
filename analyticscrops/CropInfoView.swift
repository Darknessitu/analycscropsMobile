//
//  CropInfoView.swift
//  analyticscrops
//
//  Created by Veevart on 5/24/17.
//  Copyright © 2017 aniespica. All rights reserved.
//

import UIKit
import Firebase

class CropInfoView: UIView {
    
    var crop: Crop? {
        didSet {
            
            areaText.text = crop?.Area?.description
            startDateText.text = crop?.StartDate
            cropVarietyText.text = crop?.CropVariety
            irrigationTypeText.text = crop?.IrrigationType
            fieldCapacityText.text = crop?.FieldCapacity?.description
            laraText.text = crop?.Lara?.description
            
            if  crop?.isCalculate != nil {
                isCalculateText.isChecked = (crop?.isCalculate)!
            }else{
                isCalculateText.isChecked = false
            }
            
        }
    }
    
    
    let cropInfoContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let infoTitle: UILabel = {
        let tv = UILabel()
        tv.text = "INFORMACIÓN"
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.backgroundColor = UIColor(r: 80, g: 109, b: 131)
        tv.textColor = UIColor.white
        tv.textAlignment = .center
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let lotesTitle: UILabel = {
        let tv = UILabel()
        tv.text = "LOTES"
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.backgroundColor = UIColor(r: 80, g: 109, b: 131)
        tv.textColor = UIColor.white
        tv.textAlignment = .center
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    //Area
    let areaContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let areaTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Area del Cultivo"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let areaText: UILabel = {
        let tv = UILabel()
        tv.text = "Some text sample..."
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textColor = UIColor(r: 14, g: 32, b: 58)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let areaSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 119, g: 137, b: 162)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //Variedad de cultivo

    let cropVarietyContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()

    let cropVarietyTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Variedad de Cultivo"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let cropVarietyText: UILabel = {
        let tv = UILabel()
        tv.text = "Some text sample..."
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textColor = UIColor(r: 14, g: 32, b: 58)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let cropVarietySeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 119, g: 137, b: 162)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //Capacidad de campo
    let fieldCapacityContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let fieldCapacityTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Capacidad de Campo"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let fieldCapacityText: UILabel = {
        let tv = UILabel()
        tv.text = "Some text sample..."
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textColor = UIColor(r: 14, g: 32, b: 58)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let fieldCapacitySeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 119, g: 137, b: 162)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //Fecha de inicio
    let startDateContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let startDateTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Fecha de Inicio"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let startDateText: UILabel = {
        let tv = UILabel()
        tv.text = "Some text sample..."
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textColor = UIColor(r: 14, g: 32, b: 58)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let startDateSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 119, g: 137, b: 162)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //Tipo de riego
    let irrigationTypeContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let irrigationTypeTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Tipo de Riego"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let irrigationTypeText: UILabel = {
        let tv = UILabel()
        tv.text = "Some text sample..."
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textColor = UIColor(r: 14, g: 32, b: 58)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let irrigationTypeSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 119, g: 137, b: 162)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //Lara
    let laraContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let laraTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "LARA"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let laraText: UILabel = {
        let tv = UILabel()
        tv.text = "Some text sample..."
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textColor = UIColor(r: 14, g: 32, b: 58)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let laraSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 119, g: 137, b: 162)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //Se calcula los valores
    let isCalculateContainerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let isCalculateTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Se Calcula los Valores"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = UIColor(r: 119, g: 137, b: 162)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let isCalculateText: CheckBox = {
        let tv = CheckBox(frame: CGRect(x: 0, y: 0, width: 200, height: 190))
        tv.isChecked = true
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //Info title
        addSubview(infoTitle)
        infoTitle.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        infoTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        infoTitle.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        infoTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Lotes title
        addSubview(lotesTitle)
        lotesTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        lotesTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        lotesTitle.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        lotesTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        //Area
        addSubview(areaContainerView)
        areaContainerView.topAnchor.constraint(equalTo: infoTitle.bottomAnchor).isActive = true
        areaContainerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        areaContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        areaContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        areaContainerView.addSubview(areaTextLabel)
        areaContainerView.addSubview(areaText)
        areaContainerView.addSubview(areaSeparatorView)
        
        //label
        areaTextLabel.topAnchor.constraint(equalTo: areaContainerView.topAnchor, constant: 20).isActive = true
        areaTextLabel.leftAnchor.constraint(equalTo: areaContainerView.leftAnchor, constant: 5).isActive = true
        areaTextLabel.widthAnchor.constraint(equalTo: areaContainerView.widthAnchor).isActive = true
        areaTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        areaText.topAnchor.constraint(equalTo: areaTextLabel.bottomAnchor, constant: 30).isActive = true
        areaText.leftAnchor.constraint(equalTo: areaContainerView.leftAnchor, constant: 5).isActive = true
        areaText.widthAnchor.constraint(equalTo: areaContainerView.widthAnchor).isActive = true
        areaText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //separator
        areaSeparatorView.leftAnchor.constraint(equalTo: areaContainerView.leftAnchor).isActive = true
        areaSeparatorView.topAnchor.constraint(equalTo: areaText.bottomAnchor, constant: 15).isActive = true
        areaSeparatorView.widthAnchor.constraint(equalTo: areaContainerView.widthAnchor).isActive = true
        areaSeparatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        
        //Variedad de cultivo
        addSubview(cropVarietyContainerView)
        cropVarietyContainerView.topAnchor.constraint(equalTo: areaContainerView.bottomAnchor).isActive = true
        cropVarietyContainerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        cropVarietyContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        cropVarietyContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        cropVarietyContainerView.addSubview(cropVarietyTextLabel)
        cropVarietyContainerView.addSubview(cropVarietyText)
        cropVarietyContainerView.addSubview(cropVarietySeparatorView)
        
        //label
        cropVarietyTextLabel.topAnchor.constraint(equalTo: cropVarietyContainerView.topAnchor, constant: 20).isActive = true
        cropVarietyTextLabel.leftAnchor.constraint(equalTo: cropVarietyContainerView.leftAnchor, constant: 5).isActive = true
        cropVarietyTextLabel.widthAnchor.constraint(equalTo: cropVarietyContainerView.widthAnchor).isActive = true
        cropVarietyTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        cropVarietyText.topAnchor.constraint(equalTo: cropVarietyTextLabel.bottomAnchor, constant: 30).isActive = true
        cropVarietyText.leftAnchor.constraint(equalTo: cropVarietyContainerView.leftAnchor, constant: 5).isActive = true
        cropVarietyText.widthAnchor.constraint(equalTo: cropVarietyContainerView.widthAnchor).isActive = true
        cropVarietyText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //separator
        cropVarietySeparatorView.leftAnchor.constraint(equalTo: cropVarietyContainerView.leftAnchor).isActive = true
        cropVarietySeparatorView.topAnchor.constraint(equalTo: cropVarietyText.bottomAnchor, constant: 15).isActive = true
        cropVarietySeparatorView.widthAnchor.constraint(equalTo: cropVarietyContainerView.widthAnchor).isActive = true
        cropVarietySeparatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //Capacidad de campo
        addSubview(fieldCapacityContainerView)
        fieldCapacityContainerView.topAnchor.constraint(equalTo: cropVarietyContainerView.bottomAnchor).isActive = true
        fieldCapacityContainerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        fieldCapacityContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        fieldCapacityContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        fieldCapacityContainerView.addSubview(fieldCapacityTextLabel)
        fieldCapacityContainerView.addSubview(fieldCapacityText)
        fieldCapacityContainerView.addSubview(fieldCapacitySeparatorView)
        
        //label
        fieldCapacityTextLabel.topAnchor.constraint(equalTo: fieldCapacityContainerView.topAnchor, constant: 20).isActive = true
        fieldCapacityTextLabel.leftAnchor.constraint(equalTo: fieldCapacityContainerView.leftAnchor, constant: 5).isActive = true
        fieldCapacityTextLabel.widthAnchor.constraint(equalTo: fieldCapacityContainerView.widthAnchor).isActive = true
        fieldCapacityTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        fieldCapacityText.topAnchor.constraint(equalTo: fieldCapacityTextLabel.bottomAnchor, constant: 30).isActive = true
        fieldCapacityText.leftAnchor.constraint(equalTo: fieldCapacityContainerView.leftAnchor, constant: 5).isActive = true
        fieldCapacityText.widthAnchor.constraint(equalTo: fieldCapacityContainerView.widthAnchor).isActive = true
        fieldCapacityText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //separator
        fieldCapacitySeparatorView.leftAnchor.constraint(equalTo: fieldCapacityContainerView.leftAnchor).isActive = true
        fieldCapacitySeparatorView.topAnchor.constraint(equalTo: fieldCapacityText.bottomAnchor, constant: 15).isActive = true
        fieldCapacitySeparatorView.widthAnchor.constraint(equalTo: fieldCapacityContainerView.widthAnchor).isActive = true
        fieldCapacitySeparatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //StartDate
        addSubview(startDateContainerView)
        startDateContainerView.topAnchor.constraint(equalTo: infoTitle.bottomAnchor).isActive = true
        startDateContainerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        startDateContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        startDateContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        startDateContainerView.addSubview(startDateTextLabel)
        startDateContainerView.addSubview(startDateText)
        startDateContainerView.addSubview(startDateSeparatorView)
        
        //label
        startDateTextLabel.topAnchor.constraint(equalTo: startDateContainerView.topAnchor, constant: 20).isActive = true
        startDateTextLabel.leftAnchor.constraint(equalTo: startDateContainerView.leftAnchor, constant: 5).isActive = true
        startDateTextLabel.widthAnchor.constraint(equalTo: startDateContainerView.widthAnchor).isActive = true
        startDateTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        startDateText.topAnchor.constraint(equalTo: startDateTextLabel.bottomAnchor, constant: 30).isActive = true
        startDateText.leftAnchor.constraint(equalTo: startDateContainerView.leftAnchor, constant: 5).isActive = true
        startDateText.widthAnchor.constraint(equalTo: startDateContainerView.widthAnchor).isActive = true
        startDateText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //separator
        startDateSeparatorView.leftAnchor.constraint(equalTo: startDateContainerView.leftAnchor).isActive = true
        startDateSeparatorView.topAnchor.constraint(equalTo: startDateText.bottomAnchor, constant: 15).isActive = true
        startDateSeparatorView.widthAnchor.constraint(equalTo: startDateContainerView.widthAnchor).isActive = true
        startDateSeparatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //Tipo de riego
        addSubview(irrigationTypeContainerView)
        irrigationTypeContainerView.topAnchor.constraint(equalTo: startDateContainerView.bottomAnchor).isActive = true
        irrigationTypeContainerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        irrigationTypeContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        irrigationTypeContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        irrigationTypeContainerView.addSubview(irrigationTypeTextLabel)
        irrigationTypeContainerView.addSubview(irrigationTypeText)
        irrigationTypeContainerView.addSubview(irrigationTypeSeparatorView)
        
        //label
        irrigationTypeTextLabel.topAnchor.constraint(equalTo: irrigationTypeContainerView.topAnchor, constant: 20).isActive = true
        irrigationTypeTextLabel.leftAnchor.constraint(equalTo: irrigationTypeContainerView.leftAnchor, constant: 5).isActive = true
        irrigationTypeTextLabel.widthAnchor.constraint(equalTo: irrigationTypeContainerView.widthAnchor).isActive = true
        irrigationTypeTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        irrigationTypeText.topAnchor.constraint(equalTo: irrigationTypeTextLabel.bottomAnchor, constant: 30).isActive = true
        irrigationTypeText.leftAnchor.constraint(equalTo: irrigationTypeContainerView.leftAnchor, constant: 5).isActive = true
        irrigationTypeText.widthAnchor.constraint(equalTo: irrigationTypeContainerView.widthAnchor).isActive = true
        irrigationTypeText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //separator
        irrigationTypeSeparatorView.leftAnchor.constraint(equalTo: irrigationTypeContainerView.leftAnchor).isActive = true
        irrigationTypeSeparatorView.topAnchor.constraint(equalTo: irrigationTypeText.bottomAnchor, constant: 15).isActive = true
        irrigationTypeSeparatorView.widthAnchor.constraint(equalTo: irrigationTypeContainerView.widthAnchor).isActive = true
        irrigationTypeSeparatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //lara
        addSubview(laraContainerView)
        laraContainerView.topAnchor.constraint(equalTo: irrigationTypeContainerView.bottomAnchor).isActive = true
        laraContainerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        laraContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        laraContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        laraContainerView.addSubview(laraTextLabel)
        laraContainerView.addSubview(laraText)
        laraContainerView.addSubview(laraSeparatorView)
        
        //label
        laraTextLabel.topAnchor.constraint(equalTo: laraContainerView.topAnchor, constant: 20).isActive = true
        laraTextLabel.leftAnchor.constraint(equalTo: laraContainerView.leftAnchor, constant: 5).isActive = true
        laraTextLabel.widthAnchor.constraint(equalTo: laraContainerView.widthAnchor).isActive = true
        laraTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        laraText.topAnchor.constraint(equalTo: laraTextLabel.bottomAnchor, constant: 30).isActive = true
        laraText.leftAnchor.constraint(equalTo: laraContainerView.leftAnchor, constant: 5).isActive = true
        laraText.widthAnchor.constraint(equalTo: laraContainerView.widthAnchor).isActive = true
        laraText.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //separator
        laraSeparatorView.leftAnchor.constraint(equalTo: laraContainerView.leftAnchor).isActive = true
        laraSeparatorView.topAnchor.constraint(equalTo: laraText.bottomAnchor, constant: 15).isActive = true
        laraSeparatorView.widthAnchor.constraint(equalTo: laraContainerView.widthAnchor).isActive = true
        laraSeparatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        //se calcula los valores
        addSubview(isCalculateContainerView)
        isCalculateContainerView.topAnchor.constraint(equalTo: laraContainerView.bottomAnchor).isActive = true
        isCalculateContainerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        isCalculateContainerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5, constant: -40).isActive = true
        isCalculateContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        isCalculateContainerView.addSubview(isCalculateTextLabel)
        isCalculateContainerView.addSubview(isCalculateText)
        
        //label
        isCalculateTextLabel.topAnchor.constraint(equalTo: isCalculateContainerView.topAnchor, constant: 20).isActive = true
        isCalculateTextLabel.leftAnchor.constraint(equalTo: isCalculateContainerView.leftAnchor, constant: 5).isActive = true
        isCalculateTextLabel.widthAnchor.constraint(equalTo: isCalculateContainerView.widthAnchor).isActive = true
        isCalculateTextLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //text
        isCalculateText.topAnchor.constraint(equalTo: isCalculateTextLabel.bottomAnchor, constant: 10).isActive = true
        isCalculateText.leftAnchor.constraint(equalTo: isCalculateContainerView.leftAnchor, constant: -5).isActive = true
        isCalculateText.widthAnchor.constraint(equalToConstant: 50).isActive = true
        isCalculateText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
