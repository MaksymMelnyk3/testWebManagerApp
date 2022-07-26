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
    
    func handleGameUpdate(mapState: GameDataModel) -> DesiredCellsState? {
        guard let currentCell = mapState.data?.cells?.first else { return nil }
        
        
        guard let velocity = (currentCell.velocity?.moveToPosition(target: ((mapState.data?.food?.first?.position ?? currentCell.position)!))) else { return nil }
        let cellActivity = CellActivity(cellId: currentCell.id ?? "", speed: 0.1, velocity: velocity, growIntention: GrowIntention(eatEfficiency: 0.1, maxSpeed: 0.1, power: 0.1, mass: 0.1, volatilization: 0.1))
        return DesiredCellsState(cell: [cellActivity])
    }
    
}
