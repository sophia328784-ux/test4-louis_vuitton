.class public abstract Lcom/vuitton/android/presentation/model/storelocator/StoreMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/storelocator/Store;Z)Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->b:Ljava/lang/String;

    invoke-static {}, Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;->a()Lkotlin/enums/EnumEntries;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    move-object v3, v4

    check-cast v3, Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    if-eqz v3, :cond_8

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->e:Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    iget-object v8, v6, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;->b:Ljava/lang/String;

    iget-object v10, v6, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;->c:Ljava/lang/String;

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;->d:Ljava/lang/String;

    iget-object v12, v6, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreAddress;->e:Ljava/lang/String;

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->f:Ljava/lang/String;

    move-object v8, v5

    move-object v5, v7

    iget-boolean v7, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->g:Z

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->h:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    move-object v10, v8

    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;->a:Ljava/lang/String;

    new-instance v14, Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;

    if-nez p1, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v10, 0x3

    if-ge v15, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v10}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v10, Lkotlin/ranges/IntProgression;->b:I

    iget v10, v10, Lkotlin/ranges/IntProgression;->c:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v13, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_3
    :goto_2
    iget-object v10, v12, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;->b:Ljava/lang/String;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/storelocator/StoreOpeningHours;->c:Ljava/lang/String;

    const-string v15, " - "

    invoke-static {v10, v15, v12}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v13, v10}, Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;->i:Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;

    if-eqz v0, :cond_7

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;->b:Ljava/lang/String;

    if-nez v10, :cond_5

    const-string v10, ""

    :cond_5
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/storelocator/Megatrio;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/common/Cta;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/model/common/CtaUiModel;

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/common/Cta;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/common/Cta;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v11}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v11

    invoke-direct {v13, v14, v11}, Lcom/vuitton/android/presentation/model/common/CtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    invoke-direct {v0, v9, v10, v12}, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v9, v0

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    new-instance v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;Ljava/lang/String;ZLjava/util/List;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/storelocator/exception/StoreTypeException$InvalidStoreType;

    invoke-direct {v0}, Lcom/vuitton/foundation/model/domain/model/storelocator/exception/StoreTypeException$InvalidStoreType;-><init>()V

    throw v0
.end method
