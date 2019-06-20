/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Payload : Codable {
	let assetId : String?
	let originalSymbol : String?
	let name : String?
	let slug : String?
	let cryptoType : Bool?
	let supply : Int?
	let marketCap : Double?
	let price : Double?
	let volume : Double?
	let change : Double?
	let _id : String?

	enum CodingKeys: String, CodingKey {

		case assetId = "assetId"
		case originalSymbol = "originalSymbol"
		case name = "name"
		case slug = "slug"
		case cryptoType = "cryptoType"
		case supply = "supply"
		case marketCap = "marketCap"
		case price = "price"
		case volume = "volume"
		case change = "change"
		case _id = "_id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		assetId = try values.decodeIfPresent(String.self, forKey: .assetId)
		originalSymbol = try values.decodeIfPresent(String.self, forKey: .originalSymbol)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		slug = try values.decodeIfPresent(String.self, forKey: .slug)
		cryptoType = try values.decodeIfPresent(Bool.self, forKey: .cryptoType)
		supply = try values.decodeIfPresent(Int.self, forKey: .supply)
		marketCap = try values.decodeIfPresent(Double.self, forKey: .marketCap)
		price = try values.decodeIfPresent(Double.self, forKey: .price)
		volume = try values.decodeIfPresent(Double.self, forKey: .volume)
		change = try values.decodeIfPresent(Double.self, forKey: .change)
		_id = try values.decodeIfPresent(String.self, forKey: ._id)
	}

}