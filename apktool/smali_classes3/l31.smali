.class public final synthetic Ll31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget p0, p0, Ll31;->b:I

    const/4 v0, 0x0

    const-string v1, "no local theme provided"

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductResponseDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TryOnProductResponseDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/LookDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/vto/LookDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/trunkspeaker/TrunkSpeakerSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Landroidx/room/TriggerBasedInvalidationTracker;->l:Landroidx/room/TriggerBasedInvalidationTracker$Companion;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/search/mocks/TrendingMockKt;->a:Lkotlin/Lazy;

    new-instance p0, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    const-string v0, "Sac FW 24"

    invoke-direct {p0, v0, v0}, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;->Companion:Lcom/vuitton/android/data/dto/travel/TrainTravelDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/travel/Traveler$$serializer;->a:Lcom/vuitton/android/data/dto/travel/Traveler$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget p0, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_10
    sget p0, LTombstone$Companion$ADAPTER$1;->w:I

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/ProtoAdapter$Companion;

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    sget-object v1, LThread;->n:LThread$Companion$ADAPTER$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/squareup/wire/MapProtoAdapter;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/MapProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V

    return-object p0

    :pswitch_11
    sget p0, LTombstone$Companion$ADAPTER$1;->w:I

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/ProtoAdapter$Companion;

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    sget-object v1, LThread;->n:LThread$Companion$ADAPTER$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/squareup/wire/MapProtoAdapter;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/MapProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/TimelineDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/TimelineDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ValidationDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ValidationDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/ValidationDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;->Companion:Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookList;->INSTANCE:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookList;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes.LookList"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookDetail;->INSTANCE:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookDetail;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleRoutes.LookDetail"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1a
    sget p0, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget p0, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

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
