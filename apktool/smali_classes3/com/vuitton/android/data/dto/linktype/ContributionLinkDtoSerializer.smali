.class public final Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;
.super Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer<",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;",
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;

    const-class v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "exclusive-offer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_1
    const-string p0, "wishlist-shared"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_2
    const-string p0, "booking-form"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_3
    const-string p0, "immersive-article"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_4
    const-string p0, "shade-finder"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkShadeFinderDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkShadeFinderDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkShadeFinderDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_5
    const-string p0, "native-story"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_1

    :cond_7
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_6
    const-string p0, "webview"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_1

    :cond_8
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_7
    const-string p0, "product-list"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_1

    :cond_9
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_8
    const-string p0, "seo-landing-page"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :cond_a
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_9
    const-string p0, "my-care-service/create"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_1

    :cond_b
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCareServiceCreateDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkCareServiceCreateDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCareServiceCreateDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_a
    const-string p0, "other"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_1

    :cond_c
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_b
    const-string p0, "category"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_1

    :cond_d
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_c
    const-string p0, "my-appointment/create"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_1

    :cond_e
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_d
    const-string p0, "profile"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_1

    :cond_f
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMyLvDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkMyLvDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMyLvDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_e
    const-string p0, "product"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_1

    :cond_10
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_f
    const-string p0, "my-monogram"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_1

    :cond_11
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_10
    const-string p0, "audio-guide"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_1

    :cond_12
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_11
    const-string p0, "spotlight"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_1

    :cond_13
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_12
    const-string p0, "wishlist"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_1

    :cond_14
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_13
    const-string p0, "portal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1

    :cond_15
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_14
    const-string p0, "ai-companion"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_1

    :cond_16
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAICompanionDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkAICompanionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkAICompanionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_15
    const-string p0, "push-notification"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_1

    :cond_17
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPushNotificationDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkPushNotificationDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkPushNotificationDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_18
    :goto_1
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkUnknownDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkUnknownDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkUnknownDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd72742 -> :sswitch_15
        -0x67304059 -> :sswitch_14
        -0x3a8f7794 -> :sswitch_13
        -0x39bc4a3b -> :sswitch_12
        -0x36d572ac -> :sswitch_11
        -0x2730cdbb -> :sswitch_10
        -0x272c4d45 -> :sswitch_f
        -0x12723311 -> :sswitch_e
        -0x12717657 -> :sswitch_d
        -0x4aa50d3 -> :sswitch_c
        0x302bcfe -> :sswitch_b
        0x6527f10 -> :sswitch_a
        0x358d7231 -> :sswitch_9
        0x38e827f5 -> :sswitch_8
        0x39b4c2bc -> :sswitch_7
        0x48fb3bf9 -> :sswitch_6
        0x4e4aafbf -> :sswitch_5
        0x689db7c6 -> :sswitch_4
        0x6c6f6fe4 -> :sswitch_3
        0x6e5375b8 -> :sswitch_2
        0x73fb496d -> :sswitch_1
        0x7c6ffe6d -> :sswitch_0
    .end sparse-switch
.end method
