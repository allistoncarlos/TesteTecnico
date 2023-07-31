//
//  CardAPIModel.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

// MARK: - Card

struct Card: Codable, Equatable, Hashable {
    enum CodingKeys: String, CodingKey {
        case cardId
        case name
        case cardSet
        case type
        case faction
        case rarity
        case cost
        case attack
        case health
        case flavor
        case text
        case img
    }

    let cardId: String
    let name: String
    let cardSet: String?
    let type: String?
    let faction: String?
    let rarity: String?
    let cost: Int?
    let attack: Int?
    let health: Int?
    let flavor: String?
    let text: String?
    let img: String?

}

// MARK: - CardAPIModel

struct CardAPIModel: Codable, Equatable, Hashable {
    enum CodingKeys: String, CodingKey {
        case basic = "Basic"
        case classic = "Classic"
        case hallOfFame = "Hall of Fame"
        case missions = "Missions"
        case demo = "Demo"
        case system = "System"
        case promo = "Promo"
        case naxxramas = "Naxxramas"
        case goblinsVsGnomes = "Goblins vs Gnomes"
        case blackrockMountains = "Blackrock Mountain"
        case theGrandTournament = "The Grand Tournament"
        case credits = "Credits"
        case heroSkins = "Hero Skins"
        case tavernBrawl = "Tavern Brawl"
        case theLeagueOfExplorers = "The League of Explorers"
        case whispersOfTheOldGods = "Whispers of the Old Gods"
        case oneNightinKarazhan = "One Night in Karazhan"
        case meanStreetsOfGadgetzan = "Mean Streets of Gadgetzan"
        case journeyToUnGoro = "Journey to Un'Goro"
        case knightsOfTheFrozenThrone = "Knights of the Frozen Throne"
        case koboldsCatacombs = "Kobolds & Catacombs"
        case theWitchwood = "The Witchwood"
        case theBoomsdayProject = "The Boomsday Project"
        case rastakhanRumble = "Rastakhan's Rumble"
        case riseOfShadows = "Rise of Shadows"
        case tavernsOfTime = "Taverns of Time"
        case saviorsOfUldum = "Saviors of Uldum"
        case descentOfDragons = "Descent of Dragons"
        case galakrondsAwakening = "Galakrond's Awakening"
        case ashesOfOutland = "Ashes of Outland"
        case wildEvent = "Wild Event"
        case scholomanceAcademy = "Scholomance Academy"
        case battlegrounds = "Battlegrounds"
        case demonHunterInitiate = "Demon Hunter Initiate"
        case madnessAtTheDarkmoonFaire = "Madness At The Darkmoon Faire"
        case forgedInTheBarrens = "Forged in the Barrens"
        case legacy = "Legacy"
        case core = "Core"
        case vanilla = "Vanilla"
        case wailingCaverns = "Wailing Caverns"
        case unitedInStormwind = "United in Stormwind"
        case mercenaries = "Mercenaries"
        case fracturedInAlteracValley = "Fractured in Alterac Valley"
        case voyageToTheSunkenCity = "Voyage to the Sunken City"
        case unknown = "Unknown"
        case murderAtCastleNathria = "Murder at Castle Nathria"
        case marchOfTheLichKing = "March of the Lich King"
        case pathOfArthas = "Path of Arthas"
        case festivalOfLegends = "Festival of Legends"
    }

