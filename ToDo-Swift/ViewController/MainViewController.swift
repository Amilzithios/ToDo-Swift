//
//  ViewController.swift
//  ToDo-Swift
//
//  Created by Amilzith on 10/07/24.
//

import UIKit

class MainViewController: UIViewController {
    //MARK: - IBOutlet Declarations
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var collectionView: UICollectionView!
    
    //MARK: - Override Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewCell()
        registerCollectionViewCell()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) //Question 1
        title = "UIKIT Components"
    }
    
    //MARK: - Methods
    
    func registerTableViewCell() {
        tableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
    }
    
    func registerCollectionViewCell() {
        collectionView.register(UINib(nibName: "MainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionViewCell")
    }
}

//MARK: - Tableview Delegate & DataSources

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UIKITComponent.selectedComponent.compontentsSubTopics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        cell.configureCell(name: UIKITComponent.selectedComponent.compontentsSubTopics[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Code
    }
}

// MARK: - CollectionView Delegate & DataSources
extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UIKITComponent.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        cell.configureCell(component: UIKITComponent.allCases[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        UIKITComponent.selectedComponent = UIKITComponent.allCases[indexPath.item]
        collectionView.reloadData()
        tableView.reloadData()
    }
}
