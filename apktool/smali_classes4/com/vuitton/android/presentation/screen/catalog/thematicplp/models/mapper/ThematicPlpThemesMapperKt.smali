.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/mapper/ThematicPlpThemesMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;->b:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/CurrentTheme;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    move-result-object v5

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;->b:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v3

    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    invoke-direct {p0, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    return-object p0
.end method

.method public static final b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v6

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/Theme;->e:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
