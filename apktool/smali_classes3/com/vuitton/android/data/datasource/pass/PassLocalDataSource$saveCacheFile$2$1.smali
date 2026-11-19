.class final Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;
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
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
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
    c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource$saveCacheFile$2$1"
    f = "PassLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

.field public final synthetic c:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

.field public final synthetic d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lcom/vuitton/android/data/dto/pass/ContentDispositionName;Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->b:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->c:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->d:Ljava/io/InputStream;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->c:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->d:Ljava/io/InputStream;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->b:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;-><init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lcom/vuitton/android/data/dto/pass/ContentDispositionName;Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->b:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->c:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$saveCacheFile$2$1;->d:Ljava/io/InputStream;

    :try_start_0
    invoke-static {p0, p1}, Lkotlin/io/ByteStreamsKt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
