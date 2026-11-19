.class public final Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;
.super Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0015Bv\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012U\u0010\u0012\u001aQ\u0012M\u0012K\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\n0\tj\u0002`\u00110\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;",
        "Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;",
        "tokenRefreshCoordinator",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "",
        "Lkotlin/Function3;",
        "Lokhttp3/Request;",
        "Lkotlin/ParameterName;",
        "name",
        "req",
        "",
        "slasAccessToken",
        "sfidAccessToken",
        "Lcom/vuitton/android/data/net/interceptor/RequestAuthUpdater;",
        "requestUpdaters",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Ljava/util/List;)V",
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
.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

.field public final d:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;",
            "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lokhttp3/Request;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->c:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    iput-object p3, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->d:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Response;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;

    iget v1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;-><init>(Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    const-string v3, "RefreshAuthenticator"

    iget-object v4, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->b:Lcom/vuitton/foundation/logger/Logger;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->c:Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

    iget-object p1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->b:Lokhttp3/Response;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->d:I

    iget-object v2, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->b:Lokhttp3/Response;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, p2

    move p2, p1

    move-object p1, v2

    move-object v2, v10

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget p2, p1, Lokhttp3/Response;->e:I

    move-object v2, p1

    move v8, v6

    :goto_1
    if-eqz v2, :cond_4

    iget-object v9, v2, Lokhttp3/Response;->l:Lokhttp3/Response;

    goto :goto_2

    :cond_4
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_5

    iget-object v2, v2, Lokhttp3/Response;->l:Lokhttp3/Response;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-le v8, v2, :cond_6

    return-object v7

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->b:Lokhttp3/Response;

    iput p2, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->d:I

    iput v6, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    iget-object v2, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->d:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {v2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    if-eqz v2, :cond_8

    const-string p0, "Not able to retrieve refresh token"

    invoke-interface {v4, v3, p0, v7}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7

    :cond_8
    iget-object v2, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    const-string v6, "slas_access_token"

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lokhttp3/Request;->c:Lokhttp3/Headers;

    const-string v8, "sfid_access_token"

    invoke-virtual {v6, v8}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object p1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->b:Lokhttp3/Response;

    iput-object p0, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->c:Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;

    iput p2, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->d:I

    iput v5, v0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$authenticateSuspendable$1;->g:I

    iget-object p2, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->c:Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;

    invoke-virtual {p2, v2, v6, v0}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    :goto_5
    iget-object p1, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_b

    :try_start_0
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    invoke-static {p2}, Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptorKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;)Lkotlin/Pair;

    move-result-object p2

    iget-object v0, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-interface {v1, p1, v0, p2}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_a
    :goto_7
    move-object p2, p1

    goto :goto_9

    :goto_8
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    :goto_9
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string p1, "Refresh token"

    invoke-interface {v4, v3, p1, p0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    instance-of p0, p2, Lkotlin/Result$Failure;

    if-eqz p0, :cond_d

    goto :goto_a

    :cond_d
    move-object v7, p2

    :goto_a
    return-object v7
.end method
