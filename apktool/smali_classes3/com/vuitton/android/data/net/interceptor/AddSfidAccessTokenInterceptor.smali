.class public final Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor$intercept$accessTokenSFID$authToken$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor$intercept$accessTokenSFID$authToken$1;-><init>(Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;Lkotlin/coroutines/Continuation;)V

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p0, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p0, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->b:Ljava/lang/String;

    :goto_0
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, v0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "sfid_access_token"

    invoke-virtual {v1, v0, p0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-nez v2, :cond_4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_4
    :goto_1
    const-string v0, "TwistOrSalesforceTokenInterceptor"

    const-string v2, "Service available only for authenticated users"

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, v0, v2, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
