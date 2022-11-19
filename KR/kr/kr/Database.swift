//
//  Data.swift
//  kr
//
//  Created by Rafael Shamsutdinov on 19.11.2022.
//

import Foundation
let json = """
{
"accounts": [
    {
        "user": {
            "status": "The World is a same type of stand as The Fool",
            "posts": 8223,
            "followers": 7948,
            "name": "Polnareff",
            "following": 7586,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
        },
        "discovers": [
            {
                "followingFriends": [
                    "Jolyne",
                    "Polnareff",
                    "Iggy",
                    "Johnny",
                    "Johnny",
                    "Justice",
                    "Diego",
                    "Silver Chariot",
                    "Johnny"
                ],
                "kind": "followedByFriends",
                "name": "Emperor",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Josuke",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Justice",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "The Fool",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Jolyne",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Polnareff",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Jotaro",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [
                    "Giorno",
                    "Hermit Purple",
                    "Star Platinum",
                    "Josuke",
                    "Polnareff",
                    "The Fool",
                    "Diego",
                    "Silver Chariot",
                    "The Fool"
                ],
                "kind": "followedByFriends",
                "name": "The Fool",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            }
        ]
    },
    {
        "user": {
            "status": "Silver Chariot is a same type of stand as Jolyne",
            "posts": 2623,
            "followers": 3029,
            "name": "Star Platinum",
            "following": 2049,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
        },
        "discovers": [
            {
                "followingFriends": [
                    "Johnny",
                    "Josuke",
                    "Johnny",
                    "The World",
                    "The Fool",
                    "Kakyoin",
                    "Iggy",
                    "Justice",
                    "Star Platinum"
                ],
                "kind": "followedByFriends",
                "name": "Jolyne",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Justice",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [
                    "Johnny",
                    "Jotaro",
                    "Diego",
                    "The Fool",
                    "Hermit Purple",
                    "Silver Chariot",
                    "Hermit Purple",
                    "DIO",
                    "Jolyne"
                ],
                "kind": "followedByFriends",
                "name": "Justice",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            {
                "followingFriends": [
                    "DIO",
                    "Jolyne",
                    "Jotaro",
                    "Polnareff",
                    "Silver Chariot",
                    "Josuke",
                    "Hol Horse",
                    "Kakyoin",
                    "Iggy"
                ],
                "kind": "followedByFriends",
                "name": "Jotaro",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Josuke",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
            },
            {
                "followingFriends": [
                    "Jotaro",
                    "Diego",
                    "Emperor",
                    "Jonathan",
                    "Hermit Purple",
                    "Kakyoin",
                    "Josuke",
                    "Diego",
                    "Josuke"
                ],
                "kind": "followedByFriends",
                "name": "Giorno",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [
                    "Silver Chariot",
                    "Diego",
                    "Polnareff",
                    "The Fool",
                    "Silver Chariot",
                    "Josuke",
                    "Jotaro",
                    "Kakyoin",
                    "Johnny"
                ],
                "kind": "followedByFriends",
                "name": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [
                    "Jotaro",
                    "Diego",
                    "Justice",
                    "Silver Chariot",
                    "Diego",
                    "Hol Horse",
                    "Emperor",
                    "Josuke",
                    "Johnny"
                ],
                "kind": "followedByFriends",
                "name": "Kakyoin",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            }
        ]
    },
    {
        "user": {
            "status": "Hermit Purple is a same type of stand as Josuke",
            "posts": 1891,
            "followers": 6478,
            "name": "Justice",
            "following": 6808,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
        },
        "discovers": [
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Star Platinum",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Giorno",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Iggy",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "The World",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Hol Horse",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Johnny",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [
                    "Hol Horse",
                    "The Fool",
                    "Josuke",
                    "DIO",
                    "The World",
                    "Giorno",
                    "Kakyoin",
                    "Hermit Purple",
                    "Silver Chariot"
                ],
                "kind": "followedByFriends",
                "name": "Jonathan",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [
                    "Iggy",
                    "Kakyoin",
                    "DIO",
                    "Emperor",
                    "Jonathan",
                    "Kakyoin",
                    "Iggy",
                    "Giorno",
                    "Jolyne"
                ],
                "kind": "followedByFriends",
                "name": "Hermit Purple",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
            }
        ]
    },
    {
        "user": {
            "status": "Josuke is a same type of stand as Polnareff",
            "posts": 6699,
            "followers": 267,
            "name": "Johnny",
            "following": 2787,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
        },
        "discovers": [
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Kakyoin",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [
                    "Giorno",
                    "Giorno",
                    "Johnny",
                    "Jonathan",
                    "Jolyne",
                    "Polnareff",
                    "Emperor",
                    "Josuke",
                    "The Fool"
                ],
                "kind": "followedByFriends",
                "name": "Justice",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Hol Horse",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Iggy",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Star Platinum",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Silver Chariot",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "The World",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [
                    "Hol Horse",
                    "Johnny",
                    "Giorno",
                    "Jolyne",
                    "Jolyne",
                    "DIO",
                    "Hol Horse",
                    "DIO",
                    "Jotaro"
                ],
                "kind": "followedByFriends",
                "name": "Emperor",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
            }
        ]
    },
    {
        "user": {
            "status": "Emperor is a same type of stand as Kakyoin",
            "posts": 6050,
            "followers": 7886,
            "name": "Josuke",
            "following": 733,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png"
        },
        "discovers": [
            {
                "followingFriends": [
                    "Giorno",
                    "Johnny",
                    "The World",
                    "Hermit Purple",
                    "Iggy",
                    "Diego",
                    "The World",
                    "Johnny",
                    "Silver Chariot"
                ],
                "kind": "followedByFriends",
                "name": "DIO",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Kakyoin",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Josuke",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Giorno",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [
                    "Josuke",
                    "Silver Chariot",
                    "Giorno",
                    "Jotaro",
                    "Giorno",
                    "Justice",
                    "Iggy",
                    "Emperor",
                    "Jolyne"
                ],
                "kind": "followedByFriends",
                "name": "Polnareff",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Star Platinum",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
            },
            {
                "followingFriends": [
                    "The World",
                    "Josuke",
                    "Jolyne",
                    "Giorno",
                    "Jolyne",
                    "The Fool",
                    "Polnareff",
                    "Johnny",
                    "Iggy"
                ],
                "kind": "followedByFriends",
                "name": "Justice",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
            },
            {
                "followingFriends": [
                    "Hol Horse",
                    "DIO",
                    "The World",
                    "Diego",
                    "Emperor",
                    "DIO",
                    "Justice",
                    "DIO",
                    "Iggy"
                ],
                "kind": "followedByFriends",
                "name": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
            }
        ]
    },
    {
        "user": {
            "status": "Jotaro is a same type of stand as Kakyoin",
            "posts": 2531,
            "followers": 5128,
            "name": "Justice",
            "following": 427,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
        },
        "discovers": [
            {
                "followingFriends": [
                    "Silver Chariot",
                    "Josuke",
                    "Hol Horse",
                    "Hol Horse",
                    "Hermit Purple",
                    "Hol Horse",
                    "Justice",
                    "Jotaro",
                    "Emperor"
                ],
                "kind": "followedByFriends",
                "name": "Emperor",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "The Fool",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [
                    "The World",
                    "Giorno",
                    "Justice",
                    "Johnny",
                    "Josuke",
                    "Jotaro",
                    "The World",
                    "Star Platinum",
                    "The World"
                ],
                "kind": "followedByFriends",
                "name": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [
                    "Kakyoin",
                    "Diego",
                    "Silver Chariot",
                    "DIO",
                    "The Fool",
                    "Hermit Purple",
                    "Hol Horse",
                    "Johnny",
                    "Emperor"
                ],
                "kind": "followedByFriends",
                "name": "Justice",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Polnareff",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "DIO",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Johnny",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Hol Horse",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
            }
        ]
    },
    {
        "user": {
            "status": "The World is a same type of stand as Kakyoin",
            "posts": 9417,
            "followers": 8824,
            "name": "Star Platinum",
            "following": 8724,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
        },
        "discovers": [
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Iggy",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Silver Chariot",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
            },
            {
                "followingFriends": [
                    "DIO",
                    "Silver Chariot",
                    "Hermit Purple",
                    "Hol Horse",
                    "Jonathan",
                    "Silver Chariot",
                    "The World",
                    "Silver Chariot",
                    "Silver Chariot"
                ],
                "kind": "followedByFriends",
                "name": "Josuke",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Johnny",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Jonathan",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [
                    "Jolyne",
                    "Silver Chariot",
                    "Silver Chariot",
                    "Iggy",
                    "Jotaro",
                    "Giorno",
                    "Jonathan",
                    "Star Platinum",
                    "Iggy"
                ],
                "kind": "followedByFriends",
                "name": "Star Platinum",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Emperor",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
            }
        ]
    },
    {
        "user": {
            "status": "Johnny is a same type of stand as Josuke",
            "posts": 8945,
            "followers": 1974,
            "name": "Silver Chariot",
            "following": 3712,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
        },
        "discovers": [
            {
                "followingFriends": [
                    "Star Platinum",
                    "Jolyne",
                    "Justice",
                    "Star Platinum",
                    "Kakyoin",
                    "Jonathan",
                    "The World",
                    "Jotaro",
                    "Emperor"
                ],
                "kind": "followedByFriends",
                "name": "Giorno",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Johnny",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Johnny",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Hol Horse",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            },
            {
                "followingFriends": [
                    "Hermit Purple",
                    "Johnny",
                    "Jotaro",
                    "The Fool",
                    "The World",
                    "The World",
                    "Johnny",
                    "Josuke",
                    "Polnareff"
                ],
                "kind": "followedByFriends",
                "name": "Emperor",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Johnny",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            }
        ]
    },
    {
        "user": {
            "status": "Diego is a same type of stand as The Fool",
            "posts": 1451,
            "followers": 4868,
            "name": "Hermit Purple",
            "following": 2187,
            "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
        },
        "discovers": [
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Giorno",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            },
            {
                "followingFriends": [
                    "Josuke",
                    "Diego",
                    "Jotaro",
                    "Johnny",
                    "Emperor",
                    "Giorno",
                    "Diego",
                    "Emperor",
                    "Silver Chariot"
                ],
                "kind": "followedByFriends",
                "name": "Emperor",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Polnareff",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Hermit Purple",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "Jotaro",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
            },
            {
                "followingFriends": [
                    "Kakyoin",
                    "Polnareff",
                    "Josuke",
                    "The Fool",
                    "Giorno",
                    "Silver Chariot",
                    "DIO",
                    "Iggy",
                    "The World"
                ],
                "kind": "followedByFriends",
                "name": "Star Platinum",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            {
                "followingFriends": [],
                "kind": "popular",
                "name": "The World",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            {
                "followingFriends": [],
                "kind": "followsYou",
                "name": "Iggy",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
            }
        ]
    }
]
}
"""
let jsonData = json.data(using: .utf8)!
let welcome: [Welcome] = try! JSONDecoder().decode([Welcome].self, from: jsonData)
// MARK: - Welcome
struct Welcome: Codable {
    let accounts: [Account]
}

// MARK: - Account
struct Account: Codable {
    let user: User
    let discovers: [Discover]
}
// MARK: - Discover
struct Discover: Codable {
    let followingFriends: [String]
    let kind: Kind
    let name: String
    let avatar: String
}

enum Kind: String, Codable {
    case followedByFriends = "followedByFriends"
    case followsYou = "followsYou"
    case popular = "popular"
}

// MARK: - User
struct User: Codable {
    let status: String
    let posts, followers: Int
    let name: String
    let following: Int
    let avatar: String
}

