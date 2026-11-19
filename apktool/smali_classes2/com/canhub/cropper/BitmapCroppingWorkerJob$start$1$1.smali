.class final Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;
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
    c = "com.canhub.cropper.BitmapCroppingWorkerJob$start$1$1"
    f = "BitmapCroppingWorkerJob.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->c:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    iput-object p2, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->e:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    iget-object v0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->e:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    iget-object p0, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->c:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Landroid/graphics/Bitmap;Lcom/canhub/cropper/BitmapUtils$BitmapSampled;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->c:Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    iget-object v1, p1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->b:Landroid/content/Context;

    iget-object v4, p1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->r:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->s:I

    iget-object v6, p1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->t:Landroid/net/Uri;

    iget-object v7, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->d:Landroid/graphics/Bitmap;

    invoke-static {v1, v7, v4, v5, v6}, Lcom/canhub/cropper/BitmapUtils;->s(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->e:Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    iget v4, v4, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->b:I

    new-instance v5, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    invoke-direct {v5, v7, v1, v2, v4}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;I)V

    iput v3, p0, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1$1;->b:I

    invoke-static {p1, v5, p0}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->a(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
