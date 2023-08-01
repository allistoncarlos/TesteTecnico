//
//  CardsResponseMock.swift
//  TesteTecnicoTests
//
//  Created by Alliston Aleixo on 31/07/23.
//

import Foundation

final class CardsResponseMock {
    let successCardsResponse: [String: Any] = [
        "Basic": [
            [
                "cardId": "RLK_Prologue_CS2_092e",
                "dbfId": 100_672,
                "name": "Blessing of Kings",
                "cardSet": "Basic",
                "type": "Enchantment",
                "text": "+4/+4.",
                "playerClass": "Paladin",
                "locale": "enUS"
            ],
            [
                "cardId": "RLK_Prologue_CS2_087e",
                "dbfId": 100_661,
                "name": "Blessing of Might",
                "cardSet": "Basic",
                "type": "Enchantment",
                "faction": "Neutral",
                "text": "+3 Attack.",
                "playerClass": "Paladin",
                "locale": "enUS"
            ],
            [
                "cardId": "RLK_Prologue_BT_035e",
                "dbfId": 100_824,
                "name": "Chaos Strike",
                "cardSet": "Basic",
                "type": "Enchantment",
                "text": "+2 Attack this turn.",
                "playerClass": "Demon Hunter",
                "locale": "enUS",
                "mechanics": [
                    [
                        "name": "OneTurnEffect"
                    ]
                ]
            ] as [String: Any],
            [
                "cardId": "RLK_Prologue_BT_512e",
                "dbfId": 100_845,
                "name": "Demon Power",
                "cardSet": "Basic",
                "type": "Enchantment",
                "text": "+8 Attack ",
                "playerClass": "Demon Hunter",
                "locale": "enUS",
                "mechanics": [
                    [
                        "name": "OneTurnEffect"
                    ]
                ]
            ]
        ],
        "Classic": [] as [Any],
        "Hall of Fame": [] as [Any],
        "Missions": [] as [Any],
        "Demo": [] as [Any],
        "System": [] as [Any],
        "Promo": [] as [Any],
        "Naxxramas": [] as [Any],
        "Goblins vs Gnomes": [] as [Any],
        "Blackrock Mountain": [] as [Any],
        "The Grand Tournament": [] as [Any],
        "Credits": [] as [Any],
        "Hero Skins": [] as [Any],
        "Tavern Brawl": [] as [Any],
        "The League of Explorers": [] as [Any],
        "Whispers of the Old Gods": [] as [Any],
        "One Night in Karazhan": [] as [Any],
        "Mean Streets of Gadgetzan": [] as [Any],
        "Journey to Un'Goro": [] as [Any],
        "Knights of the Frozen Throne": [] as [Any],
        "Kobolds & Catacombs": [] as [Any],
        "The Witchwood": [] as [Any],
        "The Boomsday Project": [] as [Any],
        "Rastakhan's Rumble": [] as [Any],
        "Rise of Shadows": [] as [Any],
        "Taverns of Time": [] as [Any],
        "Saviors of Uldum": [] as [Any],
        "Descent of Dragons": [] as [Any],
        "Galakrond's Awakening": [] as [Any],
        "Ashes of Outland": [] as [Any],
        "Wild Event": [] as [Any],
        "Scholomance Academy": [] as [Any],
        "Battlegrounds": [] as [Any],
        "Demon Hunter Initiate": [] as [Any],
        "Madness At The Darkmoon Faire": [] as [Any],
        "Forged in the Barrens": [] as [Any],
        "Legacy": [] as [Any],
        "Core": [] as [Any],
        "Vanilla": [] as [Any],
        "Wailing Caverns": [] as [Any],
        "United in Stormwind": [] as [Any],
        "Mercenaries": [] as [Any],
        "Fractured in Alterac Valley": [] as [Any],
        "Voyage to the Sunken City": [] as [Any],
        "Unknown": [] as [Any],
        "Murder at Castle Nathria": [] as [Any],
        "March of the Lich King": [] as [Any],
        "Path of Arthas": [] as [Any],
        "Festival of Legends": [] as [Any]
    ]

    let successCardDetailResponse: [[String: Any]] = [
        [
            "cardId": "YOD_041",
            "dbfId": 56292,
            "name": "Eye of the Storm",
            "cardSet": "Galakrond's Awakening",
            "type": "Spell",
            "rarity": "Common",
            "cost": 10,
            "text": "Summon three 5/6 Elementals with <b>Taunt</b>. <b>Overload:</b> (3)",
            "flavor": "If that's the eye, I would hate to see the rest of the storm.",
            "artist": "Evgeniy Dlinnov",
            "collectible": true,
            "playerClass": "Shaman",
            "spellSchool": "Nature",
            "img": "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/e419977f3c5d3470f9d06934d26b5d93d7aa3d5fac8bee9a78ed89663157f1e1.png",
            "imgGold": "https://d15f34w2p8l1cc.cloudfront.net/hearthstone/bf05ace8b85bf91610e4455286120ee83235478a385cbcd48bb6d46a0befba91.png",
            "locale": "enUS",
            "mechanics": [
                [
                    "name": "Taunt"
                ],
                [
                    "name": "Overload"
                ]
            ]
        ]
    ]
}
