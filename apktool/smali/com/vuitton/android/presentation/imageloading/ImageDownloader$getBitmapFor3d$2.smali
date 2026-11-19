.class final Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
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
    c = "com.vuitton.android.presentation.imageloading.ImageDownloader$getBitmapFor3d$2"
    f = "ImageDownloader.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->b:I

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->d:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {p1, v6}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    iput-object v1, p1, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    invoke-static {p1, v6}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->a(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;)V

    sget-object v1, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    const/16 v1, 0xc8

    invoke-static {p1, v1}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/ImageRequest$Builder;I)V

    invoke-virtual {p1}, Lcoil3/request/ImageRequest$Builder;->b()Lcoil3/Extras$Builder;

    move-result-object v1

    sget-object v7, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    sget-object v1, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    iput-object v1, p1, Lcoil3/request/ImageRequest$Builder;->x:Lcoil3/size/Precision;

    invoke-virtual {p1}, Lcoil3/request/ImageRequest$Builder;->b()Lcoil3/Extras$Builder;

    move-result-object v1

    sget-object v7, Lcoil3/request/ImageRequests_androidKt;->f:Lcoil3/Extras$Key;

    invoke-virtual {v1, v7, v8}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object p1

    invoke-static {v6}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    move-result-object v1

    iput v5, p0, Lcom/vuitton/android/presentation/imageloading/ImageDownloader$getBitmapFor3d$2;->b:I

    invoke-interface {v1, p1, p0}, Lcoil3/ImageLoader;->b(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Lcoil3/request/ImageResult;

    instance-of p0, p1, Lcoil3/request/SuccessResult;

    if-eqz p0, :cond_6

    check-cast p1, Lcoil3/request/SuccessResult;

    iget-object p0, p1, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_5

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "Incompatible drawable type, use a Bitmap"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcoil3/request/ErrorResult;

    iget-object p0, p1, Lcoil3/request/ErrorResult;->c:Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v4

    :goto_4
    const-string p1, "Unable to download bitmap from url="

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v1, "ImageLoading"

    invoke-virtual {v0, v1, p1, p0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method
