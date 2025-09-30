import 'dart:convert';

class LastCardsResponse {
  LastCardsResponse({
    required this.object,
    required this.totalCards,
    required this.hasMore,
    required this.nextPage,
    required this.data,
  });

  final String? object;
  final int? totalCards;
  final bool? hasMore;
  final String? nextPage;
  final List<CardData> data;

  factory LastCardsResponse.fromJson(String str) =>
      LastCardsResponse.fromMap(jsonDecode(str));

  factory LastCardsResponse.fromMap(Map<String, dynamic> json) {
    return LastCardsResponse(
      object: json["object"],
      totalCards: json["total_cards"],
      hasMore: json["has_more"],
      nextPage: json["next_page"],
      data: json["data"] == null
          ? []
          : List<CardData>.from(json["data"]!.map((x) => CardData.fromJson(x))),
    );
  }
}

class CardData {
  CardData({
    required this.object,
    required this.id,
    required this.oracleId,
    required this.multiverseIds,
    required this.tcgplayerId,
    required this.cardmarketId,
    required this.name,
    required this.lang,
    required this.releasedAt,
    required this.uri,
    required this.scryfallUri,
    required this.layout,
    required this.highresImage,
    required this.imageStatus,
    required this.imageUris,
    required this.manaCost,
    required this.cmc,
    required this.typeLine,
    required this.oracleText,
    required this.power,
    required this.toughness,
    required this.colors,
    required this.colorIdentity,
    required this.keywords,
    required this.legalities,
    required this.games,
    required this.reserved,
    required this.gameChanger,
    required this.foil,
    required this.nonfoil,
    required this.finishes,
    required this.oversized,
    required this.promo,
    required this.reprint,
    required this.variation,
    required this.setId,
    required this.datumSet,
    required this.setName,
    required this.setType,
    required this.setUri,
    required this.setSearchUri,
    required this.scryfallSetUri,
    required this.rulingsUri,
    required this.printsSearchUri,
    required this.collectorNumber,
    required this.digital,
    required this.rarity,
    required this.watermark,
    required this.cardBackId,
    required this.artist,
    required this.artistIds,
    required this.illustrationId,
    required this.borderColor,
    required this.frame,
    required this.frameEffects,
    required this.securityStamp,
    required this.fullArt,
    required this.textless,
    required this.booster,
    required this.storySpotlight,
    required this.promoTypes,
    required this.edhrecRank,
    required this.prices,
    required this.relatedUris,
    required this.purchaseUris,
    required this.flavorText,
    required this.mtgoId,
    required this.arenaId,
    required this.allParts,
    required this.pennyRank,
    required this.preview,
    required this.cardFaces,
    required this.producedMana,
    required this.flavorName,
    required this.printedName,
    required this.printedTypeLine,
    required this.printedText,
    required this.colorIndicator,
  });

  final String? object;
  final String? id;
  final String? oracleId;
  final List<int> multiverseIds;
  final int? tcgplayerId;
  final int? cardmarketId;
  final String? name;
  final String? lang;
  final DateTime? releasedAt;
  final String? uri;
  final String? scryfallUri;
  final String? layout;
  final bool? highresImage;
  final String? imageStatus;
  final ImageUris? imageUris;
  final String? manaCost;
  final double? cmc;
  final String? typeLine;
  final String? oracleText;
  final String? power;
  final String? toughness;
  final List<String> colors;
  final List<String> colorIdentity;
  final List<String> keywords;
  final Legalities? legalities;
  final List<String> games;
  final bool? reserved;
  final bool? gameChanger;
  final bool? foil;
  final bool? nonfoil;
  final List<String> finishes;
  final bool? oversized;
  final bool? promo;
  final bool? reprint;
  final bool? variation;
  final String? setId;
  final String? datumSet;
  final String? setName;
  final String? setType;
  final String? setUri;
  final String? setSearchUri;
  final String? scryfallSetUri;
  final String? rulingsUri;
  final String? printsSearchUri;
  final String? collectorNumber;
  final bool? digital;
  final String? rarity;
  final String? watermark;
  final String? cardBackId;
  final String? artist;
  final List<String> artistIds;
  final String? illustrationId;
  final String? borderColor;
  final String? frame;
  final List<String> frameEffects;
  final String? securityStamp;
  final bool? fullArt;
  final bool? textless;
  final bool? booster;
  final bool? storySpotlight;
  final List<String> promoTypes;
  final int? edhrecRank;
  final Map<String?, String?> prices;
  final RelatedUris? relatedUris;
  final PurchaseUris? purchaseUris;
  final String? flavorText;
  final int? mtgoId;
  final int? arenaId;
  final List<AllPart> allParts;
  final int? pennyRank;
  final Preview? preview;
  final List<CardFace> cardFaces;
  final List<String> producedMana;
  final String? flavorName;
  final String? printedName;
  final String? printedTypeLine;
  final String? printedText;
  final List<String> colorIndicator;

