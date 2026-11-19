.class final Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;
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
    c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1"
    f = "BitmapCroppingWorkerJob.kt"
    l = {
        0x4c,
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/canhub/cropper/BitmapCroppingWorkerJob;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->d:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->d:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-direct {v0, p0, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->b:I

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->d:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_0

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

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v9, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->d:Landroid/net/Uri;

    if-eqz v9, :cond_3

    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object v8, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->b:Landroid/content/Context;

    iget-object v10, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->f:[F

    iget v11, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->g:I

    iget v12, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->h:I

    iget v13, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->i:I

    iget-boolean v14, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->j:Z

    iget v15, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->k:I

    iget v7, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->l:I

    iget v5, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->m:I

    iget v3, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->n:I

    iget-boolean v6, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->o:Z

    move/from16 v18, v3

    iget-boolean v3, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->p:Z

    move/from16 v20, v3

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v16, v7

    invoke-static/range {v8 .. v20}, Lcom/canhub/cropper/BitmapUtils;->c(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v5, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->e:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->f:[F

    iget v7, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->g:I

    iget-boolean v8, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->j:Z

    iget v9, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->k:I

    iget v10, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->l:I

    iget-boolean v11, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->o:Z

    iget-boolean v12, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->p:Z

    invoke-static/range {v5 .. v12}, Lcom/canhub/cropper/BitmapUtils;->e(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v3

    :goto_0
    iget-object v5, v3, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->a:Landroid/graphics/Bitmap;

    iget v6, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->m:I

    iget v7, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->n:I

    iget-object v8, v4, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->q:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v5, v6, v7, v8}, Lcom/canhub/cropper/BitmapUtils;->r(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v6, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v7, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v5, v3, v8}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {v0, v6, v8, v7, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v8, v3}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V

    iput v3, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->b:I

    invoke-static {v4, v0, v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->a(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_2
    new-instance v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v0, v5}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V

    const/4 v5, 0x2

    iput v5, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;->b:I

    invoke-static {v4, v3, v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->a(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    :goto_3
    return-object v2

    :cond_6
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
