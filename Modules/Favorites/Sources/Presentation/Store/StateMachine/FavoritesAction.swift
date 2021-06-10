//
//  FavoriteAction.swift
//  
//
//  Created by Miguel Angel on 24-05-21.
//

import AltairMDKCommon

public enum FavoritesAction {
    case getFavorites
    case getFavoritesSucceeded(_ results: Set<Int>)
    case getFavoritesFailed(_ exception: Exception)
}