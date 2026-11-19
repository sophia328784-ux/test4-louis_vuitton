.class public abstract Lcom/vuitton/android/domain/extensions/FeedSectionsExtKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v4, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_22

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_b

    :cond_4
    :goto_2
    move-object v1, v3

    goto/16 :goto_b

    :cond_5
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v4, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v4, :cond_6

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_22

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_b

    :cond_9
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v2, :cond_d

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v4, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v4, :cond_a

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto :goto_4

    :cond_a
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_22

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto/16 :goto_b

    :cond_d
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v2, :cond_14

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v7, v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v7, :cond_f

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto :goto_6

    :cond_f
    move-object v6, v3

    :goto_6
    if-eqz v6, :cond_12

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_10

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_5

    :cond_10
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_12
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    invoke-static {v1, v4}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    move-result-object v1

    goto/16 :goto_b

    :cond_14
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v2, :cond_1b

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v7, v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v7, :cond_16

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto :goto_8

    :cond_16
    move-object v6, v3

    :goto_8
    if-eqz v6, :cond_19

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_17

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_7

    :cond_17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_19
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1a
    invoke-static {v1, v4}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    move-result-object v1

    goto :goto_b

    :cond_1b
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v2, :cond_22

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v7, v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v7, :cond_1d

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto :goto_a

    :cond_1d
    move-object v6, v3

    :goto_a
    if-eqz v6, :cond_20

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_1e

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_9

    :cond_1e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    :cond_20
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    invoke-static {v1, v4}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    move-result-object v1

    :cond_22
    :goto_b
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_23
    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto/16 :goto_2

    :cond_2
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    goto/16 :goto_2

    :cond_3
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_0
    move v0, v1

    goto/16 :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v2, :cond_6

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_7
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v2, :cond_a

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_a
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v2, :cond_d

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_b

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_0

    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_d
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    :goto_2
    if-eqz v0, :cond_1

    return v3

    :cond_e
    return v1
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Ljava/util/ArrayList;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    move-object v1, v3

    goto/16 :goto_4

    :cond_2
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_3
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_4
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_5
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    move-result-object v1

    goto :goto_4

    :cond_8
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v5, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    move-result-object v1

    goto :goto_4

    :cond_b
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v2, :cond_e

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-nez v5, :cond_c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    move-result-object v1

    :cond_e
    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    return-object v0
.end method

.method public static final d(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static final e(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Ljava/util/ArrayList;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/feed/Feed;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    move-object v1, v3

    goto/16 :goto_4

    :cond_2
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;->c:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_3
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_4
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    if-eqz v2, :cond_7

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-nez v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    move-result-object v1

    goto :goto_4

    :cond_7
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-eqz v2, :cond_a

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-nez v5, :cond_8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    move-result-object v1

    goto :goto_4

    :cond_a
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    if-eqz v2, :cond_d

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    instance-of v5, v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-nez v5, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;->a(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;Ljava/util/ArrayList;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    move-result-object v1

    :cond_d
    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method
