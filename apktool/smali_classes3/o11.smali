.class public final synthetic Lo11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lo11;->b:I

    const-string v0, "com.dynamicyield.sdk.wrapper.core.enums.CurrencyType"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object p0, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->a:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokensKt;->a:Landroidx/compose/ui/text/TextStyle;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-object v1

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v1, v0, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_7
    sget-object p0, Landroidx/compose/material3/SurfaceKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance p0, Landroidx/compose/ui/unit/Dp;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/search/mocks/SuggestionListMockKt;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const v5, 0x7f080088

    const/4 v6, 0x0

    const-string v1, "skuId"

    const-string v2, "Lorem Ipsum"

    const-string v3, "image url"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/search/mocks/SuggestionListMockKt;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const v5, 0x7f080088

    const/4 v6, 0x0

    const-string v1, "M40995"

    const-string v2, "Lorem Ipsum"

    const-string v3, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    const v6, 0x7f080088

    const/4 v7, 0x0

    const-string v2, "skuId"

    const-string v3, "Lorem Ipsum with a very long name "

    const-string v4, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/search/mocks/SuggestionListMockKt;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    filled-new-array {v0, v1, v2, p0}, [Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v1, v0, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;->Companion:Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto;->Companion:Lcom/vuitton/android/data/dto/catalog/SubcategoryRedirectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto;->Companion:Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/SubcategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/SubcategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/StringWarnings;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/StringWarnings$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/story/StoryDto;->Companion:Lcom/vuitton/android/data/dto/story/StoryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/story/StoryDto$StorySlideDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto$$serializer;->a:Lcom/vuitton/android/data/dto/distantrepairs/SlotDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto$$serializer;->a:Lcom/vuitton/android/data/dto/distantrepairs/SlotDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;->values()[Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;

    move-result-object p0

    const-string v0, "simple"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.storemode.StoreModeTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;->Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;->Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Welcome;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Welcome;

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Welcome"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_16
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.storemode.StoreModeRoute.StoreModeHome"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Psp;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Psp;

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Psp"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Level1"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Home;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Home;

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Home"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

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
