.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/a;->b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v4, p2

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    move-object/from16 v0, p3

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;

    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/a;->b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const-wide/16 v16, 0x0

    if-eqz v5, :cond_4

    cmp-long v3, v12, v16

    if-gez v3, :cond_3

    move-object v3, v1

    move-object v1, v5

    move-wide/from16 v5, v16

    goto :goto_3

    :cond_3
    move-object v3, v1

    move-object v1, v5

    move-wide v5, v12

    :goto_3
    const/4 v8, 0x0

    const/16 v9, 0x33

    move-object v7, v2

    const/4 v2, 0x0

    move-object/from16 v18, v3

    const/4 v3, 0x0

    move-object/from16 v19, v7

    const/4 v7, 0x0

    move-object/from16 v20, v18

    move-object/from16 v15, v19

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object/from16 v20, v1

    move-object v15, v2

    :goto_4
    invoke-interface {v14, v15, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    cmp-long v3, v10, v16

    if-gez v3, :cond_6

    move-wide/from16 v5, v16

    goto :goto_5

    :cond_6
    move-wide v5, v10

    :goto_5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->B:Lkotlinx/coroutines/Job;

    const/4 v3, 0x3

    const/4 v5, 0x1

    if-ne v4, v1, :cond_8

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-ne v2, v5, :cond_7

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v6, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$startPositionTicker$1;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$startPositionTicker$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v7, v7, v6, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->B:Lkotlinx/coroutines/Job;

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    if-eqz v2, :cond_9

    invoke-interface {v2, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_9
    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->B:Lkotlinx/coroutines/Job;

    :goto_6
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->STOPPED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v4, v2, :cond_c

    move-object/from16 v15, v20

    if-ne v15, v1, :cond_c

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v2, :cond_a

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_b

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v1, v7}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v7, v7, v4, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_b
    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->Ac(I)V

    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_d
    move-object/from16 v1, v20

    goto/16 :goto_1
.end method
