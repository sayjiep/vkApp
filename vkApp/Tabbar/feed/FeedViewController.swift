//
//  FeedViewController.swift
//  vkApp
//
//  Created by Алёночка on 03.03.2021.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var table: UITableView!
    
    var posts: [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // ошибка?
        APIManager.shared.getPost(id: "post1", imageID: "1") {res1 in
            self.posts.append(res1!)
            APIManager.shared.getPost(id: "post2", imageID: "2") {res2 in
                self.posts.append(res2!)
                APIManager.shared.getPost(id: "post3", imageID: "3") {res3 in
                    self.posts.append(res3!)
                            DispatchQueue.main.async {
                                self.table.reloadData()
                    }
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedTableViewCell
        cell.postName.text = posts[indexPath.row].name
        cell.postImage.image = posts[indexPath.row].image
        return cell
        
    }
}
