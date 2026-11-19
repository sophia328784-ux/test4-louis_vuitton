.class public abstract Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialSectionMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;->a:Ljava/lang/String;

    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;

    if-eqz p0, :cond_0

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->b(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;

    move-result-object p0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_0
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;

    if-eqz p0, :cond_1

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->f(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;

    move-result-object p0

    goto/16 :goto_7

    :cond_1
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;

    if-eqz p0, :cond_2

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->g(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;

    move-result-object p0

    goto/16 :goto_7

    :cond_2
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;

    if-eqz p0, :cond_5

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;->c:Ljava/lang/String;

    iget-object p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object p0

    move-object v6, p0

    goto :goto_0

    :cond_3
    move-object v6, v1

    :goto_0
    iget-object p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->m(Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;

    move-result-object p0

    move-object v7, p0

    goto :goto_1

    :cond_4
    move-object v7, v1

    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V

    move-object p0, v2

    goto/16 :goto_7

    :cond_5
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;

    if-eqz p0, :cond_6

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->i(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;

    move-result-object p0

    goto/16 :goto_7

    :cond_6
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    if-eqz p0, :cond_7

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->e(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    move-result-object p0

    goto/16 :goto_7

    :cond_7
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;

    if-eqz p0, :cond_8

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->c(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;

    move-result-object p0

    goto/16 :goto_7

    :cond_8
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;

    if-eqz p0, :cond_9

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->d(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;

    move-result-object p0

    goto/16 :goto_7

    :cond_9
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;

    if-eqz p0, :cond_c

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    if-eqz v2, :cond_b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v2

    goto :goto_2

    :cond_a
    move-object v2, v1

    :goto_2
    invoke-direct {v4, v5, v6, v2}, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    goto :goto_3

    :cond_b
    move-object v4, v1

    :goto_3
    iget-object v2, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->a(Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    move-result-object v2

    iget-object v0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V

    goto/16 :goto_7

    :cond_c
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;

    if-eqz p0, :cond_f

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    if-eqz v2, :cond_e

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v2

    goto :goto_4

    :cond_d
    move-object v2, v1

    :goto_4
    invoke-direct {v4, v5, v6, v2}, Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    goto :goto_5

    :cond_e
    move-object v4, v1

    :goto_5
    iget-object v2, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->a(Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    move-result-object v2

    iget-object v0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;->d:Ljava/util/List;

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V

    goto :goto_7

    :cond_f
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;

    if-eqz p0, :cond_10

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v0

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    goto :goto_7

    :cond_10
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;

    if-eqz p0, :cond_11

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->h(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;

    move-result-object p0

    goto :goto_7

    :cond_11
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;

    if-eqz p0, :cond_12

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;->b:Ljava/util/List;

    invoke-direct {p0, v3, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    :cond_12
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;

    if-eqz p0, :cond_13

    check-cast v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    goto :goto_7

    :cond_13
    instance-of p0, v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto;

    if-eqz p0, :cond_14

    move-object p0, v1

    goto :goto_7

    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_7
    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    move-object v1, p0

    :goto_8
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    return-object v1
.end method
