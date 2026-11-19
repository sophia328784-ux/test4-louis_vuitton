.class public final synthetic Lv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lv;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/address/AddressesResponseDto;->Companion:Lcom/vuitton/android/data/dto/address/AddressesResponseDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;->a:Lcom/vuitton/android/data/dto/address/AddressDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorForm;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute.AddressEditorForm"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorAutocomplete;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorRoute$AddressEditorAutocomplete;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorRoute.AddressEditorAutocomplete"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/address/AddressDto;->Companion:Lcom/vuitton/android/data/dto/address/AddressDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;->a:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/address/AddressCreationDto;->Companion:Lcom/vuitton/android/data/dto/address/AddressCreationDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;->a:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemsDto;->Companion:Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.CurrencyType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/AddToCartItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/AddToCartItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget p0, Landroidx/activity/result/ActivityResultRegistry;->h:I

    sget-object p0, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/random/Random;->c:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {p0}, Lkotlin/random/AbstractPlatformRandom;->f()Ljava/util/Random;

    move-result-object p0

    const/high16 v0, 0x7fff0000

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto;->values()[Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto;

    move-result-object p0

    const-string v1, "2"

    const-string v2, "3"

    const-string v3, "1"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.profile.twist.AccountStatusValueDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/profile/twist/AccountStatusValueDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->values()[Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/config/AbTestDto;->Companion:Lcom/vuitton/android/data/dto/config/AbTestDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AbTestCache$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local AICompanionTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_14
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes.Onboarding"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes.History"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes.Chat"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->Companion:Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto$Companion;

    invoke-static {}, Lcom/vuitton/android/data/dto/common/FeatureThemeDto;->values()[Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    move-result-object p0

    const-string v1, "light"

    const-string v2, "dark"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.common.FeatureThemeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

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