  factory CardData.fromJson(Map<String, dynamic> json) {
    return CardData(
      object: json["object"],
      id: json["id"],
      oracleId: json["oracle_id"],
      multiverseIds: json["multiverse_ids"] == null
          ? []
          : List<int>.from(json["multiverse_ids"]!.map((x) => x)),
      tcgplayerId: json["tcgplayer_id"],
      cardmarketId: json["cardmarket_id"],
      name: json["name"],
      lang: json["lang"],
      releasedAt: DateTime.tryParse(json["released_at"] ?? ""),
      uri: json["uri"],
      scryfallUri: json["scryfall_uri"],
      layout: json["layout"],
      highresImage: json["highres_image"],
      imageStatus: json["image_status"],
      imageUris: json["image_uris"] == null
          ? null
          : ImageUris.fromJson(json["image_uris"]),
      manaCost: json["mana_cost"],
      cmc: json["cmc"],
      typeLine: json["type_line"],
      oracleText: json["oracle_text"],
      power: json["power"],
      toughness: json["toughness"],
      colors: json["colors"] == null
          ? []
          : List<String>.from(json["colors"]!.map((x) => x)),
      colorIdentity: json["color_identity"] == null
          ? []
          : List<String>.from(json["color_identity"]!.map((x) => x)),
      keywords: json["keywords"] == null
          ? []
          : List<String>.from(json["keywords"]!.map((x) => x)),
      legalities: json["legalities"] == null
          ? null
          : Legalities.fromJson(json["legalities"]),
      games: json["games"] == null
          ? []
          : List<String>.from(json["games"]!.map((x) => x)),
      reserved: json["reserved"],
      gameChanger: json["game_changer"],
      foil: json["foil"],
      nonfoil: json["nonfoil"],
      finishes: json["finishes"] == null
          ? []
          : List<String>.from(json["finishes"]!.map((x) => x)),
      oversized: json["oversized"],
      promo: json["promo"],
      reprint: json["reprint"],
      variation: json["variation"],
      setId: json["set_id"],
      datumSet: json["set"],
      setName: json["set_name"],
      setType: json["set_type"],
      setUri: json["set_uri"],
      setSearchUri: json["set_search_uri"],
      scryfallSetUri: json["scryfall_set_uri"],
      rulingsUri: json["rulings_uri"],
      printsSearchUri: json["prints_search_uri"],
      collectorNumber: json["collector_number"],
      digital: json["digital"],
      rarity: json["rarity"],
      watermark: json["watermark"],
      cardBackId: json["card_back_id"],
      artist: json["artist"],
      artistIds: json["artist_ids"] == null
          ? []
          : List<String>.from(json["artist_ids"]!.map((x) => x)),
      illustrationId: json["illustration_id"],
      borderColor: json["border_color"],
      frame: json["frame"],
      frameEffects: json["frame_effects"] == null
          ? []
          : List<String>.from(json["frame_effects"]!.map((x) => x)),
      securityStamp: json["security_stamp"],
      fullArt: json["full_art"],
      textless: json["textless"],
      booster: json["booster"],
      storySpotlight: json["story_spotlight"],
      promoTypes: json["promo_types"] == null
          ? []
          : List<String>.from(json["promo_types"]!.map((x) => x)),
      edhrecRank: json["edhrec_rank"],
      prices: Map.from(
        json["prices"],
      ).map((k, v) => MapEntry<String, String>(k ?? '', v ?? '')),
      relatedUris: json["related_uris"] == null
          ? null
          : RelatedUris.fromJson(json["related_uris"]),
      purchaseUris: json["purchase_uris"] == null
          ? null
          : PurchaseUris.fromJson(json["purchase_uris"]),
      flavorText: json["flavor_text"],
      mtgoId: json["mtgo_id"],
      arenaId: json["arena_id"],
      allParts: json["all_parts"] == null
          ? []
          : List<AllPart>.from(
              json["all_parts"]!.map((x) => AllPart.fromJson(x)),
            ),
      pennyRank: json["penny_rank"],
      preview: json["preview"] == null
          ? null
          : Preview.fromJson(json["preview"]),
      cardFaces: json["card_faces"] == null
          ? []
          : List<CardFace>.from(
              json["card_faces"]!.map((x) => CardFace.fromJson(x)),
            ),
      producedMana: json["produced_mana"] == null
          ? []
          : List<String>.from(json["produced_mana"]!.map((x) => x)),
      flavorName: json["flavor_name"],
      printedName: json["printed_name"],
      printedTypeLine: json["printed_type_line"],
      printedText: json["printed_text"],
      colorIndicator: json["color_indicator"] == null
          ? []
          : List<String>.from(json["color_indicator"]!.map((x) => x)),
    );
  }
}

