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
    
    func handleGameUpdate(mapState: GameDataModel) -> [CellActivity]? {
        guard let currentCell = mapState.data?.cells?.first else { return nil }
        
        
        guard let velocity = (currentCell.velocity?.moveToPosition(target: mapState.data?.food?.first?.position ?? Position(x: 0, y: 0))) else { return nil }
//        let cellActivity = CellActivity(cellId: currentCell.id ?? "", speed: 0.9, velocity: velocity, growIntention: GrowIntention(eatEfficiency: 0.1, maxSpeed: 0.1, power: 0.1, mass: 0.1, volatilization: 0.1))
        
        let cellActivity = CellActivity(cellId: currentCell.id ?? "", speed: 0.9, velocity: velocity )
        return [cellActivity]
//        DesiredCellsState(cell: [cellActivity])
    }
    
}


class Fat: CellLogic {
    
    var fat = FatJohny()
    
    var gameConfig: GameConfigModel?
    
    func configure(gameConfig: GameConfigModel) {
        fat.configure(gameConfig: gameConfig)
    }
    
    func handleGameUpdate(mapState: GameDataModel) -> [CellActivity]? {
        fat.handleGameUpdate(mapState: mapState)
    }
    
    
}
