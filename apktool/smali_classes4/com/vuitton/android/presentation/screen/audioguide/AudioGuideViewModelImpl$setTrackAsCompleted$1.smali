.class final Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;
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
    c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$setTrackAsCompleted$1"
    f = "AudioGuideViewModelImpl.kt"
    l = {
        0x107
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v9, v8

    goto :goto_0

    :cond_3
    move-object v9, v3

    :goto_0
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->d:Ljava/lang/String;

    if-eqz v9, :cond_6

    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;->DONE:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    invoke-static {v12, v13}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    move-result-object v12

    :cond_4
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v7, v11}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Ljava/util/ArrayList;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    move-result-object v10

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v7

    :cond_6
    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$setTrackAsCompleted$1;->b:I

    invoke-virtual {v2, v8, v0}, Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