class AllPart {
  AllPart({
    required this.object,
    required this.id,
    required this.component,
    required this.name,
    required this.typeLine,
    required this.uri,
  });

  final String? object;
  final String? id;
  final String? component;
  final String? name;
  final String? typeLine;
  final String? uri;

  factory AllPart.fromJson(Map<String, dynamic> json) {
    return AllPart(
      object: json["object"],
      id: json["id"],
      component: json["component"],
      name: json["name"],
      typeLine: json["type_line"],
      uri: json["uri"],
    );
  }
}

class CardFace {
  CardFace({
    required this.object,
    required this.name,
    required this.manaCost,
    required this.typeLine,
    required this.oracleText,
    required this.colors,
    required this.power,
    required this.toughness,
    required this.flavorText,
    required this.artist,
    required this.artistId,
    required this.illustrationId,
    required this.imageUris,
    required this.colorIndicator,
    required this.oracleId,
    required this.layout,
    required this.cmc,
    required this.loyalty,
  });

  final String? object;
  final String? name;
  final String? manaCost;
  final String? typeLine;
  final String? oracleText;
  final List<String> colors;
  final String? power;
  final String? toughness;
  final String? flavorText;
  final String? artist;
  final String? artistId;
  final String? illustrationId;
  final ImageUris? imageUris;
  final List<String> colorIndicator;
  final String? oracleId;
  final String? layout;
  final double? cmc;
  final String? loyalty;

  factory CardFace.fromJson(Map<String, dynamic> json) {
    return CardFace(
      object: json["object"],
      name: json["name"],
      manaCost: json["mana_cost"],
      typeLine: json["type_line"],
      oracleText: json["oracle_text"],
      colors: json["colors"] == null
          ? []
          : List<String>.from(json["colors"]!.map((x) => x)),
      power: json["power"],
      toughness: json["toughness"],
      flavorText: json["flavor_text"],
      artist: json["artist"],
      artistId: json["artist_id"],
      illustrationId: json["illustration_id"],
      imageUris: json["image_uris"] == null
          ? null
          : ImageUris.fromJson(json["image_uris"]),
      colorIndicator: json["color_indicator"] == null
          ? []
          : List<String>.from(json["color_indicator"]!.map((x) => x)),
      oracleId: json["oracle_id"],
      layout: json["layout"],
      cmc: json["cmc"],
      loyalty: json["loyalty"],
    );
  }
}

class ImageUris {
  ImageUris({
    required this.small,
    required this.normal,
    required this.large,
    required this.png,
    required this.artCrop,
    required this.borderCrop,
  });

