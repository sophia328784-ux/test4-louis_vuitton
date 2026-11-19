.class public abstract Lcom/vuitton/android/data/dto/storelocator/mapper/StoreMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/storelocator/StoreDto;)Lcom/vuitton/foundation/model/domain/model/storelocator/Store;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->d:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_0

    move-object v4, v5

    :cond_0
    iget-object v6, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->e:Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;->a:Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v8, v5

    :cond_1
    iget-object v9, v6, Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;->b:Ljava/lang/String;

    if-nez v9, :cond_2

    move-object v9, v5

    :cond_2
    iget-object v10, v6, Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;->c:Ljava/lang/String;

    if-nez v10, :cond_3

    move-object v10, v5

    :cond_3
    iget-object v11, v6, Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;->d:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;->e:Ljava/lang/String;

    if-nez v6, :cond_4

    move-object v12, v5

    goto :goto_0

    :cond_4
    move-object v12, v6

    :goto_0
    invoke-direct/range {v7 .. v12}, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->f:Ljava/lang/String;

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->g:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_6

    move-object v6, v5

    :cond_6
    iget-object v9, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->h:Ljava/lang/Boolean;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->i:Ljava/util/List;

    const/16 v11, 0xa

    if-eqz v10, :cond_b

    check-cast v10, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;

    iget-object v15, v13, Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto;->a:Ljava/lang/String;

    iget-object v8, v13, Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto;->b:Ljava/lang/String;

    if-nez v8, :cond_8

    move-object v8, v5

    :cond_8
    iget-object v13, v13, Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto;->c:Ljava/lang/String;

    if-nez v13, :cond_9

    move-object v13, v5

    :cond_9
    invoke-direct {v14, v15, v8, v13}, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    :goto_4
    move-object v8, v12

    goto :goto_5

    :cond_b
    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_4

    :goto_5
    iget-object v0, v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->j:Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;

    if-eqz v0, :cond_d

    iget-object v5, v0, Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/common/CtaDto;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/common/Cta;

    iget-object v14, v11, Lcom/vuitton/android/data/dto/common/CtaDto;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/common/CtaDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-static {v11}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v11

    invoke-direct {v13, v14, v11}, Lcom/vuitton/foundation/model/domain/model/common/Cta;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;

    invoke-direct {v0, v5, v10, v12}, Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;

    move/from16 v16, v9

    move-object v9, v0

    move-object v0, v5

    move-object v5, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;)V

    return-object v0
.end method
