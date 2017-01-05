//
//	Result.swift
//
//	Create by Toseefhusen Khilji on 5/1/2017
//	Copyright © 2017 Toseefhusen Khilji. All rights reserved.
//	Model file Generated using: 
//	Vin.Favara's JSONExportV https://github.com/vivi7/JSONExport 
//	(forked from Ahmed-Ali's JSONExport)
//

import Foundation
import SwiftyJSON
struct Result{

	var artistName : String!
	var artworkUrl100 : String!
	var artworkUrl30 : String!
	var artworkUrl60 : String!
	var collectionExplicitness : String!
	var collectionHdPrice : Float!
	var collectionPrice : Float!
	var contentAdvisoryRating : String!
	var country : String!
	var currency : String!
	var hasITunesExtras : Bool!
	var kind : String!
	var longDescription : String!
	var previewUrl : String!
	var primaryGenreName : String!
	var releaseDate : String!
	var shortDescription : String!
	var trackCensoredName : String!
	var trackExplicitness : String!
	var trackHdPrice : Float!
	var trackHdRentalPrice : Float!
	var trackId : Int!
	var trackName : String!
	var trackPrice : Float!
	var trackRentalPrice : Float!
	var trackTimeMillis : Int!
	var trackViewUrl : String!
	var wrapperType : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromJSON jsonData: JSON){
		artistName = jsonData["artistName"].string
		collectionPrice = jsonData["collectionPrice"].float
		shortDescription = jsonData["shortDescription"].string
		trackName = jsonData["trackName"].string
	}

    
    init(fromDictionary dictionary: NSDictionary){
        artistName = dictionary["artistName"] as? String
        artworkUrl100 = dictionary["artworkUrl100"] as? String
        artworkUrl30 = dictionary["artworkUrl30"] as? String
        artworkUrl60 = dictionary["artworkUrl60"] as? String
        collectionExplicitness = dictionary["collectionExplicitness"] as? String
        collectionHdPrice = dictionary["collectionHdPrice"] as? Float
        collectionPrice = dictionary["collectionPrice"] as? Float
        contentAdvisoryRating = dictionary["contentAdvisoryRating"] as? String
        country = dictionary["country"] as? String
        currency = dictionary["currency"] as? String
        hasITunesExtras = dictionary["hasITunesExtras"] as? Bool
        kind = dictionary["kind"] as? String
        longDescription = dictionary["longDescription"] as? String
        previewUrl = dictionary["previewUrl"] as? String
        primaryGenreName = dictionary["primaryGenreName"] as? String
        releaseDate = dictionary["releaseDate"] as? String
        shortDescription = dictionary["shortDescription"] as? String
        trackCensoredName = dictionary["trackCensoredName"] as? String
        trackExplicitness = dictionary["trackExplicitness"] as? String
        trackHdPrice = dictionary["trackHdPrice"] as? Float
        trackHdRentalPrice = dictionary["trackHdRentalPrice"] as? Float
        trackId = dictionary["trackId"] as? Int
        trackName = dictionary["trackName"] as? String
        trackPrice = dictionary["trackPrice"] as? Float
        trackRentalPrice = dictionary["trackRentalPrice"] as? Float
        trackTimeMillis = dictionary["trackTimeMillis"] as? Int
        trackViewUrl = dictionary["trackViewUrl"] as? String
        wrapperType = dictionary["wrapperType"] as? String
    }
    
	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		var dictionary = NSMutableDictionary()
		if artistName != nil{
			dictionary["artistName"] = artistName
		}
		if artworkUrl100 != nil{
			dictionary["artworkUrl100"] = artworkUrl100
		}
		if artworkUrl30 != nil{
			dictionary["artworkUrl30"] = artworkUrl30
		}
		if artworkUrl60 != nil{
			dictionary["artworkUrl60"] = artworkUrl60
		}
		if collectionExplicitness != nil{
			dictionary["collectionExplicitness"] = collectionExplicitness
		}
		if collectionHdPrice != nil{
			dictionary["collectionHdPrice"] = collectionHdPrice
		}
		if collectionPrice != nil{
			dictionary["collectionPrice"] = collectionPrice
		}
		if contentAdvisoryRating != nil{
			dictionary["contentAdvisoryRating"] = contentAdvisoryRating
		}
		if country != nil{
			dictionary["country"] = country
		}
		if currency != nil{
			dictionary["currency"] = currency
		}
		if hasITunesExtras != nil{
			dictionary["hasITunesExtras"] = hasITunesExtras
		}
		if kind != nil{
			dictionary["kind"] = kind
		}
		if longDescription != nil{
			dictionary["longDescription"] = longDescription
		}
		if previewUrl != nil{
			dictionary["previewUrl"] = previewUrl
		}
		if primaryGenreName != nil{
			dictionary["primaryGenreName"] = primaryGenreName
		}
		if releaseDate != nil{
			dictionary["releaseDate"] = releaseDate
		}
		if shortDescription != nil{
			dictionary["shortDescription"] = shortDescription
		}
		if trackCensoredName != nil{
			dictionary["trackCensoredName"] = trackCensoredName
		}
		if trackExplicitness != nil{
			dictionary["trackExplicitness"] = trackExplicitness
		}
		if trackHdPrice != nil{
			dictionary["trackHdPrice"] = trackHdPrice
		}
		if trackHdRentalPrice != nil{
			dictionary["trackHdRentalPrice"] = trackHdRentalPrice
		}
		if trackId != nil{
			dictionary["trackId"] = trackId
		}
		if trackName != nil{
			dictionary["trackName"] = trackName
		}
		if trackPrice != nil{
			dictionary["trackPrice"] = trackPrice
		}
		if trackRentalPrice != nil{
			dictionary["trackRentalPrice"] = trackRentalPrice
		}
		if trackTimeMillis != nil{
			dictionary["trackTimeMillis"] = trackTimeMillis
		}
		if trackViewUrl != nil{
			dictionary["trackViewUrl"] = trackViewUrl
		}
		if wrapperType != nil{
			dictionary["wrapperType"] = wrapperType
		}
		return dictionary
	}

}
