.class public final synthetic Lm10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lm10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lm10;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;->values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;

    move-result-object p0

    const-string v1, "regular"

    const-string v2, "marie-louise"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductImageStyleDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;->values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;

    move-result-object p0

    const-string v1, "full-details"

    const-string v2, "image-only"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductDisplayStyleDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;

    move-result-object p0

    const-string v1, "anglaise-f"

    const-string v2, "cond"

    const-string v3, "default"

    const-string v4, "hanley-pro"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFontDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionPanelDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionPanelDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lcoil3/disk/UtilsKt;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/disk/DiskCache;

    return-object p0

    :pswitch_17
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->r()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/IconKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV icons provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1a
    invoke-static {}, Lcom/vuitton/android/data/dto/common/IconDto;->values()[Lcom/vuitton/android/data/dto/common/IconDto;

    move-result-object p0

    const-string v1, "aiCompanion"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.common.IconDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object p0, Landroidx/compose/runtime/HostDefaultProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CompositionLocal LocalHostDefaultProvider not present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/horizon/HorizonSpeakerSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto$$serializer;

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