    let basic: [Card]
    let classic: [Card]
    let hallOfFame: [Card]
    let missions: [Card]
    let demo: [Card]
    let system: [Card]
    let promo: [Card]
    let naxxramas: [Card]
    let goblinsVsGnomes: [Card]
    let blackrockMountains: [Card]
    let theGrandTournament: [Card]
    let credits: [Card]
    let heroSkins: [Card]
    let tavernBrawl: [Card]
    let theLeagueOfExplorers: [Card]
    let whispersOfTheOldGods: [Card]
    let oneNightinKarazhan: [Card]
    let meanStreetsOfGadgetzan: [Card]
    let journeyToUnGoro: [Card]
    let knightsOfTheFrozenThrone: [Card]
    let koboldsCatacombs: [Card]
    let theWitchwood: [Card]
    let theBoomsdayProject: [Card]
    let rastakhanRumble: [Card]
    let riseOfShadows: [Card]
    let tavernsOfTime: [Card]
    let saviorsOfUldum: [Card]
    let descentOfDragons: [Card]
    let galakrondsAwakening: [Card]
    let ashesOfOutland: [Card]
    let wildEvent: [Card]
    let scholomanceAcademy: [Card]
    let battlegrounds: [Card]
    let demonHunterInitiate: [Card]
    let madnessAtTheDarkmoonFaire: [Card]
    let forgedInTheBarrens: [Card]
    let legacy: [Card]
    let core: [Card]
    let vanilla: [Card]
    let wailingCaverns: [Card]
    let unitedInStormwind: [Card]
    let mercenaries: [Card]
    let fracturedInAlteracValley: [Card]
    let voyageToTheSunkenCity: [Card]
    let unknown: [Card]
    let murderAtCastleNathria: [Card]
    let marchOfTheLichKing: [Card]
    let pathOfArthas: [Card]
    let festivalOfLegends: [Card]

    var fullSets: [Card] {
        var sets: [Card] = []

        sets.append(contentsOf: basic)
        sets.append(contentsOf: classic)
        sets.append(contentsOf: hallOfFame)
        sets.append(contentsOf: missions)
        sets.append(contentsOf: demo)
        sets.append(contentsOf: system)
        sets.append(contentsOf: promo)
        sets.append(contentsOf: naxxramas)
        sets.append(contentsOf: goblinsVsGnomes)
        sets.append(contentsOf: blackrockMountains)
        sets.append(contentsOf: theGrandTournament)
        sets.append(contentsOf: credits)
        sets.append(contentsOf: heroSkins)
        sets.append(contentsOf: tavernBrawl)
        sets.append(contentsOf: theLeagueOfExplorers)
        sets.append(contentsOf: whispersOfTheOldGods)
        sets.append(contentsOf: oneNightinKarazhan)
        sets.append(contentsOf: meanStreetsOfGadgetzan)
        sets.append(contentsOf: journeyToUnGoro)
        sets.append(contentsOf: knightsOfTheFrozenThrone)
        sets.append(contentsOf: koboldsCatacombs)
        sets.append(contentsOf: theWitchwood)
        sets.append(contentsOf: theBoomsdayProject)
        sets.append(contentsOf: rastakhanRumble)
        sets.append(contentsOf: riseOfShadows)
        sets.append(contentsOf: tavernsOfTime)
        sets.append(contentsOf: saviorsOfUldum)
        sets.append(contentsOf: descentOfDragons)
        sets.append(contentsOf: galakrondsAwakening)
        sets.append(contentsOf: ashesOfOutland)
        sets.append(contentsOf: wildEvent)
        sets.append(contentsOf: scholomanceAcademy)
        sets.append(contentsOf: battlegrounds)
        sets.append(contentsOf: demonHunterInitiate)
        sets.append(contentsOf: madnessAtTheDarkmoonFaire)
        sets.append(contentsOf: forgedInTheBarrens)
        sets.append(contentsOf: legacy)
        sets.append(contentsOf: core)
        sets.append(contentsOf: vanilla)
        sets.append(contentsOf: wailingCaverns)
        sets.append(contentsOf: unitedInStormwind)
        sets.append(contentsOf: mercenaries)
        sets.append(contentsOf: fracturedInAlteracValley)
        sets.append(contentsOf: voyageToTheSunkenCity)
        sets.append(contentsOf: unknown)
        sets.append(contentsOf: murderAtCastleNathria)
        sets.append(contentsOf: marchOfTheLichKing)
        sets.append(contentsOf: pathOfArthas)
        sets.append(contentsOf: festivalOfLegends)

        return sets
    }
}
