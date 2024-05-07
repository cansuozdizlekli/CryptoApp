//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Cansu Özdizlekli on 5/7/24.
//

import Foundation

//JSON Data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
 "data": {
   "active_cryptocurrencies": 14084,
   "upcoming_icos": 0,
   "ongoing_icos": 49,
   "ended_icos": 3376,
   "markets": 1076,
   "total_market_cap": {
     "btc": 38778688.5115018,
     "eth": 803452482.691051,
     "ltc": 30747584701.2029,
     "bch": 5248605760.8088,
     "bnb": 4209326059.28175,
     "eos": 3066678679534.48,
     "xrp": 4600252147423.48,
     "xlm": 22650941555891.5,
     "link": 173036907905.989,
     "dot": 345031949674.55,
     "yfi": 358308980.112978,
     "usd": 2474326508207.92,
     "aed": 9087953831996.87,
     "ars": 2.17756063649342e+15,
     "aud": 3750571749509.03,
     "bdt": 271477999944986,
     "bhd": 932662736697.86,
     "bmd": 2474326508207.92,
     "brl": 12560423653615.9,
     "cad": 3385700139629.16,
     "chf": 2242878006630.15,
     "clp": 2301748872878438,
     "cny": 17543717241146.6,
     "czk": 57531555372945.7,
     "dkk": 17146486389192.4,
     "eur": 2298931399347.09,
     "gbp": 1973201160500.57,
     "gel": 6581708511833.06,
     "hkd": 19346412561966.6,
     "huf": 893634556204963,
     "idr": 39728243374405890,
     "ils": 9208493122170.72,
     "inr": 206605023797781,
     "jpy": 381671565183784,
     "krw": 3364761963132547,
     "kwd": 760632711888.198,
     "lkr": 734566342769402,
     "mmk": 5194629736404294,
     "mxn": 41785758002458,
     "myr": 11733256301921.9,
     "ngn": 3.05579323763678e+15,
     "nok": 26873152968712.1,
     "nzd": 4118489255320.49,
     "php": 141707150977249,
     "pkr": 688180309499908,
     "pln": 9914458064186.57,
     "rub": 225143449987145,
     "sar": 9280105079971.27,
     "sek": 26804136579418.6,
     "sgd": 3347437154506.23,
     "thb": 90983460033313.6,
     "try": 79863255238697.8,
     "twd": 80122755179899.1,
     "uah": 97194284321851.8,
     "vef": 247754313266.859,
     "vnd": 62863990546817260,
     "zar": 45756359236709.4,
     "xdr": 1871320766525.11,
     "xag": 90878845508.5465,
     "xau": 1067003820.1345,
     "bits": 38778688511501.8,
     "sats": 3.87786885115018e+15
   },
   "total_volume": {
     "btc": 1413267.51768896,
     "eth": 29281374.3677027,
     "ltc": 1120578451.04049,
     "bch": 191282488.388078,
     "bnb": 153406523.513041,
     "eos": 111763381675.218,
     "xrp": 167653605180.696,
     "xlm": 825500840146.201,
     "link": 6306232899.86552,
     "dot": 12574495573.6526,
     "yfi": 13058369.4892038,
     "usd": 90175439563.1462,
     "aed": 331205371971.48,
     "ars": 79359974085804,
     "aud": 136687480412.619,
     "bdt": 9893863196936.58,
     "bhd": 33990369487.1741,
     "bmd": 90175439563.1462,
     "brl": 457757583854.4,
     "cad": 123389939568.319,
     "chf": 81740428946.4096,
     "clp": 83885944594321.1,
     "cny": 639370919134.576,
     "czk": 2096705215458.54,
     "dkk": 624894063891.669,
     "eur": 83783263354.273,
     "gbp": 71912207788.4222,
     "gel": 239866669237.969,
     "hkd": 705069137382.702,
     "huf": 32568009374382.9,
     "idr": 1.44787351122605e+15,
     "ils": 335598358685.238,
     "inr": 7529604025627.5,
     "jpy": 13909805777463.5,
     "krw": 122626859488560,
     "kwd": 27720831876.1068,
     "lkr": 26770857697151.3,
     "mmk": 189315362501336,
     "mxn": 1522858475973.73,
     "myr": 427611934408.439,
     "ngn": 111366667860486,
     "nok": 979376963130.221,
     "nzd": 150096027223.022,
     "php": 5164437509045.51,
     "pkr": 25080344773415.6,
     "pln": 361326854399.636,
     "rub": 8205226553571.72,
     "sar": 338208216257.074,
     "sek": 976861699594.486,
     "sgd": 121995466570.915,
     "thb": 3315841088176.45,
     "try": 2910571471551.38,
     "twd": 2920028801126.44,
     "uah": 3542191090251.98,
     "vef": 9029266763.45784,
     "vnd": 2.29104281971196e+15,
     "zar": 1667564807349.5,
     "xdr": 68199234064.4097,
     "xag": 3312028470.59172,
     "xau": 38886354.8028155,
     "bits": 1413267517688.96,
     "sats": 141326751768896
   },
   "market_cap_percentage": {
     "btc": 50.7883240923902,
     "eth": 14.9588170977011,
     "usdt": 4.49424277808308,
     "bnb": 3.65640756196603,
     "sol": 2.80794631145086,
     "usdc": 1.34327251304596,
     "xrp": 1.2001580283733,
     "steth": 1.1637117938762,
     "doge": 0.911875401030989,
     "ton": 0.820873450626182
   },
   "market_cap_change_percentage_24h_usd": -1.35134023344405,
   "updated_at": 1715067020
 }
}
 
 
 */

struct GlobalData : Codable {
    let data: MarketDataModel?
}

struct MarketDataModel : Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys : String , CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap : String {
                if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
                    return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume : String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
            }
        return ""
    }
    
    var btcDominance : String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
            }
        return ""
    }
    
}
