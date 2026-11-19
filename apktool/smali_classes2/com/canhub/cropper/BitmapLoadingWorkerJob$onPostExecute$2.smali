.class final Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;
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
    c = "com.canhub.cropper.BitmapLoadingWorkerJob$onPostExecute$2"
    f = "BitmapLoadingWorkerJob.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

.field public final synthetic d:Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->c:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    iput-object p2, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->d:Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;

    iget-object v1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->c:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    iget-object p0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->d:Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    invoke-direct {v0, v1, p0, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    iget-object v1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->d:Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;->c:Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    iget-object p0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/canhub/cropper/CropImageView;

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iget-object p0, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->g:Ljava/lang/Exception;

    const/4 p1, 0x0

    iput-object p1, v2, Lcom/canhub/cropper/CropImageView;->O:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropImageView;->j()V

    if-nez p0, :cond_0

    iget v7, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->d:I

    iput v7, v2, Lcom/canhub/cropper/CropImageView;->k:I

    iget-boolean p1, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->e:Z

    iput-boolean p1, v2, Lcom/canhub/cropper/CropImageView;->m:Z

    iget-boolean p1, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->f:Z

    iput-boolean p1, v2, Lcom/canhub/cropper/CropImageView;->n:Z

    iget-object v3, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->b:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->a:Landroid/net/Uri;

    iget v6, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->c:I

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/canhub/cropper/CropImageView;->h(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    iget-object p1, v2, Lcom/canhub/cropper/CropImageView;->E:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    if-eqz p1, :cond_1

    iget-object v3, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->a:Landroid/net/Uri;

    invoke-interface {p1, v2, v3, p0}, Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;->m(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_1
    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez p0, :cond_2

    iget-object p0, v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->b:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
