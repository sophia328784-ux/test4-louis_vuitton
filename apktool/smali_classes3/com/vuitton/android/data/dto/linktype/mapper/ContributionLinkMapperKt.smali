.class public abstract Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAICompanionDto;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto$Data;

    if-eqz p0, :cond_1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto$Data;

    if-eqz p0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto$Data;

    if-eqz p0, :cond_5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistDto;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;

    const/16 v1, 0xa

    if-eqz v0, :cond_9

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v3, v1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;

    invoke-direct {p0, v0, v2}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_9
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMyLvDto;

    if-eqz v0, :cond_a

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;

    return-object p0

    :cond_a
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;

    if-eqz p0, :cond_b

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_c
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCareServiceCreateDto;

    if-eqz v0, :cond_d

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;

    return-object p0

    :cond_d
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto$Data;

    if-eqz p0, :cond_e

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto$Data;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto$Data;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_f
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto$Data;

    if-eqz p0, :cond_10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_10
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_11
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    if-eqz p0, :cond_12

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_12
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_13
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto;

    if-eqz v0, :cond_15

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto$Data;

    if-eqz p0, :cond_14

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_14
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_15
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto;

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto$Data;

    if-eqz p0, :cond_16

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto$Data;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto$Data;->b:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_16
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_17
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto;

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto$Data;

    if-eqz p0, :cond_19

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto$Data;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_18
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_19
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_1a
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPushNotificationDto;

    if-eqz v0, :cond_1b

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;

    return-object p0

    :cond_1b
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto;

    if-eqz v0, :cond_1d

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto$Data;

    if-eqz p0, :cond_1c

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_1d
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkShadeFinderDto;

    if-eqz v0, :cond_1e

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;

    return-object p0

    :cond_1e
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto;

    if-eqz v0, :cond_20

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto$Data;

    if-eqz p0, :cond_1f

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1f
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_20
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto;

    if-eqz v0, :cond_22

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto$Data;

    if-eqz p0, :cond_21

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_21
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_22
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto;

    if-eqz v0, :cond_24

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto$Data;

    if-eqz p0, :cond_23

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto$Data;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_23
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_24
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkUnknownDto;

    if-eqz v0, :cond_25

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_25
    instance-of v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto;

    if-eqz v0, :cond_27

    check-cast p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto$Data;

    if-eqz p0, :cond_26

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto$Data;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_26
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :cond_27
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
