.class final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->initCameraProvider(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
    c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$initCameraProvider$2"
    f = "MediaCaptureRepositoryImpl.kt"
    l = {
        0x76
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2;->label:I

    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getListenableFutureProcessCameraProvider$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v2, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2$1$1$1;

    invoke-direct {v2, v1, p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$initCameraProvider$2$1$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getExecutor$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, p0

    :goto_0
    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-static {v0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$set_cameraProvider$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
