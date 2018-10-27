//
//  TableViewController.swift
//  ListApp
//
//  Created by hikaru nakamata on 2018/10/26.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // 画面内に表示する名前を入れています。
    var names: String?

    //viewを表示したときに一度だけ行う処理
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        names = appDelegate.appText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadView()
        viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 今回はセクションは1つのみなので、namesの要素数をそのまま使います。
        // "変数名.count"で要素数を取得できます。
        //return names.count
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        
        // namesから該当する行の文字列を取得してセルに設定します。
        // indexPath.rowで何行目かわかります。
        //cell.textLabel?.text = names[indexPath.row]
        cell.textLabel?.text = names

        return cell
    }
    
    //戻るときに必要
    @IBAction func backToList(segue: UIStoryboardSegue) {}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
