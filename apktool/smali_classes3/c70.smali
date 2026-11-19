.class public final synthetic Lc70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lc70;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CompositionLocal LocalLifecycleOwner not present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object p0, Lcoil3/compose/AsyncImageModelEqualityDelegate;->a:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-object v0

    :pswitch_2
    invoke-static {}, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;->values()[Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.data.dto.config.cache.LiveVideoStatusCache"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_3
    invoke-static {}, Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;->values()[Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;

    move-result-object p0

    const-string v1, "searchRelatedResults"

    const-string v2, "suggestionResults"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.search.LiveSearchTypeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/dto/search/LiveSearchDto;->Companion:Lcom/vuitton/android/data/dto/search/LiveSearchDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/search/TrendingDto$$serializer;->a:Lcom/vuitton/android/data/dto/search/TrendingDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/search/LiveSearchDto;->Companion:Lcom/vuitton/android/data/dto/search/LiveSearchDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto;->Companion:Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/search/LiveSearchTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/search/LiveSearchDto;->Companion:Lcom/vuitton/android/data/dto/search/LiveSearchDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;->a:Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;->values()[Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;

    move-result-object p0

    const-string v1, "landscape"

    const-string v2, "portrait"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.common.editorial.LiveFormatDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/di/DataModule;->a:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "lightUpProductDao"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LegalConsentsTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/legal/LegalConsentDto;->Companion:Lcom/vuitton/android/data/dto/legal/LegalConsentDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto$$serializer;->a:Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    new-instance p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>(II)V

    return-object p0

    :pswitch_f
    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/repository/LastViewedProductListData;->Companion:Lcom/vuitton/android/data/repository/LastViewedProductListData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/repository/LastViewedProductData$$serializer;->a:Lcom/vuitton/android/data/repository/LastViewedProductData$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV textFields provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV tags provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVTagButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV tagButtons provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV switches provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV Snackbars provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV Skeleton provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV segmented controls provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV SearchBar provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV radio buttons provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

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
