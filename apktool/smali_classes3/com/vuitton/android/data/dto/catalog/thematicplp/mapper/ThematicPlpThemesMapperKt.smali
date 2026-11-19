.class public abstract Lcom/vuitton/android/data/dto/catalog/thematicplp/mapper/ThematicPlpThemesMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;)Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;->c:Ljava/lang/String;

    iget-object v9, v4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v9}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v9

    iget-object v10, v4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;->e:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;->c:Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;->b:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;

    iget-object v7, v3, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    sget-object v8, Lcom/vuitton/android/data/dto/catalog/thematicplp/mapper/ThematicPlpThemesMapperKt$toDomain$3;->b:Lcom/vuitton/android/data/dto/catalog/thematicplp/mapper/ThematicPlpThemesMapperKt$toDomain$3;

    invoke-static {v7, v8}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v7

    iget-object v3, v3, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-direct {v6, v7, v3}, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;-><init>(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Lcom/vuitton/foundation/model/domain/model/common/Asset;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;

    invoke-direct {p0, v1, v4, v5}, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    invoke-direct {v1, v0, v2, p0}, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)V

    return-object v1
.end method
