//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Eryk Gasiorowski on 10/01/2021.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = "PLMRqhzcHGw1YqPh-ggQHJPAUxdHov_uNJ"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlists?part=snippet&id=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
