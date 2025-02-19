//
//  ViewController.swift
//  Phone
//
//  Created by Dias Kaussov on 19.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var names = [
        Profile(name: "Daniyar", phone: "87777777777", color: .gray),
        Profile(name: "Miras", phone: "877777777", color: .gray),
        Profile(name: "Madiyar", phone: "877777777", color: .gray),
        Profile(name: "Altair", phone: "877777777", color: .gray),
        Profile(name: "Raushan", phone: "877777777", color: .gray),
        Profile(name: "Dias", phone: "877777777", color: .gray),
        Profile(name: "Feraya", phone: "877777777", color: .gray),
        Profile(name: "Farabi", phone: "877777777", color: .gray),
        Profile(name: "Gulnar", phone: "877777777", color: .gray),
        Profile(name: "Nurlybek", phone: "877777777", color: .gray),
        Profile(name: "Yersin", phone: "877777777", color: .gray)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        tableView.dataSource = self
        tableView.delegate = self
        navigationDesign()
    }

    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
        // пока незнаю какой именно цвет использовал Apple
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableView
    }()
    
    @objc
    private func addTapped(_ sender: UIBarButtonItem) {
        let ProfileCreateViewController = CreateProfileViewController()
        ProfileCreateViewController.delegate = self
        navigationController?.pushViewController(ProfileCreateViewController, animated: true)
    }
    
    private func setup() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func navigationDesign() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addTapped)
                                                            )
        navigationItem.title = "Contacts"
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                            commit editingStyle: UITableViewCell.EditingStyle,
                            forRowAt indexPath: IndexPath
    ) {
        if editingStyle == .delete {
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            names = names.compactMap{ $0 }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CustomCell.identifier,
            for: indexPath
        ) as? CustomCell else {
            fatalError("The tableView could not dequeue a CustomCell")
        }
        cell.configure(name: names[indexPath.row].name,
                       phone: names[indexPath.row].phone,
                       color: names[indexPath.row].color
        )
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let NewController = EditProfileViewController(data: names[indexPath.row], index: indexPath.row)
        NewController.delegate = self
        navigationController?.pushViewController(NewController, animated: true)
    }
}

extension ViewController: EditProfileViewControllerDelegate {
    func changeColor(index: Int, color: UIColor) {
        names[index].color = color
        tableView.reloadData()
    }
    
    func setNewName(index: Int, newName: String) {
        names[index].name = newName
        tableView.reloadData()
    }
    
    func setNewPhone(index: Int, newPhone: String) {
        names[index].phone = newPhone
        tableView.reloadData()
    }
    
}

extension ViewController: CreateProfileViewControllerDelegate {
    func addProfile(profile: Profile) {
        names.append(profile)
        tableView.reloadData()
    }
    
    func addProfile(name: String, phone: String, color: UIColor) {
        let newProfile = Profile(name: name, phone: phone, color: color)
        names.append(newProfile)
        print(newProfile.name)
        tableView.reloadData()
    }
}


