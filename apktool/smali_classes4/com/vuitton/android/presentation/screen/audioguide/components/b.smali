.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->c:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->g:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->h:Landroid/content/Context;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->i:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    and-int/2addr v2, v4

    invoke-interface {v15, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$BeforeStart;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->b:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->c:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v3, :cond_3

    const v0, 0x49e809c0    # 1900856.0f

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    if-ne v1, v12, :cond_2

    :cond_1
    new-instance v1, Lq;

    invoke-direct {v1, v7, v9, v10}, Lq;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;)V

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v15, v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideBeforeStartBottomSheetKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_3
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;

    if-eqz v3, :cond_4

    const v0, 0x49f2cd3d

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;->a:Ljava/lang/String;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;->b:Ljava/lang/String;

    invoke-static {v0, v1, v15, v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTextBottomSheetKt;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_4
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;

    if-eqz v3, :cond_5

    const v0, 0x49f8618a    # 2034737.2f

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;->a:Ljava/lang/String;

    invoke-static {v5, v15, v0}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideCreditsBottomSheetKt;->a(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_5
    instance-of v1, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;

    if-eqz v1, :cond_1d

    const v1, 0x49fd1c1d

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v2, v1

    goto :goto_1

    :cond_6
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_7

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    :cond_7
    if-nez v3, :cond_8

    const v0, 0x49ff233d

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_2

    :cond_8
    const v1, 0x49ff233e

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->i:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_9

    if-ne v6, v12, :cond_a

    :cond_9
    new-instance v6, Lia;

    invoke-direct {v6, v7, v5}, Lia;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_b

    if-ne v6, v12, :cond_c

    :cond_b
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$2$1;

    const-string v21, "onPlayPause()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "onPlayPause"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v6, v16

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lkotlin/reflect/KFunction;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_d

    if-ne v8, v12, :cond_e

    :cond_d
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$3$1;

    const-string v21, "onSeekTo(J)V"

    const/16 v22, 0x0

    const/16 v17, 0x1

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "onSeekTo"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v8, v16

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_f

    if-ne v9, v12, :cond_10

    :cond_f
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$4$1;

    const-string v21, "onGoBack15()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "onGoBack15"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v9, v16

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v9, Lkotlin/reflect/KFunction;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_11

    if-ne v10, v12, :cond_12

    :cond_11
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$5$1;

    const-string v21, "onGoForward15()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "onGoForward15"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v10, v16

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v1, :cond_13

    if-ne v11, v12, :cond_14

    :cond_13
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$6$1;

    const-string v21, "onSpeedToggle()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "onSpeedToggle"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v16

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v11, Lkotlin/reflect/KFunction;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v1, :cond_15

    if-ne v13, v12, :cond_16

    :cond_15
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$7$1;

    const-string v21, "selectNextTrack()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "selectNextTrack"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v13, v16

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v13, Lkotlin/reflect/KFunction;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_17

    if-ne v14, v12, :cond_18

    :cond_17
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$8$1;

    const-string v21, "selectPreviousTrack()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "selectPreviousTrack"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v14, v16

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v14, Lkotlin/reflect/KFunction;

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move/from16 p1, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_19

    if-ne v1, v12, :cond_1a

    :cond_19
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$12$2$9$1;

    const-string v21, "onTrackClicked(Ljava/lang/String;ZZ)V"

    const/16 v22, 0x0

    const/16 v17, 0x1

    const-class v19, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v20, "onTrackClicked"

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v16

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->g:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->h:Landroid/content/Context;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    move-object/from16 p2, v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v16, :cond_1b

    if-ne v2, v12, :cond_1c

    :cond_1b
    new-instance v2, Ln0;

    const/4 v12, 0x5

    invoke-direct {v2, v7, v1, v0, v12}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, p1

    move-object v14, v2

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v16}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_1d
    instance-of v1, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Leaving;

    if-eqz v1, :cond_22

    const v1, 0x4a16b5f3    # 2469244.8f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/b;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1e

    if-ne v1, v12, :cond_1f

    :cond_1e
    new-instance v6, Lr0;

    const/4 v11, 0x2

    invoke-direct/range {v6 .. v11}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Ljava/lang/Object;I)V

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v6

    :cond_1f
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_20

    if-ne v2, v12, :cond_21

    :cond_20
    new-instance v2, Lia;

    invoke-direct {v2, v7, v4}, Lia;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2, v15, v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideLeavingBottomSheetKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_22
    const v0, 0x4a23ecb4    # 2685741.0f

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_23
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
