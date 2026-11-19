.class public final Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/provider/auth/CookieCleaner;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;",
        "Lcom/vuitton/android/domain/provider/auth/CookieCleaner;",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "dispatchersProvider",
        "Landroid/webkit/CookieManager;",
        "cookieManager",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/webkit/CookieManager;)V",
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
.field public final a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final b:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/webkit/CookieManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;->b:Landroid/webkit/CookieManager;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;

    iget v1, v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;-><init>(Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->a()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$2;-><init>(Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl$clearAllCookies$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method
