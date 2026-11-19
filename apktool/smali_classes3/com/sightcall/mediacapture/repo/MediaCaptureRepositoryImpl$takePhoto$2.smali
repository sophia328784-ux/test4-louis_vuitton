.class final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->takePhoto(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2"
    f = "MediaCaptureRepositoryImpl.kt"
    l = {
        0x9d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $collimator:LSCCollimator;

.field final synthetic $collimatorViewHeight:I

.field final synthetic $collimatorViewWitdh:I

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;LSCCollimator;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
            "LSCCollimator;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimator:LSCCollimator;

    iput p3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimatorViewWitdh:I

    iput p4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimatorViewHeight:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimator:LSCCollimator;

    iget v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimatorViewWitdh:I

    iget v4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimatorViewHeight:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;LSCCollimator;IILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->L$1:Ljava/lang/Object;

    check-cast v0, LSCCollimator;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->L$0:Ljava/lang/Object;

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

    iget-object v5, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimator:LSCCollimator;

    iget v6, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimatorViewWitdh:I

    iget v7, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->$collimatorViewHeight:I

    iput-object v5, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->L$1:Ljava/lang/Object;

    iput v6, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->I$0:I

    iput v7, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->I$1:I

    iput v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2;->label:I

    new-instance v4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v4, p0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    const-string p0, "image/jpeg"

    invoke-static {p0}, Lcom/sightcall/mediacapture/repo/mappers/MediaCaptureMappersKt;->toExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "."

    invoke-static {p1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getCacheDir$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Ljava/io/File;

    move-result-object p1

    const-string v1, "sightcall"

    invoke-static {v1, p0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance p0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    invoke-direct {p0, v2}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    new-instance v8, Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iget-object v12, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->d:Landroid/content/ContentValues;

    iget-object v13, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->e:Ljava/io/OutputStream;

    iget-object v9, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->a:Ljava/io/File;

    iget-object v10, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->b:Landroid/content/ContentResolver;

    iget-object v11, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->c:Landroid/net/Uri;

    invoke-direct/range {v8 .. v13}, Landroidx/camera/core/ImageCapture$OutputFileOptions;-><init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->getImageCapture()Landroidx/camera/core/ImageCapture;

    move-result-object p0

    invoke-static {v5}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$getExecutor$p(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;-><init>(Ljava/io/File;LSCCollimator;Lkotlin/coroutines/Continuation;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;II)V

    invoke-virtual {p0, v8, p1, v1}, Landroidx/camera/core/ImageCapture;->J(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;)V

    invoke-virtual {v4}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
