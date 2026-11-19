.class public abstract Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v1

    :pswitch_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    invoke-direct {p0, p1, v1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;

    return-object p0

    :pswitch_e
    const-string p0, ","

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p1, p0, v0, p2}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;-><init>(Ljava/util/List;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {p0, p1, v0, v1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
