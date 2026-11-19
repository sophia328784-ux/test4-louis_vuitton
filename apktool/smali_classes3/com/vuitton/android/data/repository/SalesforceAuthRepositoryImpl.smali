.class public final Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0014BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/api/bff/user/AuthApi;",
        "authApi",
        "Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;",
        "salesforceTokenDataSource",
        "Lcom/vuitton/android/domain/repository/LoginStateRepository;",
        "loginStateRepository",
        "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;",
        "cookieManagerProxy",
        "Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;",
        "analyticLocalDataSource",
        "Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;",
        "analyticRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
        "profileLocalDataSource",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V",
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


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

.field public final c:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

.field public final d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

.field public final f:Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

.field public final g:Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

.field public final h:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->h:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$logout$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    new-instance p2, Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;

    invoke-direct {p2, p1}, Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;-><init>(Ljava/lang/String;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$exchangeAtgCode$1;->d:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->atgCodeExchange(Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_c

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p2, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->e:Ljava/lang/String;

    invoke-static {p2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->g:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v3

    :cond_5
    invoke-direct {p1, p2, v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance p0, Lcom/vuitton/android/data/exception/MappingException;

    const-string p1, "refreshToken is required for ATG code-exchange flow"

    invoke-direct {p0, p1}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/vuitton/android/data/exception/MappingException;

    const-string p1, "accessToken is required for ATG code-exchange flow"

    invoke-direct {p0, p1}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/vuitton/android/data/exception/MappingException;

    const-string p1, "userId is required for ATG code-exchange flow"

    invoke-direct {p0, p1}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_a

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_6
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_7

    :cond_a
    throw p1

    :cond_b
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object p0

    :cond_c
    throw p1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    const-string v0, "Requesting new Token with refreshToken : "

    instance-of v1, p2, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->g:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->i:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p1, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->f:I

    iget v0, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->d:I

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget p1, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->f:I

    iget v0, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->d:I

    iget-object v6, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v3

    move v3, p1

    move-object p1, v6

    move v6, v9

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    const/4 v3, 0x0

    iput v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->d:I

    iput v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->e:I

    iput v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->f:I

    iput v6, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-interface {p2, v0, v1}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->refreshToken(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    move v6, v0

    :goto_1
    check-cast p2, Lretrofit2/Response;

    new-instance v8, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$1;

    invoke-direct {v8, p1, v7}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$1;-><init>(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$2;

    invoke-direct {p1, p0, v7}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$2;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput v6, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->d:I

    iput v0, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->e:I

    iput v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->f:I

    iput v5, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-static {p2, v8, p1, v1}, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt;->a(Lretrofit2/Response;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_6

    goto :goto_3

    :cond_6
    move p1, v3

    move v3, v6

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object v7, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object p2, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput v3, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->d:I

    iput v0, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->e:I

    iput p1, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->f:I

    iput v4, v1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-virtual {p0, p2, v1}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->d(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    :goto_3
    return-object v2

    :cond_7
    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :goto_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {p0}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_6
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p1
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->e(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_6

    :try_start_1
    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iput v3, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogin$1;->d:I

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->b(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_6
    return-object p1
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;->d:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;->c(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_6

    :try_start_1
    check-cast p1, Lkotlin/Unit;

    iput v3, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$internalSaveTokens$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_6
    return-object p1
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    :try_start_2
    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iput v4, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->d:I

    invoke-interface {p1, v2}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->b(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_5

    :cond_6
    :goto_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_7
    :goto_4
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_9

    :try_start_3
    check-cast p1, Lkotlin/Unit;

    iput v3, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$onLogout$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p1, p0

    goto :goto_7

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    return-object p1
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;-><init>(Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_3
    iget-object v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->a:Ljava/lang/String;

    move-object v2, p1

    goto :goto_2

    :cond_7
    move-object v2, v7

    :goto_2
    iput-object v2, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->h:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_3
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-eqz v5, :cond_9

    move-object p1, v7

    :cond_9
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    move-object p1, v7

    :goto_4
    iput-object v7, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object v4, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    invoke-virtual {v4, v2, p1, v0}, Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_c

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iput-object v7, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->c:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
