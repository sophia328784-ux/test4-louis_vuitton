.class public final Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/core/file/FileStorageProvider;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;",
        "Lcom/vuitton/android/core/file/FileStorageProvider;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "dispatchers",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;

    iget v1, v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;-><init>(Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$2;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$2;-><init>(Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl;Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/presentation/di/file/FileStorageProviderImpl$saveToCache$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/core/type/FileLocation;

    iget-object p0, p3, Lcom/vuitton/android/core/type/FileLocation;->a:Ljava/lang/String;

    return-object p0
.end method
