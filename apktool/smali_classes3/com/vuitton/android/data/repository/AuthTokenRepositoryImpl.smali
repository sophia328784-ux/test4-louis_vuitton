.class public final Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AuthTokenRepository;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;",
        "twistTokenDataSource",
        "Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;",
        "salesforceTokenDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;-><init>(Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearSalesforceTokens$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;-><init>(Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$clearTwistTokens$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;-><init>(Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v3, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceAccessToken$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->b:Ljava/lang/String;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;-><init>()V

    throw p0

    :cond_5
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz p0, :cond_6

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->b:Ljava/lang/String;

    :goto_2
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-nez p0, :cond_8

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    :goto_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;-><init>(Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    iput v3, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$get$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    return-object p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;-><init>(Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v3, v0, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl$getSalesforceUserId$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->a:Ljava/lang/String;

    :goto_2
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-nez p0, :cond_7

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    :goto_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_9

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p0
.end method
