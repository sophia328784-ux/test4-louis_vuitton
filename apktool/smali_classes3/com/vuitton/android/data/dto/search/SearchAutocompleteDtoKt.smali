.class public abstract Lcom/vuitton/android/data/dto/search/SearchAutocompleteDtoKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/search/SearchAutocompleteDto;)Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/search/SearchAutocompleteDto;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/search/SearchMatchDto;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/search/SearchMatch;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/search/SearchMatchDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/search/SearchMatchDto;->b:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/search/AutocompleteDisplayDto;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;

    iget-object v10, v8, Lcom/vuitton/android/data/dto/search/AutocompleteDisplayDto;->a:Ljava/lang/String;

    iget-boolean v8, v8, Lcom/vuitton/android/data/dto/search/AutocompleteDisplayDto;->b:Z

    invoke-direct {v9, v10, v8}, Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-direct {v5, v6, v7}, Lcom/vuitton/foundation/model/domain/model/search/SearchMatch;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/search/SearchAutocompleteDto;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/search/SearchHintDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;

    iget-object v5, v3, Lcom/vuitton/android/data/dto/search/SearchHintDto;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/search/SearchHintDto;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/android/data/dto/search/SearchHintDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v7

    goto :goto_3

    :cond_2
    move-object v7, v8

    :goto_3
    iget-object v3, v3, Lcom/vuitton/android/data/dto/search/SearchHintDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v9, v3, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-static {v9, v3, v8}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/vuitton/foundation/model/domain/model/search/SearchHint;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {v0, v2, v1}, Lcom/vuitton/foundation/model/domain/model/search/SearchAutocomplete;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
