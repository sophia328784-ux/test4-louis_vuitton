.class final Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;
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
    c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$onLanguageSelected$1"
    f = "AudioGuideViewModelImpl.kt"
    l = {
        0xaa,
        0xb3
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->B:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_3

    invoke-interface {v4, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v5, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->B:Lkotlinx/coroutines/Job;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;

    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v4}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->stop()V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->b:I

    invoke-virtual {v4, v0}, Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v9, v8

    goto :goto_1

    :cond_6
    move-object v9, v5

    :goto_1
    if-eqz v9, :cond_7

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->STOPPED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    const/16 v16, 0x0

    const/16 v17, 0x31

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v7

    :cond_7
    invoke-interface {v2, v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->b:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;->d:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    :goto_2
    return-object v3

    :cond_8
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "AudioGuideViewModelImpl"

    const-string v3, "Failed to load audio guide"

    invoke-interface {v1, v2, v3, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
