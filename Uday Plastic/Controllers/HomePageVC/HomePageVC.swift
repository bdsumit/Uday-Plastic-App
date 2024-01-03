//
//  HomePageVC.swift
//  Uday Plastic
//
//  Created by bd05 on 1/3/24.
//

import UIKit

class HomePageVC: UIViewController {
    @IBOutlet var HomeTV: UITableView!
    
    @IBOutlet var overLayView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        overLayView.clipsToBounds = false

        overLayView.layer.cornerRadius = 30
        overLayView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        HomeTV.delegate = self
        HomeTV.dataSource = self
        HomeTV.register(UINib(nibName: "MapTVCell", bundle: nil), forCellReuseIdentifier: "MapTVCell")
        HomeTV.register(UINib(nibName: "PunchInTvCell", bundle: nil), forCellReuseIdentifier: "PunchInTvCell")
        
    }


}
extension HomePageVC : UITableViewDelegate, UITableViewDataSource{

   

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

      
            return 2

        }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = HomeTV.dequeueReusableCell(withIdentifier: "PunchInTvCell")as! PunchInTvCell
            

            return cell
        }else{
            let cell = HomeTV.dequeueReusableCell(withIdentifier: "MapTVCell")as! MapTVCell
            

            return cell
        }
       
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
