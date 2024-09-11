//
//  ViewController.swift
//  Weather
//
//  Created by Georgy on 2024-09-09.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var iconView: UIImageView = {
        let icon = UIImageView()
        let weatherIconImage = UIImage(named: "weatherIcon")
        icon.image = weatherIconImage
        icon.layer.cornerRadius = 25
        icon.clipsToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private lazy var getWeatherButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setTitle("Get Weather", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapGetWeatherButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(temperatureLabel)
        self.view.addSubview(iconView)
        self.view.addSubview(getWeatherButton)
        
        createConstraints()
    }

    @objc func didTapGetWeatherButton() {
        temperatureLabel.text = "Tap"
    }
    
    func createConstraints() {
        NSLayoutConstraint.activate([
            temperatureLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            temperatureLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            iconView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            iconView.heightAnchor.constraint(equalToConstant: 200),
            iconView.widthAnchor.constraint(equalToConstant: 200),
            
            getWeatherButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getWeatherButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            getWeatherButton.heightAnchor.constraint(equalToConstant: 50),
            getWeatherButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3)
        ])
    }
    
}

