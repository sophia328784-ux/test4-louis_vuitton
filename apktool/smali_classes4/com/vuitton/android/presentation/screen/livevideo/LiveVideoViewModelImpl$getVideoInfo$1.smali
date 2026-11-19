.class final Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$getVideoInfo$1"
    f = "LiveVideoViewModelImpl.kt"
    l = {
        0x3f,
        0x48
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->e:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->e:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->e:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    sget-object v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->b:Ljava/lang/String;

    :goto_0
    iput v6, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->d:I

    invoke-virtual {p1, v7, p0}, Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    :goto_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_10

    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->g:Ljava/lang/String;

    invoke-interface {v7, v10, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v7, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_d

    if-eq v1, v5, :cond_b

    if-eq v1, v3, :cond_9

    const/4 p0, 0x4

    if-ne v1, p0, :cond_8

    :cond_6
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_7
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;->WAITING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    invoke-interface {v8, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto/16 :goto_4

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_9
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_a
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;->REPLAY_VIDEO_PLAYING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    invoke-interface {v8, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_b
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_c
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;->LIVE_SHOW_ENDED:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    invoke-interface {v8, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_d
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_e
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    sget-object v6, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;->LIVE_VIDEO_PLAYING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoState;

    invoke-interface {v8, v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->b:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;->d:I

    const-wide/16 v5, 0x7530

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_f

    :goto_2
    return-object v0

    :cond_f
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;

    invoke-direct {p1, v4, v2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl$getVideoInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v2, v2, p1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_10
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
