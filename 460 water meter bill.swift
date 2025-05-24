import Foundation
//Process
// ค่านำ้ประปา การคิดแบบอัตราก้าวหน้า
//ยูนิตการใช้  ราคา   จำนวนหน่วย  พิกัดสูงสุด(ราคา)
//0-10      10.20   10       102
//11-20     16.00   10       160
//21-30     19.00   10       190
//31-50     21.20   20       424
//51-80     21.60   30       648
//81-100    21.65   20       433
//101-300   21.70   200      4340
//301-1000  21.75   700      15225
//1001-2000 21.80  1000      21800
//2001-3000 21.85  1000      21850
//>3000     21.90

//process variables
var user:Int=0
//For Type 1
let unit0_10:Float = 10.20
let unit11_20:Float = 16.00
let unit21_30:Float = 19.00
let unit31_50:Float = 21.20
let unit51_80:Float = 23.00
let unit81_100:Float = 24.00
let unit101_300:Float = 27.40
let unit301_1000:Float = 27.50
let unit1001_2000:Float = 27.60
let unit2001_3000:Float = 27.80
let unit3000UP:Float = 28.00

let max0_10:Float = 102.00
let max0_20:Float = 262.00
let max0_30:Float = 452.00
let max0_50:Float = 876.00
let max0_80:Float = 1566.00
let max0_100:Float = 2046.00
let max0_300:Float = 7526.00
let max0_1000:Float = 26776
let max0_2000:Float = 54376
let max0_3000:Float = 82176
//For Type 2
let unit0_10t2:Float = 17.00
let unit11_20t2:Float = 20.00
let unit21_30t2:Float = 21.00
let unit31_50t2:Float = 22.20
let unit51_80t2:Float = 23.00
let unit81_100t2:Float = 24.00
let unit101_300t2:Float = 27.40
let unit301_1000t2:Float = 27.50
let unit1001_2000t2:Float = 27.60
let unit2001_3000t2:Float = 27.80
let unit3000UPt2:Float = 28.00

let max0_10t2:Float = 170.00
let max0_20t2:Float = 370.00
let max0_30t2:Float = 580.00
let max0_50t2:Float = 1020.00
let max0_80t2:Float = 1710.00
let max0_100t2:Float = 2190.00
let max0_300t2:Float = 7670.00
let max0_1000t2:Float = 26920
let max0_2000t2:Float = 54520
let max0_3000t2:Float = 82320
//For Type 3
let unit0_10t3:Float = 18.25
let unit11_20t3:Float = 21.50
let unit21_30t3:Float = 25.50
let unit31_50t3:Float = 28.50
let unit51_80t3:Float = 31.00
let unit81_100t3:Float = 31.25
let unit101_300t3:Float = 31.50
let unit301_1000t3:Float = 31.75
let unit1001_2000t3:Float = 32.00
let unit2001_3000t3:Float = 32.25
let unit3000UPt3:Float = 32.50

let max0_10t3:Float = 182.50
let max0_20t3:Float = 397.50
let max0_30t3:Float = 652.50
let max0_50t3:Float = 1222.50
let max0_80t3:Float = 2152.50
let max0_100t3:Float = 2777.50
let max0_300t3:Float = 9077.50
let max0_1000t3:Float = 31302.50
let max0_2000t3:Float = 63302.50
let max0_3000t3:Float = 95552.50

