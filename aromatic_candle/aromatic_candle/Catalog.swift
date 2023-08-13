//
//  Catalog.swift
//  aromatic_candle
//
//  Created by Анна Горева on 20.07.2023.
//

import UIKit

class Catalog: UIViewController {
    
    var candleSegmentControl = UISegmentedControl()
    let candleImage = UIImageView()
    var candleNameArray = ["белая","черная"]
    var candleName = ["чайная роза", "лаванда", "банановое печенье"]
    let candleImageArray = [UIImage(named: "белаясвеча.png"),
                            UIImage(named: "чернаясвеча.png")]
    
    let namePicker = UIPickerView()
    let priceWhiteLabel = UILabel()
    let priceBlackLabel = UILabel()
    let diffuzorImage = UIImageView()
    let diffuzorNameArray = ["автодиффузор", "диффузор 50мл", "диффузор 100мл"]
    let diffuzorImageArray = [UIImage(named: "автодиф.webp"),
                              UIImage(named: "малдиф.webp"),
                              UIImage(named: "большойдиф.webp")]
    var diffuzorSegmentControl = UISegmentedControl()
    let priceAutoDiffLabel = UILabel()
    let priceSmallDiffLabel = UILabel()
    let priceLargeDiffLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        //MARK: положение картинки свечки
        candleImage.frame = CGRect(x: 105, y: 100, width: 180, height: 180)
        candleImage.image = candleImageArray[0]
        view.addSubview(candleImage)
        
        //MARK: сегмент для свечек
        candleSegmentControl = UISegmentedControl(items: candleNameArray)
        candleSegmentControl.frame = CGRect(x: 20, y: 290, width: 150, height: 30)
        candleSegmentControl.addTarget(self, action: #selector(segmentValue(target:)), for: .valueChanged)
        view.addSubview(candleSegmentControl)
        
        //MARK: пикер для названия свечей
        namePicker.frame = CGRect(x: 180, y: 280, width: 200, height: 50)
        namePicker.dataSource = self
        namePicker.delegate = self
        view.addSubview(namePicker)
        
        //MARK: цена свечей
        priceWhiteLabel.text = "1600р"
        priceWhiteLabel.textColor = UIColor.white
        priceWhiteLabel.font = UIFont.systemFont(ofSize: 13.0)
        priceWhiteLabel.frame = CGRect(x: 38, y: 310, width: 40, height: 40)
        view.addSubview(priceWhiteLabel)
        priceBlackLabel.text = "1600р"
        priceBlackLabel.textColor = UIColor.white
        priceBlackLabel.font = UIFont.systemFont(ofSize: 13.0)
        priceBlackLabel.frame = CGRect(x: 113, y: 310, width: 40, height: 40)
        view.addSubview(priceBlackLabel)
        
        //MARK: положение картинки диффузора
        diffuzorImage.frame = CGRect(x: 105, y: 370, width: 180, height: 180)
        diffuzorImage.image = diffuzorImageArray[0]
        view.addSubview(diffuzorImage)
        
        //MARK: сегмент контрол диффузоров
        diffuzorSegmentControl = UISegmentedControl(items: diffuzorNameArray)
        diffuzorSegmentControl.frame = CGRect(x: 30, y: 550, width: 350, height: 30)
        diffuzorSegmentControl.addTarget(self, action: #selector(segmentValue(target:)), for: .valueChanged)
        view.addSubview(diffuzorSegmentControl)
        
        //MARK: цена диффузоров
        priceAutoDiffLabel.text = "1000р"
        priceAutoDiffLabel.textColor = UIColor.white
        priceAutoDiffLabel.font = UIFont.systemFont(ofSize: 13.0)
        priceAutoDiffLabel.frame = CGRect(x: 70, y: 570, width: 40, height: 40)
        view.addSubview(priceAutoDiffLabel)
        priceSmallDiffLabel.text = "1200р"
        priceSmallDiffLabel.textColor = UIColor.white
        priceSmallDiffLabel.font = UIFont.systemFont(ofSize: 13.0)
        priceSmallDiffLabel.frame = CGRect(x: 190, y: 570, width: 40, height: 40)
        view.addSubview(priceSmallDiffLabel)
        priceLargeDiffLabel.text = "1500p"
        priceLargeDiffLabel.textColor = UIColor.white
        priceLargeDiffLabel.font = UIFont.systemFont(ofSize: 13.0)
        priceLargeDiffLabel.frame = CGRect(x: 300, y: 570, width: 40, height: 40)
        view.addSubview(priceLargeDiffLabel)
        

    }
    
    @objc func segmentValue(target: UISegmentedControl){
        if target == candleSegmentControl{
            let segmentIndex = target.selectedSegmentIndex
            candleImage.image = candleImageArray[segmentIndex]
        } else {
            if target == diffuzorSegmentControl{
                let segmentIndex = target.selectedSegmentIndex
                diffuzorImage.image = diffuzorImageArray[segmentIndex]
            }
        }
    }

}

extension Catalog: UIPickerViewDataSource{
    func numberOfComponents(in volumePicker: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ volumePicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return candleName.count
    }
    
}

extension Catalog: UIPickerViewDelegate{

    func pickerView(_ : UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: candleName[row], attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10.0),
             NSAttributedString.Key.foregroundColor : UIColor.black])
    }

    func pickerView(_ volumePicker: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 180
    }
    
}
