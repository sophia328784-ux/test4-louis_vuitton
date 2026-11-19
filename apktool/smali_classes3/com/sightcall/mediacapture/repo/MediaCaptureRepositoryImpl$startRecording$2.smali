.class final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->startRecording(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/sightcall/pratik/Result<",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
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
    c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$startRecording$2"
    f = "MediaCaptureRepositoryImpl.kt"
    l = {
        0xdf
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->L$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->$context:Landroid/content/Context;

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2;->label:I

    new-instance v3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v3, p0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    const-string p0, "video/mp4"

    invoke-static {p0}, Lcom/sightcall/mediacapture/repo/mappers/MediaCaptureMappersKt;->toExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "."

    invoke-static {v4, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getCacheDir$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Ljava/io/File;

    move-result-object v4

    const-string v5, "sightcall"

    invoke-static {v5, p0, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    new-instance v4, Landroidx/camera/video/FileOutputOptions$Builder;

    invoke-direct {v4, p0}, Landroidx/camera/video/FileOutputOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroidx/camera/video/FileOutputOptions$Builder;->a()Landroidx/camera/video/FileOutputOptions;

    move-result-object v4

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->getVideoCapture()Landroidx/camera/video/VideoCapture;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v5

    check-cast v5, Landroidx/camera/video/Recorder;

    new-instance v6, Landroidx/camera/video/PendingRecording;

    invoke-direct {v6, v1, v5, v4}, Landroidx/camera/video/PendingRecording;-><init>(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V

    iget-object v4, v6, Landroidx/camera/video/PendingRecording;->c:Landroid/content/Context;

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v5}, Landroidx/core/content/PermissionChecker;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget-object v4, v6, Landroidx/camera/video/PendingRecording;->a:Landroidx/camera/video/Recorder;

    invoke-virtual {v4}, Landroidx/camera/video/Recorder;->o()Z

    move-result v4

    const-string v5, "The Recorder this recording is associated to doesn\'t support audio."

    invoke-static {v5, v4}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-boolean v2, v6, Landroidx/camera/video/PendingRecording;->f:Z

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;

    invoke-direct {v2, v3, p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$startRecording$2$1$1;-><init>(Lkotlin/coroutines/Continuation;Landroid/net/Uri;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)V

    invoke-virtual {v6, v1, v2}, Landroidx/camera/video/PendingRecording;->a(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$setRecording$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Landroidx/camera/video/Recording;)V

    invoke-virtual {v3}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Attempted to enable audio for recording but application does not have RECORD_AUDIO permission granted."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