//input variables
var unit:Int=0
var address:String=""
var meterNumber:String=""
//Output variables
var price:Float = 0
var vatPrice:Float = 0
var totalPrice:Float = 0
//Input
print("Enter Meter Number :", terminator:" ")
meterNumber = readLine() ?? ""
print("Enter Business Type([1]Home,[2]SME,[3]Factory) :", terminator:" ")
user=Int(readLine() ?? "0") ?? 0
print("Enter Amount Of Water Unit :", terminator:" ")
unit=Int(readLine() ?? "0") ?? 0
//Process
if user == 1 {
    
    if unit > 0 && unit <= 10 {
        price=Float(unit)*unit0_10
    }
    else if unit > 10 && unit <= 20{
        price = (Float(unit)-10)*unit11_20
        price = price+max0_10
    }
    else if unit > 20 && unit <= 30{
        price = (Float(unit)-20)*unit21_30
        price = price+max0_20
    }
    else if unit > 30 && unit <= 50{
        price = (Float(unit)-30)*unit31_50
        price = price+max0_30
    }
    else if unit > 50 && unit <= 80{
        price = (Float(unit)-50)*unit51_80
        price = price+max0_50
    }
    else if unit > 80 && unit <= 100{
        price = (Float(unit)-80)*unit81_100
        price = price+max0_80
    }
    else if unit > 100 && unit <= 300{
        price = (Float(unit)-100)*unit101_300
        price = price+max0_100
    }
    else if unit > 300 && unit <= 1000{
        price = (Float(unit)-300)*unit301_1000
        price = price+max0_300
    }
    else if unit > 1000 && unit <= 2000{
        price = (Float(unit)-1000)*unit1001_2000
        price = price+max0_50
    }
    else if unit > 2000 && unit <= 3000{
        price = (Float(unit)-2000)*unit2001_3000
        price = price+max0_50
    }
    else if unit > 3000{
        price = (Float(unit)-3000)*unit3000UP
        price = price+max0_3000
    }
    else{
        price = 0
    }
    
}
else if user == 2{
        if unit > 0 && unit <= 10 {
        price=Float(unit)*unit0_10t2
    }
    else if unit > 10 && unit <= 20{
        price = (Float(unit)-10)*unit11_20t2
        price = price+max0_10t2
    }
    else if unit > 20 && unit <= 30{
        price = (Float(unit)-20)*unit21_30t2
        price = price+max0_20t2
    }
    else if unit > 30 && unit <= 50{
        price = (Float(unit)-30)*unit31_50t2
        price = price+max0_30t2
    }
    else if unit > 50 && unit <= 80{
        price = (Float(unit)-50)*unit51_80t2
        price = price+max0_50t2
    }
    else if unit > 80 && unit <= 100{
        price = (Float(unit)-80)*unit81_100t2
        price = price+max0_80t2
    }
    else if unit > 100 && unit <= 300{
        price = (Float(unit)-100)*unit101_300t2
        price = price+max0_100t2
    }
    else if unit > 300 && unit <= 1000{
        price = (Float(unit)-300)*unit301_1000t2
        price = price+max0_300t2
    }
    else if unit > 1000 && unit <= 2000{
        price = (Float(unit)-1000)*unit1001_2000t2
        price = price+max0_50t2
    }
    else if unit > 2000 && unit <= 3000{
        price = (Float(unit)-2000)*unit2001_3000t2
        price = price+max0_50t2
    }
    else if unit > 3000{
        price = (Float(unit)-3000)*unit3000UPt2
        price = price+max0_3000t2
    }
    else{
        price = 0
    }
} 
else if user == 3{   
       if unit > 0 && unit <= 10 {
        price=Float(unit)*unit0_10t3
    }
    else if unit > 10 && unit <= 20{
        price = (Float(unit)-10)*unit11_20t3
        price = price+max0_10t3
    }
    else if unit > 20 && unit <= 30{
        price = (Float(unit)-20)*unit21_30t3
        price = price+max0_20t3
    }
    else if unit > 30 && unit <= 50{
        price = (Float(unit)-30)*unit31_50t3
        price = price+max0_30t3
    }
    else if unit > 50 && unit <= 80{
        price = (Float(unit)-50)*unit51_80t3
        price = price+max0_50t3
    }
    else if unit > 80 && unit <= 100{
        price = (Float(unit)-80)*unit81_100t3
        price = price+max0_80t3
    }
    else if unit > 100 && unit <= 300{
        price = (Float(unit)-100)*unit101_300t3
        price = price+max0_100t3
    }
    else if unit > 300 && unit <= 1000{
        price = (Float(unit)-300)*unit301_1000t3
        price = price+max0_300t3
    }
    else if unit > 1000 && unit <= 2000{
        price = (Float(unit)-1000)*unit1001_2000t3
        price = price+max0_50t3
    }
    else if unit > 2000 && unit <= 3000{
        price = (Float(unit)-2000)*unit2001_3000t3
        price = price+max0_50t3
    }
    else if unit > 3000{
        price = (Float(unit)-3000)*unit3000UPt3
        price = price+max0_3000t3
    }
    else{
        price = 0
    }
}

vatPrice = price*0.07
totalPrice = price+vatPrice

print("-------------------------------------------------")
print("WATER BILL MITER NUMBER : \(meterNumber)")
print("Price : \(price)")
print("VAT 7% : \(vatPrice)")
print("Total Price : \(totalPrice)")
print("-------------------------------------------------")
