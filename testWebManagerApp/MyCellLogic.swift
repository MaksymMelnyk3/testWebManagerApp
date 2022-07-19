//
//  MyCellLogic.swift
//  testWebManagerApp
//
//  Created by Maxim on 15.07.2022.
//

import Foundation
import WebSocketManager


class MyCellLogic: CellLogic{
    
    var gameConfig: GameConfigModel?
    
    func configure(gameConfig: GameConfigModel) {
        self.gameConfig = gameConfig
    }
    
    func handleGameUpdate(mapState: MapState) -> DesiredCellsState? {
        return DesiredCellsState(cell: <#[CellActivity]#>)
    }
    
}
