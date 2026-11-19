.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshLiveSection$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x39e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    sget-object v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->b:Ljava/lang/String;

    :goto_0
    iput v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_a

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {p0}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_6

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    invoke-static {v3, v4, p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;)Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    move-object v4, v5

    :cond_6
    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_3

    :cond_8
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_9

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    invoke-static {v3, v4, p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;)Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    move-object v4, v5

    :cond_9
    invoke-interface {v1, v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
