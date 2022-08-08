//
//  RestaurantEntity.swift
//  SurroundingRestaurantsOfNPB
//
//  Created by 金田岳大 on 2022/08/04.
//

import Foundation
import CoreLocation

// TODO: 後でプロパティを精査して不要なものは削除予定
struct Restaurant: Decodable {
    let results: Result
}

struct Result: Decodable {
    let apiVersion: String // APIバージョン
    let resultsAvailable: Int // クエリー条件にマッチする、検索結果の全件数
    let resultsReturned: String // 検索結果の件数
    let resultsStart: Int // 検索結果の開始位置
    let shop: [Shop]
    
    enum CodingKeys: String, CodingKey {
        case apiVersion = "api_version"
        case resultsAvailable = "results_available"
        case resultsReturned = "results_returned"
        case resultsStart = "results_start"
        case shop
    }
}

struct Shop: Decodable {
    let id: String              // お店ID
    let name: String            // 掲載店名
    let logoImage: URL?         // ロゴ画像
    let nameKana: String?       // 掲載店名かな
    let address: String         // 住所
    let stationName: String?    // 最寄駅名
    let ktaiCoupon: Int         // 携帯用クーポン掲載
    let largeServiceArea: Area? // 大サービスエリア
    let serviceArea: Area?      // サービスエリア
    let largeArea: Area?        // 大エリア
    let middleArea: Area?       // 中エリア
    let smallArea: Area?        // 小エリア
    let genre: Genre            // お店ジャンル
    let subGenre: Genre?        // お店サブジャンル
    let budget: Budget?         // ディナー予算
    let budgetMemo: String?     // 料金備考
    let `catch`: String         // お店キャッチ
    let capacity: Int           // 総席数
    let access: String          // 交通アクセス
    let mobileAccess: String?   // 携帯用交通アクセス
    let urls: Urls              // 店舗URL
    let photo: Photo            // 写真
    let open: String?           // 営業時間
    let close: String?          // 定休日
    let partyCapacity: Int      // 最大宴会収容人数
    let wifi: String?           // WiFi有無
    let wedding: String?        // ウェディング･二次会
    let course: String?         // コース有無
    let freeDrink: String?      // 飲み放題
    let freeFood: String?       // 食べ放題
    let privateRoom: String?    // 個室
    let horigotatsu: String?    // 掘りごたつ
    let tatami: String?         // 座敷
    let card: String?           // カード可
    let nonSmoking: String?     // 禁煙席
    let charter: String?        // 貸切可
    let ktai: String?           // 携帯電話OK
    let parking: String?        // 駐車場
    let barrierFree: String?    // バリアフリー
    let otherMemo: String?      // その他設備
    let sommelier: String?      // ソムリエ
    let openAir: String?        // オープンエア
    let show: String?           // ライブ・ショー
    let equipment: String?      // エンタメ設備
    let karaoke: String?        // カラオケ
    let band: String?           // バンド演奏可
    let tv: String?             // TV・プロジェクター
    let english: String?        // 英語メニュー
    let pet: String?            // ペット可
    let child: String?          // お子様連れ
    let lunch: String?          // ランチ
    let midnight: String?       // 23時以降も営業
    let shopDetailMemo: String? // 備考
    let couponUrls: Urls?       // クーポンURL

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case logoImage = "logo_image"
        case nameKana = "name_kana"
        case address
        case stationName = "station_name"
        case ktaiCoupon = "ktai_coupon"
        case largeServiceArea = "large_service_area"
        case serviceArea = "service_area"
        case largeArea = "large_area"
        case middleArea = "middle_area"
        case smallArea = "small_area"
        case genre
        case subGenre = "sub_genre"
        case budget
        case budgetMemo = "budget_memo"
        case `catch`
        case capacity
        case access
        case mobileAccess = "mobile_access"
        case urls
        case photo
        case open
        case close
        case partyCapacity = "party_capacity"
        case wifi
        case wedding
        case course
        case freeDrink = "free_drink"
        case freeFood = "free_food"
        case privateRoom = "private_room"
        case horigotatsu
        case tatami
        case card
        case nonSmoking = "non_smoking"
        case charter
        case ktai
        case parking
        case barrierFree = "barrier_free"
        case otherMemo = "other_memo"
        case sommelier
        case openAir = "open_air"
        case show
        case equipment
        case karaoke
        case band
        case tv
        case english
        case pet
        case child
        case lunch
        case midnight
        case shopDetailMemo = "shop_detail_memo"
        case couponUrls = "coupon_urls"
    }
}

struct Area: Decodable {
    let code: String         // エリアコード
    let name: String         // エリア名
}

struct Genre: Decodable {
    let code: String?         // お店ジャンルコード
    let name: String          // お店ジャンル名
    let `catch`: String?      // お店ジャンルキャッチ
}

struct Budget: Decodable {
    let code: String          // 検索用ディナー予算コード
    let name: String          // 検索用ディナー予算
    let average: String       // 平均ディナー予算
}

struct Urls: Decodable {
    let pc: URL               // PC向けURL
    let sp: URL?              // スマートフォン向けURL
}

struct Photo: Decodable {

    let pc: ImageUrl          // PC向け
    let mobile: ImageUrl?     // スマートフォン向け
    
    struct ImageUrl: Decodable {
        let l: URL            // 店舗トップ写真(大）画像URL
        let m: URL?           // 店舗トップ写真(中）画像URL
        let s: URL            // 店舗トップ写真(小）画像URL
    }
}
