.class public final synthetic Lk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 16
    iput p1, p0, Lk3;->b:I

    iput-object p2, p0, Lk3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lk3;->e:Ljava/lang/Object;

    iput-object p4, p0, Lk3;->c:Ljava/lang/Object;

    iput-object p5, p0, Lk3;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lk3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3;->d:Ljava/lang/Object;

    iput-object p2, p0, Lk3;->f:Ljava/lang/Object;

    iput-object p3, p0, Lk3;->c:Ljava/lang/Object;

    iput-object p4, p0, Lk3;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p5, p0, Lk3;->b:I

    iput-object p1, p0, Lk3;->d:Ljava/lang/Object;

    iput-object p2, p0, Lk3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lk3;->e:Ljava/lang/Object;

    iput-object p4, p0, Lk3;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 18
    iput p5, p0, Lk3;->b:I

    iput-object p1, p0, Lk3;->d:Ljava/lang/Object;

    iput-object p2, p0, Lk3;->e:Ljava/lang/Object;

    iput-object p3, p0, Lk3;->f:Ljava/lang/Object;

    iput-object p4, p0, Lk3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 19
    iput p5, p0, Lk3;->b:I

    iput-object p1, p0, Lk3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lk3;->e:Ljava/lang/Object;

    iput-object p3, p0, Lk3;->d:Ljava/lang/Object;

    iput-object p4, p0, Lk3;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 20
    const/16 v0, 0xe

    iput v0, p0, Lk3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lk3;->d:Ljava/lang/Object;

    iput-object p3, p0, Lk3;->e:Ljava/lang/Object;

    iput-object p4, p0, Lk3;->f:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    iget-object v1, v0, Lk3;->d:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    iget-object v2, v0, Lk3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;

    iget-object v3, v0, Lk3;->e:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;

    iget-object v4, v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->e:Ljava/nio/FloatBuffer;

    iget-object v5, v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->f:Ljava/nio/FloatBuffer;

    iget-object v6, v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->g:Ljava/nio/ShortBuffer;

    iget-object v7, v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->i:Lcom/google/android/filament/IndexBuffer;

    iget-object v8, v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->h:Lcom/google/android/filament/VertexBuffer;

    iget-object v0, v0, Lk3;->f:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    move-object/from16 v9, p1

    check-cast v9, Lcom/google/ar/core/Frame;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v10, Lcom/google/ar/core/Plane;

    invoke-virtual {v9, v10}, Lcom/google/ar/core/Frame;->getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Ljava/lang/Iterable;

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/ar/core/Plane;

    invoke-virtual {v12}, Lcom/google/ar/core/Plane;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v12

    sget-object v13, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-ne v12, v13, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->x:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v1, v11}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget v1, v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->d:I

    iget-object v11, v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    invoke-virtual {v9}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/ar/core/LightEstimate;->getState()Lcom/google/ar/core/LightEstimate$State;

    move-result-object v12

    sget-object v13, Lcom/google/ar/core/LightEstimate$State;->VALID:Lcom/google/ar/core/LightEstimate$State;

    const/4 v14, 0x0

    const/16 p0, 0x1

    const/16 p1, 0x2

    const/4 v15, 0x3

    if-eq v12, v13, :cond_3

    move-object/from16 v17, v0

    move-object/from16 v20, v7

    move/from16 v19, v14

    move/from16 v18, v15

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v9}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/ar/core/LightEstimate;->getEnvironmentalHdrAmbientSphericalHarmonics()[F

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    const/16 v13, 0x1b

    move-object/from16 v16, v12

    new-array v12, v13, [F

    move-object/from16 v17, v0

    invoke-static {v14, v13}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/ranges/RangesKt;->i(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    move/from16 v18, v15

    iget v15, v0, Lkotlin/ranges/IntProgression;->b:I

    move/from16 v19, v14

    iget v14, v0, Lkotlin/ranges/IntProgression;->c:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->d:I

    if-lez v0, :cond_4

    if-le v15, v14, :cond_5

    :cond_4
    if-gez v0, :cond_6

    if-gt v14, v15, :cond_6

    :cond_5
    :goto_1
    sget-object v20, Lcom/vuitton/android/presentation/ar/MatrixKt;->b:[F

    div-int/lit8 v21, v15, 0x3

    aget v20, v20, v21

    aget v21, v16, v15

    mul-float v21, v21, v20

    aput v21, v12, v15

    add-int/lit8 v21, v15, 0x1

    aget v22, v16, v21

    mul-float v22, v22, v20

    aput v22, v12, v21

    add-int/lit8 v21, v15, 0x2

    aget v22, v16, v21

    mul-float v22, v22, v20

    aput v22, v12, v21

    if-eq v15, v14, :cond_6

    add-int/2addr v15, v0

    goto :goto_1

    :cond_6
    iget-object v0, v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->c:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v14, v0

    if-nez v14, :cond_7

    invoke-static {}, Lkotlin/sequences/SequencesKt;->e()Lkotlin/sequences/Sequence;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v14, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$6;

    invoke-direct {v14, v0}, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$6;-><init>([F)V

    move-object v0, v14

    :goto_2
    new-instance v14, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$6;

    invoke-direct {v14, v12}, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$6;-><init>([F)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lkotlin/sequences/MergingSequence;

    new-instance v13, Lzt0;

    move-object/from16 v20, v7

    const/16 v7, 0xd

    invoke-direct {v13, v7}, Lzt0;-><init>(I)V

    invoke-direct {v15, v0, v14, v13}, Lkotlin/sequences/MergingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {v0, v15}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    :goto_3
    invoke-virtual {v0}, Lkotlin/sequences/MergingSequence$iterator$1;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Lkotlin/sequences/MergingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    iget-object v13, v7, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    iget-object v7, v7, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v7, v13, v7

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    iput-object v12, v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->c:[F

    iget-object v0, v11, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    new-instance v7, Lcom/google/android/filament/IndirectLight$Builder;

    invoke-direct {v7}, Lcom/google/android/filament/IndirectLight$Builder;-><init>()V

    iget-object v12, v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->b:Lcom/google/android/filament/Texture;

    invoke-virtual {v12}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v12

    iget-wide v14, v7, Lcom/google/android/filament/IndirectLight$Builder;->b:J

    invoke-static {v14, v15, v12, v13}, Lcom/google/android/filament/IndirectLight;->b(JJ)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->c:[F

    array-length v12, v2

    const/16 v13, 0x1b

    if-lt v12, v13, :cond_9

    invoke-static {v14, v15, v2}, Lcom/google/android/filament/IndirectLight;->f(J[F)V

    iget-object v2, v11, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v7, v2}, Lcom/google/android/filament/IndirectLight$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Scene;->f(Lcom/google/android/filament/IndirectLight;)V

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "3 bands SH, array must be at least 9 x float3"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    invoke-virtual {v9}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/LightEstimate;->getEnvironmentalHdrMainLightDirection()[F

    move-result-object v0

    iget-object v2, v11, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v2, v2, Lcom/google/android/filament/Engine;->c:Lcom/google/android/filament/LightManager;

    aget v7, v0, v19

    neg-float v7, v7

    aget v12, v0, p0

    neg-float v12, v12

    aget v0, v0, p1

    neg-float v0, v0

    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/filament/LightManager;->n(FFFI)V

    invoke-virtual {v9}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/LightEstimate;->getEnvironmentalHdrMainLightIntensity()[F

    move-result-object v0

    aget v2, v0, v19

    aget v7, v0, p0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v7, v0, p1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    new-instance v7, Lcom/vuitton/android/presentation/ar/V3;

    invoke-direct {v7, v0}, Lcom/vuitton/android/presentation/ar/V3;-><init>([F)V

    const v0, 0x3727c5ac    # 1.0E-5f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, v7, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aget v7, v2, v19

    div-float/2addr v7, v0

    aget v12, v2, p0

    div-float/2addr v12, v0

    aget v2, v2, p1

    div-float/2addr v2, v0

    invoke-static {v7, v12, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->k(FFF)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v0

    iget-object v2, v11, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v2, v2, Lcom/google/android/filament/Engine;->c:Lcom/google/android/filament/LightManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aget v7, v0, v19

    aget v11, v0, p0

    aget v0, v0, p1

    invoke-virtual {v2, v7, v11, v0, v1}, Lcom/google/android/filament/LightManager;->m(FFFI)V

    :goto_5
    iget-object v0, v3, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    invoke-virtual {v9, v10}, Lcom/google/ar/core/Frame;->getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ar/core/Plane;

    invoke-virtual {v7}, Lcom/google/ar/core/Plane;->getSubsumedBy()Lcom/google/ar/core/Plane;

    move-result-object v10

    if-nez v10, :cond_b

    goto :goto_7

    :cond_b
    move-object v7, v10

    :goto_7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/google/ar/core/Plane;

    invoke-virtual {v10}, Lcom/google/ar/core/Plane;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v10

    sget-object v11, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-ne v10, v11, :cond_d

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v33, v9

    :goto_9
    move-object/from16 v0, v17

    goto/16 :goto_13

    :cond_f
    new-instance v1, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer$doFrame$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer$doFrame$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v7, v19

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/ar/core/Plane;

    invoke-virtual {v10}, Lcom/google/ar/core/Plane;->getType()Lcom/google/ar/core/Plane$Type;

    move-result-object v10

    sget-object v12, Lcom/google/ar/core/Plane$Type;->HORIZONTAL_UPWARD_FACING:Lcom/google/ar/core/Plane$Type;

    if-eq v10, v12, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_11
    const/4 v7, -0x1

    :goto_b
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v13, 0x0

    move/from16 v23, v10

    move v14, v12

    move v15, v14

    move/from16 v16, v15

    move-object/from16 v21, v13

    move/from16 v11, v19

    move/from16 v32, v11

    const/16 v22, -0x1

    move/from16 v12, v23

    move v13, v12

    move/from16 v10, v32

    :goto_c
    if-ge v11, v2, :cond_1b

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/ar/core/Plane;

    if-ne v11, v7, :cond_12

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    :cond_12
    invoke-virtual/range {v24 .. v24}, Lcom/google/ar/core/Plane;->getPolygon()Ljava/nio/FloatBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v26, v1

    invoke-virtual/range {v24 .. v24}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v27, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    move/from16 v27, v2

    const/16 v2, 0x10

    new-array v2, v2, [F

    move/from16 v28, v7

    move/from16 v7, v19

    invoke-virtual {v1, v2, v7}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    new-instance v1, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    invoke-virtual/range {v25 .. v25}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v7, 0x4

    mul-int/2addr v2, v7

    move/from16 v29, v11

    new-array v11, v2, [F

    move/from16 v30, v2

    new-array v2, v7, [F

    const/16 v31, 0x0

    aput v31, v2, p0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v2, v18

    invoke-virtual/range {v25 .. v25}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v37, v2

    add-int/lit8 v2, v30, -0x1

    move-object/from16 v33, v11

    const/4 v11, 0x0

    invoke-static {v11, v2, v7}, Lkotlin/internal/ProgressionUtilKt;->a(III)I

    move-result v2

    if-ltz v2, :cond_13

    move/from16 v34, v11

    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/nio/FloatBuffer;->get()F

    move-result v19

    aput v19, v37, v11

    invoke-virtual/range {v25 .. v25}, Ljava/nio/FloatBuffer;->get()F

    move-result v11

    aput v11, v37, p1

    const/16 v36, 0x0

    const/16 v38, 0x0

    iget-object v11, v1, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    move-object/from16 v35, v11

    invoke-static/range {v33 .. v38}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    move/from16 v30, v7

    move-object/from16 v11, v33

    move/from16 v7, v34

    if-eq v7, v2, :cond_14

    add-int/lit8 v34, v7, 0x4

    move-object/from16 v33, v11

    move/from16 v7, v30

    const/4 v11, 0x0

    goto :goto_d

    :cond_13
    move/from16 v30, v7

    move-object/from16 v11, v33

    :cond_14
    new-instance v1, Lcom/vuitton/android/presentation/ar/V4A;

    invoke-direct {v1, v11}, Lcom/vuitton/android/presentation/ar/V4A;-><init>([F)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/ar/V4A;->a:[F

    array-length v2, v1

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x2

    mul-int/lit8 v7, v2, 0x3

    new-array v11, v7, [S

    move/from16 v25, v7

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v2, :cond_15

    mul-int/lit8 v31, v7, 0x3

    move/from16 v33, v2

    int-to-short v2, v10

    aput-short v2, v11, v31

    add-int/lit8 v2, v31, 0x1

    add-int v34, v10, v7

    move/from16 v35, v2

    add-int/lit8 v2, v34, 0x1

    int-to-short v2, v2

    aput-short v2, v11, v35

    add-int/lit8 v31, v31, 0x2

    add-int/lit8 v2, v34, 0x2

    int-to-short v2, v2

    aput-short v2, v11, v31

    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v33

    goto :goto_e

    :cond_15
    array-length v2, v1

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v10

    const/16 v7, 0x3e8

    if-gt v2, v7, :cond_1b

    add-int v2, v32, v25

    const/16 v7, 0xbb2

    if-le v2, v7, :cond_16

    goto/16 :goto_12

    :cond_16
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    move/from16 v25, v2

    move/from16 v31, v10

    move/from16 v10, v30

    const/4 v2, 0x0

    invoke-static {v2, v7, v10}, Lkotlin/internal/ProgressionUtilKt;->a(III)I

    move-result v7

    move-object/from16 v34, v3

    move-object/from16 v33, v9

    if-ltz v7, :cond_18

    move/from16 v2, v16

    move/from16 v10, v23

    const/4 v9, 0x0

    :goto_f
    aget v3, v1, v9

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    aget v3, v1, v9

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v3, v9, 0x1

    move/from16 v16, v3

    aget v3, v1, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    aget v3, v1, v16

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-int/lit8 v3, v9, 0x2

    move/from16 v16, v3

    aget v3, v1, v16

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aget v3, v1, v16

    invoke-static {v3, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    if-eq v9, v7, :cond_17

    add-int/lit8 v9, v9, 0x4

    goto :goto_f

    :cond_17
    move/from16 v16, v2

    move/from16 v23, v10

    :cond_18
    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual/range {v24 .. v24}, Lcom/google/ar/core/Plane;->getType()Lcom/google/ar/core/Plane$Type;

    move-result-object v2

    sget-object v3, Lcom/google/ar/core/Plane$Type;->VERTICAL:Lcom/google/ar/core/Plane$Type;

    if-ne v2, v3, :cond_19

    invoke-virtual/range {v24 .. v24}, Lcom/google/ar/core/Plane;->getPolygon()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/ar/V2A;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    new-array v10, v10, [F

    invoke-direct {v3, v10}, Lcom/vuitton/android/presentation/ar/V2A;-><init>([F)V

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v10, Lkotlin/ranges/IntRange;

    const/high16 v24, 0x40a00000    # 5.0f

    iget-object v7, v3, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    array-length v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    const/high16 v32, 0x41200000    # 10.0f

    invoke-direct {v10, v9, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v7, v10, Lkotlin/ranges/IntProgression;->b:I

    iget v9, v10, Lkotlin/ranges/IntProgression;->c:I

    if-gt v7, v9, :cond_1a

    :goto_10
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v10

    mul-float v10, v10, v32

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v35

    move-object/from16 v36, v2

    mul-float v2, v35, v24

    invoke-static {v3, v7, v10, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->g(Lcom/vuitton/android/presentation/ar/V2A;IFF)V

    if-eq v7, v9, :cond_1a

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v36

    goto :goto_10

    :cond_19
    const/high16 v24, 0x40a00000    # 5.0f

    const/high16 v32, 0x41200000    # 10.0f

    array-length v2, v1

    const/16 v30, 0x4

    div-int/lit8 v2, v2, 0x4

    new-instance v3, Lcom/vuitton/android/presentation/ar/V2A;

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/ar/V2A;-><init>([F)V

    new-instance v2, Lkotlin/ranges/IntRange;

    iget-object v7, v3, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    array-length v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    invoke-direct {v2, v9, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v7, v2, Lkotlin/ranges/IntProgression;->b:I

    iget v2, v2, Lkotlin/ranges/IntProgression;->c:I

    if-gt v7, v2, :cond_1a

    :goto_11
    mul-int/lit8 v9, v7, 0x4

    aget v10, v1, v9

    mul-float v10, v10, v32

    add-int/lit8 v9, v9, 0x2

    aget v9, v1, v9

    mul-float v9, v9, v24

    invoke-static {v3, v7, v10, v9}, Lcom/vuitton/android/presentation/ar/MatrixKt;->g(Lcom/vuitton/android/presentation/ar/V2A;IFF)V

    if-eq v7, v2, :cond_1a

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1a
    iget-object v2, v3, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v11}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    array-length v1, v1

    const/16 v30, 0x4

    div-int/lit8 v1, v1, 0x4

    add-int v10, v1, v31

    add-int/lit8 v11, v29, 0x1

    move/from16 v32, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move-object/from16 v9, v33

    move-object/from16 v3, v34

    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_1b
    :goto_12
    move-object/from16 v34, v3

    move-object/from16 v33, v9

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9, v4, v1}, Lcom/google/android/filament/VertexBuffer;->i(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;I)V

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move/from16 v2, p0

    invoke-virtual {v8, v0, v2, v5, v1}, Lcom/google/android/filament/VertexBuffer;->i(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;I)V

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v6}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v3, v20

    invoke-virtual {v3, v1, v0, v6}, Lcom/google/android/filament/IndexBuffer;->g(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    new-instance v1, Lcom/google/android/filament/RenderableManager$Builder;

    move/from16 v4, p1

    invoke-direct {v1, v4}, Lcom/google/android/filament/RenderableManager$Builder;-><init>(I)V

    iget-wide v4, v1, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static {v4, v5}, Lcom/google/android/filament/RenderableManager;->c(J)V

    invoke-static {v4, v5, v2}, Lcom/google/android/filament/RenderableManager;->h(JZ)V

    invoke-static {v4, v5, v2}, Lcom/google/android/filament/RenderableManager;->d(JZ)V

    new-instance v24, Lcom/google/android/filament/Box;

    add-float v2, v14, v23

    const/high16 v6, 0x40000000    # 2.0f

    div-float v25, v2, v6

    add-float v2, v15, v12

    div-float v26, v2, v6

    add-float v2, v16, v13

    div-float v27, v2, v6

    sub-float v23, v23, v14

    div-float v28, v23, v6

    sub-float/2addr v12, v15

    div-float v29, v12, v6

    sub-float v13, v13, v16

    div-float v30, v13, v6

    invoke-direct/range {v24 .. v30}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object/from16 v2, v24

    iget-object v6, v2, Lcom/google/android/filament/Box;->a:[F

    const/16 v19, 0x0

    aget v11, v6, v19

    const/4 v7, 0x1

    aget v12, v6, v7

    const/4 v9, 0x2

    aget v13, v6, v9

    iget-object v2, v2, Lcom/google/android/filament/Box;->b:[F

    aget v14, v2, v19

    aget v15, v2, v7

    aget v16, v2, v9

    iget-wide v9, v1, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static/range {v9 .. v16}, Lcom/google/android/filament/RenderableManager;->a(JFFFFFF)V

    sget-object v2, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    invoke-virtual {v2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->a()I

    move-result v27

    invoke-virtual {v8}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v28

    invoke-virtual {v3}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v30

    iget-wide v6, v1, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    const/16 v26, 0x0

    move-wide/from16 v24, v6

    invoke-static/range {v24 .. v32}, Lcom/google/android/filament/RenderableManager;->e(JIIJJI)V

    move-object/from16 v6, v34

    iget-object v7, v6, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->c:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v7}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v9

    const/4 v7, 0x0

    invoke-static {v7, v4, v5, v9, v10}, Lcom/google/android/filament/RenderableManager;->g(IJJ)V

    if-eqz v21, :cond_1c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v32

    :cond_1c
    move/from16 v26, v32

    invoke-virtual {v2}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->a()I

    move-result v21

    invoke-virtual {v8}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v22

    invoke-virtual {v3}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v24

    iget-wide v2, v1, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    const/16 v20, 0x1

    move-wide/from16 v18, v2

    invoke-static/range {v18 .. v26}, Lcom/google/android/filament/RenderableManager;->e(JIIJJI)V

    iget-object v2, v6, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->d:Lcom/google/android/filament/Material;

    iget-object v2, v2, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v2}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v2

    const/4 v7, 0x1

    invoke-static {v7, v4, v5, v2, v3}, Lcom/google/android/filament/RenderableManager;->g(IJJ)V

    iget v2, v6, Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;->j:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/filament/RenderableManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    goto/16 :goto_9

    :goto_13
    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lk3;->b:I

    const/4 v2, 0x6

    const/4 v3, 0x2

    const-string v4, ""

    const v5, 0x799532c4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, v0, Lk3;->f:Ljava/lang/Object;

    iget-object v11, v0, Lk3;->e:Ljava/lang/Object;

    iget-object v12, v0, Lk3;->c:Ljava/lang/Object;

    iget-object v13, v0, Lk3;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v13, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    check-cast v10, Landroidx/compose/foundation/pager/PagerState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v13, v7}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lk3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object v2, v13

    check-cast v2, Ljava/util/List;

    move-object v4, v12

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    move-object v6, v10

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyk0;

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lyk0;-><init>(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$2;

    invoke-direct {v8, v1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$3;

    invoke-direct {v10, v3, v2}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;

    move-object v3, v2

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;-><init>(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x2fd4df92

    invoke-direct {v2, v3, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v0, v7, v8, v10, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v13, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v11, Landroidx/compose/runtime/MutableState;

    check-cast v10, Landroidx/compose/runtime/State;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;->PRODUCT_SELECTED:Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v8

    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->c:Ljava/lang/String;

    if-nez v3, :cond_7

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState;

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Success;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Success;

    goto :goto_0

    :cond_1
    move-object v3, v8

    :goto_0
    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorLookViewState$Success;->b:Ljava/util/List;

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->b:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v8

    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->b:Ljava/lang/String;

    if-nez v6, :cond_4

    move-object v6, v8

    :cond_4
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_5
    move-object v4, v8

    :goto_1
    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    if-eqz v4, :cond_6

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->c:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v3, v8

    :cond_7
    :goto_2
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;

    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    if-eqz v5, :cond_8

    check-cast v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    goto :goto_3

    :cond_8
    move-object v4, v8

    :goto_3
    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    if-eqz v4, :cond_9

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;->a:Ljava/lang/String;

    :cond_9
    invoke-virtual {v13, v1, v2, v3, v8}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->e(Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v13, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-object v3, v12

    check-cast v3, Ljava/lang/String;

    move-object v4, v11

    check-cast v4, Ljava/lang/String;

    check-cast v10, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v10, v1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->d(Ljava/lang/String;)V

    :cond_a
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModelKt;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v6, v7, 0x1

    if-ltz v7, :cond_b

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    invoke-virtual {v1, v7, v3, v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c(ILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_4

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v8

    :cond_c
    new-instance v0, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    const-string v1, "product_list"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v13, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lni0;

    invoke-direct {v1, v13, v10, v6}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x70bb9e59

    invoke-direct {v2, v3, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v8, v2, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v1, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->e:Ljava/util/List;

    new-instance v2, Laj0;

    invoke-direct {v2, v7}, Laj0;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$1;

    invoke-direct {v4, v2, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v7, v1, v13, v12, v11}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$lambda$6$0$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v1, v5, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v0, v3, v4, v2, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object v1, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->o:Ljava/lang/String;

    if-nez v1, :cond_d

    new-instance v1, La3;

    const/16 v2, 0x15

    invoke-direct {v1, v10, v2}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x3e67eb02

    invoke-direct {v2, v3, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v8, v2, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    move-object v3, v11

    check-cast v3, Lkotlin/jvm/functions/Function3;

    move-object v4, v12

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderExchangeVariantSelectionScreenKt;->a:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderExchangeVariantSelectionScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderExchangeVariantSelectionScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v11, v8, v0, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v0, Lki0;

    invoke-direct {v0, v13, v7}, Lki0;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x697f5d99

    invoke-direct {v1, v2, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v11, v8, v1, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;

    goto :goto_5

    :cond_e
    move-object v0, v8

    :goto_5
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;->a:Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    if-eqz v1, :cond_f

    iget-object v2, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->k:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr;

    const/16 v5, 0x15

    invoke-direct/range {v0 .. v5}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x50b4788

    invoke-direct {v1, v5, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v11, v8, v1, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v0, Lg1;

    const/16 v1, 0x1b

    invoke-direct {v0, v2, v3, v4, v1}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x67e37591

    invoke-direct {v1, v2, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v11, v8, v1, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_f
    new-instance v0, La3;

    const/16 v1, 0x14

    invoke-direct {v0, v10, v1}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x467b671a

    invoke-direct {v1, v2, v9, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v11, v8, v1, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderExchangeVariantSelectionScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v11, v8, v0, v6}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v13, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-boolean v1, v13, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->c:Z

    if-eqz v1, :cond_10

    invoke-interface {v12, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_10
    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v12, Landroidx/navigation/internal/NavControllerImpl;

    check-cast v11, Landroidx/navigation/NavDestination;

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    sget v1, Landroidx/navigation/internal/NavControllerImpl;->B:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v9, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-virtual {v12, v11, v10, v0, v1}, Landroidx/navigation/internal/NavControllerImpl;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v13, Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast v12, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    check-cast v11, Landroidx/compose/foundation/gestures/NestedScrollScope;

    check-cast v10, Landroidx/compose/foundation/gestures/c;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, v0, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, v13, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v12, v11, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->e(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationScope;->a()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :cond_11
    iget v2, v13, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    add-float/2addr v2, v1

    iput v2, v13, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    :cond_12
    iget v1, v13, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/compose/foundation/gestures/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationScope;->a()V

    :cond_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_7
    return-object v0

    :pswitch_9
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    check-cast v11, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    check-cast v10, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    invoke-direct {v0, v12, v11, v10}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    iput-object v0, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->d:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;

    invoke-direct {v0, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    return-object v0

    :pswitch_a
    check-cast v13, Ljava/util/List;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    check-cast v11, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$lambda$5$0$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v2, v13}, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$lambda$5$0$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$lambda$5$0$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v3, v13, v12, v11, v10}, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$lambda$5$0$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Landroidx/compose/runtime/MutableState;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v4, v5, v9, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v0, v1, v8, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v13, Ljava/time/LocalDate;

    check-cast v11, Ljava/util/List;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Lcom/kizitonwose/calendar/core/CalendarDay;

    sget v1, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/kizitonwose/calendar/core/CalendarDay;->b:Ljava/time/LocalDate;

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, v13}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    if-eqz v11, :cond_15

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v9, :cond_15

    invoke-interface {v10, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v13, Landroidx/compose/runtime/MutableState;

    check-cast v12, Landroidx/compose/animation/core/InfiniteTransition;

    check-cast v11, Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/State;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_8

    :cond_16
    move-wide v2, v0

    :goto_8
    iget-wide v4, v12, Landroidx/compose/animation/core/InfiniteTransition;->c:J

    iget-object v6, v12, Landroidx/compose/animation/core/InfiniteTransition;->a:Landroidx/compose/runtime/collection/MutableVector;

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v4, v4, v13

    if-eqz v4, :cond_17

    iget v4, v11, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-interface {v10}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Lkotlin/coroutines/CoroutineContext;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    iput-wide v0, v12, Landroidx/compose/animation/core/InfiniteTransition;->c:J

    iget-object v0, v6, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v1, v6, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move v4, v7

    :goto_9
    if-ge v4, v1, :cond_18

    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iput-boolean v9, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->i:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_18
    invoke-interface {v10}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Lkotlin/coroutines/CoroutineContext;)F

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    :goto_a
    iget v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_19

    iget-object v0, v6, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v1, v6, Landroidx/compose/runtime/collection/MutableVector;->d:I

    :goto_b
    if-ge v7, v1, :cond_1e

    aget-object v2, v0, v7

    check-cast v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v3, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->g:Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v3, v3, Landroidx/compose/animation/core/TargetBasedAnimation;->c:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->e:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iput-boolean v9, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->i:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_19
    iget-wide v4, v12, Landroidx/compose/animation/core/InfiniteTransition;->c:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v0, v1

    iget-object v2, v6, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget v3, v6, Landroidx/compose/runtime/collection/MutableVector;->d:I

    move v4, v7

    move v5, v9

    :goto_c
    if-ge v4, v3, :cond_1d

    aget-object v6, v2, v4

    check-cast v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-boolean v8, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->h:Z

    if-nez v8, :cond_1b

    iget-object v8, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->k:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object v8, v8, Landroidx/compose/animation/core/InfiniteTransition;->b:Landroidx/compose/runtime/MutableState;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-boolean v8, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->i:Z

    if-eqz v8, :cond_1a

    iput-boolean v7, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->i:Z

    iput-wide v0, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->j:J

    :cond_1a
    iget-wide v10, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->j:J

    sub-long v10, v0, v10

    iget-object v8, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->g:Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-virtual {v8, v10, v11}, Landroidx/compose/animation/core/TargetBasedAnimation;->f(J)Ljava/lang/Object;

    move-result-object v8

    iget-object v13, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->e:Landroidx/compose/runtime/MutableState;

    check-cast v13, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v8, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->g:Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-interface {v8, v10, v11}, Landroidx/compose/animation/core/Animation;->c(J)Z

    move-result v8

    iput-boolean v8, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->h:Z

    :cond_1b
    iget-boolean v6, v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->h:Z

    if-nez v6, :cond_1c

    move v5, v7

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1d
    xor-int/lit8 v0, v5, 0x1

    iget-object v1, v12, Landroidx/compose/animation/core/InfiniteTransition;->d:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_1e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v13, Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    filled-new-array {v13, v12, v1, v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    check-cast v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;->e:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    instance-of v3, v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    if-eqz v3, :cond_20

    check-cast v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    iget-object v2, v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;->c:Ljava/lang/String;

    if-nez v2, :cond_1f

    goto :goto_d

    :cond_1f
    move-object v4, v2

    :cond_20
    :goto_d
    invoke-direct {v1, v13, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    check-cast v12, Ljava/lang/String;

    check-cast v11, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    check-cast v10, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;

    invoke-direct {v1, v12, v11, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    invoke-static {v10, v6}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->V6(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->a:Ljava/lang/String;

    invoke-direct {v1, v11, v2, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-interface {v13, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->h:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;)V

    invoke-interface {v12, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v13, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v12, Landroidx/compose/runtime/MutableState;

    check-cast v11, Landroidx/compose/runtime/MutableState;

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-eqz v1, :cond_21

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    invoke-interface {v10, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->a6(Ljava/lang/String;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V

    :cond_21
    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v12, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    check-cast v11, Ljava/lang/String;

    check-cast v13, Landroid/content/Context;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v2, v13}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11, v2, v0, v8}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v12, v1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->s6(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v13, Lkotlin/jvm/functions/Function3;

    check-cast v12, Landroidx/compose/runtime/MutableState;

    check-cast v11, Landroidx/compose/runtime/MutableState;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;->c:Ljava/lang/String;

    goto :goto_e

    :cond_22
    move-object v0, v8

    :goto_e
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;

    if-eqz v1, :cond_23

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;->b:Ljava/lang/String;

    :cond_23
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v0, v8, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v13, Ljava/util/Set;

    check-cast v12, Ljava/util/Set;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$decorateEntry$lambda$1$0$0$$inlined$onDispose$1;

    invoke-direct {v0, v13, v11, v12, v10}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$decorateEntry$lambda$1$0$0$$inlined$onDispose$1;-><init>(Ljava/util/Set;Ljava/lang/Object;Ljava/util/Set;Landroidx/compose/runtime/State;)V

    return-object v0

    :pswitch_15
    check-cast v13, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast v12, Landroidx/compose/ui/text/input/TextInputService;

    check-cast v11, Landroidx/compose/ui/text/input/TextFieldValue;

    check-cast v10, Landroidx/compose/ui/text/input/ImeOptions;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v13}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    iget-object v1, v13, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    iget-object v2, v13, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Llq;

    iget-object v3, v13, Landroidx/compose/foundation/text/LegacyTextFieldState;->w:Llq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Lcl0;

    const/16 v5, 0x11

    invoke-direct {v4, v1, v2, v0, v5}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, v12, Landroidx/compose/ui/text/input/TextInputService;->a:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v1, v11, v10, v4, v3}, Landroidx/compose/ui/text/input/PlatformTextInputService;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lcl0;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Landroidx/compose/ui/text/input/TextInputSession;

    invoke-direct {v2, v12, v1}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    iget-object v1, v12, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iput-object v2, v13, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    :cond_24
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1;-><init>()V

    return-object v0

    :pswitch_16
    check-cast v12, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    check-cast v11, Ljava/lang/String;

    check-cast v13, Landroid/content/Context;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/ContactabilityActionUIModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/ContactabilitySectionKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "extra_display_bottom_sheet"

    const-class v2, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    sget-object v4, Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$PreferencesClick;->a:Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$PreferencesClick;

    if-eq v0, v9, :cond_29

    if-eq v0, v3, :cond_28

    if-eq v0, v6, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    goto :goto_f

    :cond_25
    invoke-static {}, Lv40;->g()V

    goto :goto_11

    :cond_26
    :goto_f
    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnablePersonalizationClick;->a:Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnablePersonalizationClick;

    invoke-interface {v12, v0, v11}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Ka(Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-static {v12, v6}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->V6(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;I)V

    goto :goto_10

    :cond_27
    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnableNotificationsClick;->a:Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel$EnableNotificationsClick;

    invoke-interface {v12, v0, v11}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Ka(Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->u8()V

    goto :goto_10

    :cond_28
    invoke-interface {v12, v4, v11}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Ka(Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    :cond_29
    invoke-interface {v12, v4, v11}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Ka(Lcom/vuitton/android/presentation/screen/feed/models/ContactabilityTrackingUiModel;Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v13, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_10
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_11
    return-object v8

    :pswitch_17
    check-cast v13, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    check-cast v12, Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    check-cast v11, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;

    check-cast v10, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-object/from16 v0, p1

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->e:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConnectivityPageConnectToAPairedObjectEvent;

    check-cast v12, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConnectivityPageConnectToAPairedObjectEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v11, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    iget-object v2, v11, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "LIGHT_UP_DEVICE_TYPE"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LIGHT_UP_PRODUCT"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v13, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    check-cast v11, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    check-cast v10, Landroidx/navigation/NavHostController;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v13, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v7, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;

    invoke-direct {v7, v1, v3, v5}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz v1, :cond_2a

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->a:Ljava/util/List;

    goto :goto_12

    :cond_2a
    move-object v6, v8

    :goto_12
    if-eqz v6, :cond_2d

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    goto :goto_13

    :cond_2b
    move-object v1, v8

    :goto_13
    if-nez v1, :cond_2c

    goto :goto_14

    :cond_2c
    move-object v4, v1

    :goto_14
    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    invoke-direct {v1, v0, v5, v4, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v1, v8, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_16

    :cond_2d
    if-eqz v1, :cond_2e

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->b:Ljava/util/List;

    goto :goto_15

    :cond_2e
    move-object v3, v8

    :goto_15
    if-eqz v3, :cond_2f

    new-instance v13, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->b:Ljava/lang/String;

    const/16 v19, 0x18

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v20}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v10, v13, v8, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_16

    :cond_2f
    if-eqz v1, :cond_30

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    :cond_30
    if-eqz v8, :cond_31

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    :goto_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v13, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    check-cast v10, Landroidx/navigation/NavHostController;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;

    if-eqz v5, :cond_32

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;->a:Ljava/lang/String;

    goto :goto_17

    :cond_32
    move-object v5, v8

    :goto_17
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v13, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v7, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;

    invoke-direct {v7, v1, v5}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v11, v1, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->f:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->a:Ljava/util/List;

    if-eqz v6, :cond_35

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    if-eqz v0, :cond_33

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    goto :goto_18

    :cond_33
    move-object v0, v8

    :goto_18
    if-nez v0, :cond_34

    goto :goto_19

    :cond_34
    move-object v4, v0

    :goto_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    invoke-direct {v0, v3, v8, v4, v1}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v0, v8, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_1a

    :cond_35
    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->b:Ljava/util/List;

    if-eqz v1, :cond_36

    new-instance v13, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->b:Ljava/lang/String;

    const/16 v19, 0x18

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v20}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v10, v13, v8, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_1a

    :cond_36
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->c:Ljava/util/List;

    if-eqz v0, :cond_37

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v0, v8, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_1a

    :cond_37
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz v0, :cond_38

    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v13, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Ljava/lang/String;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;->b:Ljava/util/List;

    new-instance v2, Lt;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lt;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$1;

    invoke-direct {v4, v2, v1}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v6, v1, v11, v10, v12}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v1, v5, v9, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v0, v3, v4, v2, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v13, Landroidx/compose/animation/core/Animatable;

    check-cast v11, Landroidx/compose/animation/core/AnimationState;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, v13, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    invoke-static {v0, v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->j(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V

    iget-object v1, v0, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/compose/animation/core/Animatable;->a(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, v13, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v1, v11, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    if-eqz v12, :cond_39

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationScope;->a()V

    iput-boolean v9, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    goto :goto_1b

    :cond_3a
    if-eqz v12, :cond_3b

    invoke-interface {v12, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v13, Landroid/content/Context;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f14035e

    invoke-virtual {v13, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    new-instance v1, Lh1;

    invoke-direct {v1, v10, v3}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v0, v8, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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
