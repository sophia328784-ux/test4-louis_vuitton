.class public abstract Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$CategoryScreen;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "catalog"

    const-string v5, "catalog"

    const-string v6, "catalog"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$SubcategoryScreen;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$SubcategoryScreen;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$SubcategoryScreen;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$SubcategoryScreen;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "catalog_l2"

    const-string v6, "catalog"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v3

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "catalog"

    const-string v9, "open_l2"

    const-string v10, "catalog"

    const-string v11, "click"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;

    const-string v6, "catalog_"

    if-eqz v1, :cond_4

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;->a:Ljava/lang/String;

    invoke-static {v6, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v10, "open_l3"

    const-string v11, "catalog"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;->a:Ljava/lang/String;

    invoke-static {v6, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v15, 0x61

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v10, "open_push"

    const-string v11, "catalog"

    const-string v12, "click"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;

    const-string v7, "product_list_"

    if-eqz v1, :cond_6

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;->a:Ljava/lang/String;

    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;->d:Z

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;-><init>(Z)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v2, v0, v5

    aput-object v6, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "select_plp"

    const-string v12, "catalog"

    const-string v13, "click"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;

    const-string v8, "_scroll"

    if-eqz v1, :cond_7

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;->a:I

    invoke-static {v0, v8}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "catalog"

    const-string v5, "scroll_l1"

    const-string v6, "catalog"

    const-string v7, "scroll"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;->a:Ljava/lang/String;

    invoke-static {v6, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;->b:I

    invoke-static {v0, v8}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "scroll_l2"

    const-string v13, "catalog"

    const-string v14, "scroll"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;->a:Ljava/lang/String;

    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;->b:I

    const-string v2, "_swipe"

    invoke-static {v0, v2}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v11, "swipe_l3"

    const-string v12, "catalog"

    const-string v13, "swipe"

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;

    const-string v8, "CarouselMedium"

    if-eqz v1, :cond_a

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;->a:Ljava/lang/String;

    invoke-static {v6, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v0, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "swipe_carousel"

    const-string v13, "catalog"

    const-string v14, "swipe"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->a:Ljava/lang/String;

    invoke-static {v6, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    invoke-direct {v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;->b:I

    add-int/2addr v0, v5

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v12, "select_carousel"

    const-string v13, "catalog"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;->a:Ljava/lang/String;

    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;->b:I

    const-string v1, "%"

    invoke-static {v0, v1}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x60

    const/16 v17, 0x0

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;

    const-string v12, "catalog"

    const-string v13, "scroll"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
