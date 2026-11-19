.class public final synthetic Liq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Liq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget p0, p0, Liq;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto;->Companion:Lcom/vuitton/android/data/dto/dispatch/DispatchContinentDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$$serializer;->a:Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/DimensKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV dimens provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.DeviceType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/StateDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/StateDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget p0, Landroidx/compose/material3/DatePickerKt;->a:F

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Landroidx/compose/material3/DateInputKt;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;->values()[Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;

    move-result-object p0

    const-string v0, "threeKit"

    const-string v1, "base64"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.pdp.CustomizationTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId$Companion;

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->values()[Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.product.universal.CustomizationIdType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->Companion:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->Companion:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;->Companion:Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomVariation$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomChoice$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.ChoiceType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;->Companion:Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;->Companion:Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeEntryDto$$serializer;->a:Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeEntryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto$Data$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto$Data;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto$Data$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;->Companion:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Wishlist"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Unknown"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.ShadeFinder"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.PushNotification"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;->Companion:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.MyLv"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.CareServiceCreate"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.AICompanion"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local ContextualSizingTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
