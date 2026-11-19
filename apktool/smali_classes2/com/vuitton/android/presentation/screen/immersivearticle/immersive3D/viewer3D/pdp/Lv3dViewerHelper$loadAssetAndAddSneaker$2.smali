.class final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$loadAssetAndAddSneaker$2"
    f = "Lv3dViewerHelper.kt"
    l = {
        0x2ed
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, v4}, Lkotlin/io/ByteStreamsKt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    invoke-direct {v1, v5, v4, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2$1;-><init>(Ljava/nio/ByteBuffer;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$loadAssetAndAddSneaker$2;->b:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
