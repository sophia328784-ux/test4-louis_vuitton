.class public final synthetic Lw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget p0, p0, Lw9;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingActionDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingActionDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.Vto"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderScan"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResultEmpty;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResultEmpty;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderResultEmpty"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResult;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResult;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderResult"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.ShadeFinderIntro"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$PicturePreview;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$PicturePreview;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes.PicturePreview"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;->values()[Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    move-result-object p0

    const-string v1, "eyeShadow"

    const-string v2, "lipLiner"

    const-string v3, "lipstick"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.product.vto.BeautyProductTypeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    sget-object p0, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-object v0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;->Companion:Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/avatar/AvatarItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/avatar/AvatarItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;->Companion:Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;->values()[Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    move-result-object p0

    const-string v1, "week"

    const-string v2, "month"

    const-string v3, "day"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.product.stock.shared.AvailabilityTimeFormatDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Landroidx/compose/foundation/text/AutofillHighlightKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance p0, Landroidx/compose/ui/graphics/SolidColor;

    const v1, 0x4dffeb3b    # 5.36700768E8f

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;->values()[Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    move-result-object p0

    const-string v1, "travel"

    const-string v2, "findInStore"

    const-string v3, "register"

    const-string v4, "addressBook"

    const-string v5, "onlineStoreAppointment"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local AudioGuideTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;

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

    :pswitch_19
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->Companion:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;->values()[Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.common.FeatureTheme"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_1a
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice$Companion;

    invoke-virtual {v0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantChoice$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/assistant/response/Widget$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/assistant/response/Widget$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

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
