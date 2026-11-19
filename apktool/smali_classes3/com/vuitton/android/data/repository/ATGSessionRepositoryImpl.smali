.class public final Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/ATGSessionRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/ATGSessionRepository;",
        "Lcom/vuitton/android/data/api/bff/user/AuthApi;",
        "authApi",
        "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;",
        "webkitCookieManagerProxy",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
        "data"
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/AuthApi;

.field public final b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

.field public final c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iget-object v0, p0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->b:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    new-instance v1, Lqw0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lqw0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;-><init>(Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    iput v4, v0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl$loginOnActivation$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->createATGCookies(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    iget-object p0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p0, p0, Lokhttp3/Response;->r:Z

    if-eqz p0, :cond_4

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p0

    :cond_4
    sget-object p0, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string p1, "RefreshSessionError"

    const-string p2, "Error during login on activation"

    invoke-virtual {p0, p1, p2, v3}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$LoginOnActivationException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$LoginOnActivationException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final c()Lkotlin/Unit;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->m()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->b:Landroid/webkit/CookieManager;

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://pass-api"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".louisvuitton.com/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SGID=; path=/;expires=Mon, 17 Oct 1900 10:47:11 UTC;"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".louisvuitton.cn/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
