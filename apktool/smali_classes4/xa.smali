.class public final synthetic Lxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:J

.field public final synthetic h:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Landroidx/compose/runtime/State;

.field public final synthetic n:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lkotlin/jvm/functions/Function1;JLandroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa;->b:Ljava/util/List;

    iput-object p2, p0, Lxa;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iput-object p3, p0, Lxa;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-object p4, p0, Lxa;->e:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    iput-object p5, p0, Lxa;->f:Lkotlin/jvm/functions/Function1;

    iput-wide p6, p0, Lxa;->g:J

    iput-object p8, p0, Lxa;->h:Landroidx/compose/foundation/pager/PagerState;

    iput-object p9, p0, Lxa;->i:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lxa;->j:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iput-object p11, p0, Lxa;->k:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lxa;->l:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lxa;->m:Landroidx/compose/runtime/State;

    iput-object p14, p0, Lxa;->n:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    and-int/lit8 v3, v2, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v3, v5, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    and-int/2addr v2, v8

    invoke-interface {v7, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lxa;->b:Ljava/util/List;

    iget-object v5, v0, Lxa;->e:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    if-eqz v1, :cond_7

    const v1, 0x1372e699

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v0, Lxa;->i:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    iget-object v3, v0, Lxa;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    if-eq v1, v8, :cond_5

    if-eq v1, v4, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    const v0, 0x1382cc70

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_3
    const v0, -0x18259577

    invoke-static {v7, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_4
    const v1, 0x137bec38

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->e:Ljava/util/List;

    iget-wide v3, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    move-object/from16 v16, v7

    iget-wide v7, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const/4 v10, 0x0

    move-wide v5, v3

    iget-wide v3, v0, Lxa;->g:J

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt;->a(Ljava/util/List;JJJLandroidx/compose/runtime/Composer;I)V

    move-object v7, v9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_5
    const v1, 0x1373ed5f

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    iget-object v1, v0, Lxa;->d:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v1, v4, :cond_6

    move v4, v8

    goto :goto_2

    :cond_6
    move v4, v6

    :goto_2
    const/4 v8, 0x0

    iget-object v6, v0, Lxa;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailListeningQueueKt;->a(Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_7
    const-string v1, "AudioGuideTrackDetailBottomSheet$lambda$0$27$10$0"

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x1384943c

    invoke-static {v3, v4, v7, v1}, Lpq0;->h(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v9, Lza;

    const/16 v17, 0x0

    iget-object v12, v0, Lxa;->j:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    iget-object v13, v0, Lxa;->k:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lxa;->l:Lkotlin/jvm/functions/Function0;

    iget-object v15, v0, Lxa;->m:Landroidx/compose/runtime/State;

    iget-object v1, v0, Lxa;->n:Landroidx/compose/runtime/State;

    move-object/from16 v16, v1

    move-object v10, v2

    move-object v11, v5

    invoke-direct/range {v9 .. v17}, Lza;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Landroidx/compose/runtime/State;I)V

    const v1, -0x17bf9095

    invoke-static {v1, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const/16 v18, 0x6000

    const/16 v19, 0x3ffc

    iget-object v2, v0, Lxa;->h:Landroidx/compose/foundation/pager/PagerState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v16, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x30

    invoke-static/range {v2 .. v19}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_8
    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
