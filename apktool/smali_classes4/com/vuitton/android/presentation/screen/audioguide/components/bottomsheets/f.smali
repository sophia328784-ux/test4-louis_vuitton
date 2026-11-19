.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->d:Lkotlin/jvm/functions/Function0;

    iput-wide p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->e:J

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->g:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->h:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->i:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->j:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->k:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->l:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->m:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v9, 0x0

    if-nez v2, :cond_1

    if-ne v7, v8, :cond_2

    :cond_1
    new-instance v7, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$1$1;

    invoke-direct {v7, v15, v9}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v1, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iget-object v7, v14, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    if-nez v7, :cond_3

    return-object v1

    :cond_3
    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object v13, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_2
    if-gez v2, :cond_6

    move v12, v5

    goto :goto_3

    :cond_6
    move v12, v2

    :goto_3
    invoke-static {v12, v11}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v24

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    if-ne v2, v8, :cond_8

    :cond_7
    new-instance v2, Ldb;

    invoke-direct {v2, v11, v5}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v12, v2, v4, v5, v6}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v13

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_9

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, v4}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v16, v1

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_a

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v2, Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_b

    new-instance v6, Ll0;

    const/16 v3, 0xf

    invoke-direct {v6, v1, v2, v3}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v33, v6

    check-cast v33, Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_c

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->None:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    sget-object v9, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;->None:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    if-eq v6, v9, :cond_d

    const/4 v9, 0x1

    goto :goto_4

    :cond_d
    move v9, v5

    :goto_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_e

    new-instance v6, Ld0;

    const/16 v5, 0x9

    invoke-direct {v6, v5, v3}, Ld0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x30

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v9, v6, v4, v5, v1}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0x1f4

    move-object/from16 v17, v1

    const/4 v1, 0x6

    move-object/from16 v30, v2

    move-object/from16 v19, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v3, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    move-object v2, v1

    move v1, v5

    const/16 v5, 0xc30

    const/16 v6, 0x14

    const-string v3, "arrowsAlpha"

    move-object/from16 v25, v7

    move-object/from16 v26, v10

    move-object/from16 p1, v15

    move-object/from16 v7, v16

    move-object/from16 v15, v17

    move-object/from16 v10, v18

    move-object/from16 v27, v19

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v29

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_11

    if-ne v3, v8, :cond_12

    :cond_11
    new-instance v3, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1;

    const/4 v2, 0x0

    invoke-direct {v3, v14, v15, v2}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_13

    if-ne v2, v8, :cond_14

    :cond_13
    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/c;

    invoke-direct {v2, v7, v13, v11}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/c;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_15

    if-ne v3, v8, :cond_16

    :cond_15
    new-instance v3, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/d;

    invoke-direct {v3, v7, v13}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v28, v3

    check-cast v28, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_17

    invoke-static {v12}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v20, v5

    check-cast v20, Landroidx/compose/runtime/MutableIntState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v6

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v6, v15

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v6, v15

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v15

    or-int/2addr v6, v15

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_19

    if-ne v15, v8, :cond_18

    goto :goto_6

    :cond_18
    move/from16 v31, v9

    move-object/from16 v22, v10

    move v6, v12

    move-object v9, v13

    goto :goto_7

    :cond_19
    :goto_6
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1;

    const/16 v22, 0x0

    move/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v13

    move-object/from16 v21, v20

    move/from16 v20, v12

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1;-><init>(ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v15, v16

    move/from16 v31, v17

    move-object/from16 v22, v18

    move-object/from16 v9, v19

    move/from16 v6, v20

    move-object/from16 v20, v21

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v5, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_1b

    if-ne v12, v8, :cond_1a

    goto :goto_8

    :cond_1a
    move/from16 v18, v6

    move-object/from16 v19, v27

    goto :goto_9

    :cond_1b
    :goto_8
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1;

    const/16 v21, 0x0

    move/from16 v18, v6

    move-object/from16 v17, v9

    move-object/from16 v19, v27

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v12, v16

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v5, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v15, p1

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_1c

    if-ne v6, v8, :cond_1d

    :cond_1c
    move-object/from16 v16, v7

    goto :goto_a

    :cond_1d
    move-object/from16 v16, v7

    move-object/from16 v3, v22

    move-object/from16 v1, v26

    move-object/from16 v22, v11

    goto :goto_b

    :goto_a
    new-instance v7, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1;

    const/4 v13, 0x0

    move-object v12, v3

    move-object v8, v9

    move-object v9, v15

    move-object/from16 v10, v20

    move-object/from16 v3, v22

    move-object/from16 v22, v11

    move-object v11, v1

    move-object/from16 v1, v26

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v9, v8

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v7

    :goto_b
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v9, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "AudioGuideTrackDetailBottomSheet$lambda$0"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-wide v6, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v6, v7, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v7, Lwa;

    iget-wide v12, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->e:J

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->f:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->g:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->h:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->i:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->j:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->k:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->l:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/f;->m:Lkotlin/jvm/functions/Function0;

    move-object/from16 v34, v0

    move-object/from16 v32, v1

    move-object/from16 v27, v2

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object v10, v14

    move-object/from16 v26, v19

    move-object/from16 v14, v25

    move-object v11, v3

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v24

    move/from16 v8, v31

    move-object/from16 v24, v17

    move/from16 v31, v18

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v34}, Lwa;-><init>(ZLcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Landroidx/compose/foundation/ScrollState;JLcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x7e91a145

    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0xc00

    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_c

    :cond_1e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
