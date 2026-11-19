.class final Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;
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
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.canhub.cropper.BitmapLoadingWorkerJob$start$1"
    f = "BitmapLoadingWorkerJob.kt"
    l = {
        0x34,
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/canhub/cropper/BitmapLoadingWorkerJob;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->d:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;

    iget-object p0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->d:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-direct {v0, p0, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->d:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    iget-object v0, v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->c:Landroid/net/Uri;

    iget-object v3, v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->b:Landroid/content/Context;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v15, v0

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->c:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget v9, v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->d:I

    iget v10, v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->e:I

    invoke-static {v3, v0, v9, v10}, Lcom/canhub/cropper/BitmapUtils;->i(Landroid/content/Context;Landroid/net/Uri;II)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v9

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v9, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->a:Landroid/graphics/Bitmap;

    invoke-static {v5, v3, v0}, Lcom/canhub/cropper/BitmapUtils;->q(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v0

    new-instance v10, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    iget-object v11, v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->c:Landroid/net/Uri;

    iget-object v12, v0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->a:Landroid/graphics/Bitmap;

    iget v13, v9, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->b:I

    iget v14, v0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->b:I

    iget-boolean v15, v0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->c:Z

    iget-boolean v0, v0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->d:Z

    const/16 v17, 0x0

    move/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZLjava/lang/Exception;)V

    iput v8, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->b:I

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v3, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;

    invoke-direct {v3, v2, v10, v6}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-ne v0, v4, :cond_5

    goto :goto_3

    :goto_1
    new-instance v8, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    iget-object v9, v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->c:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZLjava/lang/Exception;)V

    iput v7, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;->b:I

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v3, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;

    invoke-direct {v3, v2, v8, v6}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    if-ne v0, v4, :cond_5

    :goto_3
    return-object v4

    :cond_5
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
