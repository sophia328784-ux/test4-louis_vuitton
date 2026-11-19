.class public abstract Lcom/vuitton/android/domain/extensions/FeedExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "domain"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Lcom/vuitton/foundation/model/domain/model/feed/Feed;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto/16 :goto_2

    :cond_2
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;->g:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_4
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_5
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_6
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_7
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_8
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    goto :goto_2

    :cond_9
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    :goto_1
    move-object v2, v4

    goto :goto_2

    :cond_a
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_b
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;

    if-eqz v3, :cond_c

    goto :goto_1

    :cond_c
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    if-eqz v3, :cond_d

    goto :goto_1

    :cond_d
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    if-eqz v3, :cond_e

    goto :goto_1

    :cond_e
    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;

    if-eqz v2, :cond_f

    goto :goto_1

    :goto_2
    invoke-static {v2, p1}, Lcom/vuitton/android/domain/extensions/FeedExtKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_10
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v2, :cond_13

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {v5, p1}, Lcom/vuitton/android/domain/extensions/FeedExtKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    move-result-object v1

    goto/16 :goto_8

    :cond_13
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v2, :cond_16

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {v5, p1}, Lcom/vuitton/android/domain/extensions/FeedExtKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    move-result-object v1

    goto/16 :goto_8

    :cond_16
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v2, :cond_19

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {v5, p1}, Lcom/vuitton/android/domain/extensions/FeedExtKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_18
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    move-result-object v1

    goto :goto_8

    :cond_19
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v2, :cond_1c

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    invoke-static {v4, p1}, Lcom/vuitton/android/domain/extensions/FeedExtKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1b
    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->b:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->d:Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    move-object v1, v3

    :cond_1c
    :goto_8
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1d
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/feed/Feed;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/Coordinates;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;

    iget-wide v5, v1, Lcom/vuitton/foundation/model/domain/model/common/Coordinates;->a:D

    iget-wide v7, v1, Lcom/vuitton/foundation/model/domain/model/common/Coordinates;->b:D

    iget v9, v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;->a:F

    float-to-double v9, v9

    iget v11, v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;->b:F

    float-to-double v11, v11

    sub-double v13, v9, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    sub-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    div-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr v5, v11

    const-wide v7, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iget v3, v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;->c:I

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_2

    return v2

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v2
.end method