  final String? small;
  final String? normal;
  final String? large;
  final String? png;
  final String? artCrop;
  final String? borderCrop;

  static const String noImage = 'https://shop.tiendamulligan.com/wp-content/uploads/2025/04/61AGZ37D7eL_11zon.webp';

  factory ImageUris.fromJson(Map<String, dynamic> json) {
    return ImageUris(
      small: json["small"] ?? noImage,
      normal: json["normal"] ?? noImage,
      large: json["large"] ?? noImage,
      png: json["png"] ?? noImage,
      artCrop: json["art_crop"] ?? noImage,
      borderCrop: json["border_crop"] ?? noImage,
    );
  }
}

class Legalities {
  Legalities({
    required this.standard,
    required this.future,
    required this.historic,
    required this.timeless,
    required this.gladiator,
    required this.pioneer,
    required this.modern,
    required this.legacy,
    required this.pauper,
    required this.vintage,
    required this.penny,
    required this.commander,
    required this.oathbreaker,
    required this.standardbrawl,
    required this.brawl,
    required this.alchemy,
    required this.paupercommander,
    required this.duel,
    required this.oldschool,
    required this.premodern,
    required this.predh,
  });

  final String? standard;
  final String? future;
  final String? historic;
  final String? timeless;
  final String? gladiator;
  final String? pioneer;
  final String? modern;
  final String? legacy;
  final String? pauper;
  final String? vintage;
  final String? penny;
  final String? commander;
  final String? oathbreaker;
  final String? standardbrawl;
  final String? brawl;
  final String? alchemy;
  final String? paupercommander;
  final String? duel;
  final String? oldschool;
  final String? premodern;
  final String? predh;

  factory Legalities.fromJson(Map<String, dynamic> json) {
    return Legalities(
      standard: json["standard"],
      future: json["future"],
      historic: json["historic"],
      timeless: json["timeless"],
      gladiator: json["gladiator"],
      pioneer: json["pioneer"],
      modern: json["modern"],
      legacy: json["legacy"],
      pauper: json["pauper"],
      vintage: json["vintage"],
      penny: json["penny"],
      commander: json["commander"],
      oathbreaker: json["oathbreaker"],
      standardbrawl: json["standardbrawl"],
      brawl: json["brawl"],
      alchemy: json["alchemy"],
      paupercommander: json["paupercommander"],
      duel: json["duel"],
      oldschool: json["oldschool"],
      premodern: json["premodern"],
      predh: json["predh"],
    );
  }
}

class Preview {
  Preview({
    required this.source,
    required this.sourceUri,
    required this.previewedAt,
  });

  final String? source;
  final String? sourceUri;
  final DateTime? previewedAt;

  factory Preview.fromJson(Map<String, dynamic> json) {
    return Preview(
      source: json["source"],
      sourceUri: json["source_uri"],
      previewedAt: DateTime.tryParse(json["previewed_at"] ?? ""),
    );
  }
}

class PurchaseUris {
  PurchaseUris({
    required this.tcgplayer,
    required this.cardmarket,
    required this.cardhoarder,
  });

  final String? tcgplayer;
  final String? cardmarket;
  final String? cardhoarder;

  factory PurchaseUris.fromJson(Map<String, dynamic> json) {
    return PurchaseUris(
      tcgplayer: json["tcgplayer"],
      cardmarket: json["cardmarket"],
      cardhoarder: json["cardhoarder"],
    );
  }
}

class RelatedUris {
  RelatedUris({
    required this.tcgplayerInfiniteArticles,
    required this.tcgplayerInfiniteDecks,
    required this.edhrec,
    required this.gatherer,
  });

  final String? tcgplayerInfiniteArticles;
  final String? tcgplayerInfiniteDecks;
  final String? edhrec;
  final String? gatherer;

  factory RelatedUris.fromJson(Map<String, dynamic> json) {
    return RelatedUris(
      tcgplayerInfiniteArticles: json["tcgplayer_infinite_articles"],
      tcgplayerInfiniteDecks: json["tcgplayer_infinite_decks"],
      edhrec: json["edhrec"],
      gatherer: json["gatherer"],
    );
  }
}
