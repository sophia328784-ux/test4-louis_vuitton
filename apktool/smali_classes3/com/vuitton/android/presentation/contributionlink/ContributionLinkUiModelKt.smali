.class public abstract Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AICompanion;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AICompanion;

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Wishlist;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Wishlist;

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;->b:Ljava/util/List;

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

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;

    invoke-direct {p0, v0, v2}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WishlistShared;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$MyLv;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$MyLv;

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Category;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ExclusiveOffer;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_7
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Osa;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;

    return-object p0

    :cond_9
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic;

    if-eqz v0, :cond_a

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;

    return-object p0

    :cond_a
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Story;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_d
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Portal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_e
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Product;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_f
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;->a:Ljava/util/List;

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

    if-eqz v1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    new-instance p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ProductList;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_11
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    return-object p0

    :cond_12
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$SeoLandingPage;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_13
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ShadeFinder;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ShadeFinder;

    return-object p0

    :cond_14
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Spotlight;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_15
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    if-eqz v0, :cond_16

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Other;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_16
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;

    if-eqz v0, :cond_17

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_17
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_18
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;

    if-eqz v0, :cond_19

    new-instance v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$AudioGuide;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_19
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Unknown;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Unknown;

    return-object p0

    :cond_1a
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
