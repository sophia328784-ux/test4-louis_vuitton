.class final Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$onTrackClicked$1"
    f = "AudioGuideViewModelImpl.kt"
    l = {
        0x131,
        0x135
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->e:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->f:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->g:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->h:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->e:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->f:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->e:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->g:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->c:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v10, v4

    move-object v4, v6

    move-object/from16 v6, p1

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v9, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v9, :cond_16

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->f:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;

    invoke-virtual {v1, v9}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    :cond_3
    check-cast v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v4, v8

    :goto_0
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v10, v4, 0x1

    if-nez v4, :cond_16

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v12, Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTrackDetail;->a:Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Action$OpenTrackDetail;

    invoke-interface {v4, v11, v12}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    const-string v11, "id"

    invoke-virtual {v4, v7, v11}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v11, v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_6
    move-object v12, v8

    :goto_1
    check-cast v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    if-eqz v12, :cond_a

    :goto_2
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v14, v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v14, :cond_7

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v15, v14

    goto :goto_3

    :cond_7
    move-object v15, v8

    :goto_3
    if-eqz v15, :cond_8

    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    iget-object v8, v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    sget-object v20, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v21, v20

    move-object/from16 v19, v8

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    sget-object v18, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->STOPPED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    const/16 v22, 0x0

    const/16 v23, 0x39

    move-object/from16 v17, v16

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v23}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v13

    :cond_8
    invoke-interface {v2, v11, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->h:Z

    invoke-virtual {v1, v12, v8}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Z)V

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    :goto_4
    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->t:Ljava/lang/String;

    if-nez v11, :cond_b

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_b
    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->c:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->d:I

    iget-object v6, v8, Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;->a:Lcom/vuitton/android/domain/repository/AudioGuideRepository;

    invoke-interface {v6, v11, v7, v9}, Lcom/vuitton/android/domain/repository/AudioGuideRepository;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v6

    if-ne v6, v3, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->c:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;->d:I

    invoke-interface {v6, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    :goto_6
    return-object v3

    :cond_d
    move-object v3, v0

    move-object v0, v4

    :goto_7
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-nez v4, :cond_14

    move-object v4, v3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;

    :goto_8
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v8, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v8, :cond_e

    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v9, v8

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v4, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;->a:Ljava/lang/String;

    iget-object v12, v4, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;->b:Ljava/lang/String;

    iget-object v13, v4, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;->d:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    invoke-static {v10}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;->e:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;

    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;

    move-object/from16 v22, v3

    move-object/from16 p0, v4

    iget-wide v3, v8, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;->a:J

    move-wide/from16 v17, v3

    iget-wide v3, v8, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;->b:J

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;->c:Ljava/lang/String;

    move-wide/from16 v19, v3

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel$CueUiModel;-><init>(JJLjava/lang/String;)V

    move-object/from16 v3, v16

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    move-object/from16 v3, v22

    goto :goto_b

    :cond_10
    move-object/from16 v22, v3

    move-object/from16 p0, v4

    new-instance v10, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const/16 v16, 0x0

    const/16 v17, 0x3d

    move-object v11, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v6

    goto :goto_c

    :cond_11
    move-object/from16 v22, v3

    move-object/from16 p0, v4

    :goto_c
    invoke-interface {v2, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_12
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_d

    :cond_13
    move-object/from16 v4, p0

    move-object/from16 v3, v22

    goto/16 :goto_8

    :cond_14
    move-object/from16 v22, v3

    :goto_d
    invoke-static/range {v22 .. v22}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load track detail for trackId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioGuideViewModelImpl"

    invoke-interface {v1, v4, v3, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTrackDetailError;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/monitoring/audioguide/AudioGuideMonitoring$Error$OpenTrackDetailError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_15
    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
