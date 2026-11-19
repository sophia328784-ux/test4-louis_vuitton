.class public final synthetic Lg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lg5;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;->values()[Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;

    move-result-object p0

    const-string v0, "marieLouiseCentered"

    const-string v2, "marieLouiseLeft"

    const-string v3, "fullWidth"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.common.editorial.AssetLayoutDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/common/AssetImageDto;->Companion:Lcom/vuitton/android/data/dto/common/AssetImageDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/common/ScaleDto;->Companion:Lcom/vuitton/android/data/dto/common/ScaleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/ScaleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentRoutes$Form;->INSTANCE:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentRoutes$Form;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes.Form"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentRoutes$Confirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentRoutes$Confirmation;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentRoutes.Confirmation"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local AppsFlyerUiTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;->Companion:Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto;->Companion:Lcom/vuitton/android/data/dto/osa/twist/AppointmentsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->values()[Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    move-result-object p0

    const-string v0, "inStore"

    const-string v2, "distant"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->Companion:Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/ApplicationEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.CurrencyType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto$$serializer;->a:Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/config/AbTestDto$$serializer;->a:Lcom/vuitton/android/data/dto/config/AbTestDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/config/cache/AbTestCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/AbTestCache$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_16
    sget-object p0, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object p0, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->a:Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;

    return-object p0

    :pswitch_17
    sget-object p0, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object p0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->a:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    return-object p0

    :pswitch_18
    sget-object p0, Landroidx/compose/material3/AppBarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance p0, Landroidx/compose/material3/TopAppBarState;

    const v0, -0x800001

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/compose/material3/TopAppBarState;-><init>(FFF)V

    return-object p0

    :pswitch_19
    invoke-static {}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->a()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/AnimationKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV animations provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1b
    invoke-static {}, Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;->values()[Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    move-result-object p0

    const-string v0, "lastViewedProducts"

    const-string v2, "skus"

    const-string v3, "dynamicYield"

    const-string v4, "mostPurchasedWith"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.common.editorial.AlgorithmTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    sget p0, Landroidx/compose/material3/AlertDialogKt;->a:F

    sget-object p0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->a:Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

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
