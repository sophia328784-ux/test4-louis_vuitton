.class public final Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/net/atg/ATGSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B;\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;",
        "Lcom/vuitton/android/data/net/atg/ATGSessionManager;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/repository/ATGSessionRepository;",
        "atgSessionRepository",
        "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;",
        "cookieManager",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "appConfigRepository",
        "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;",
        "userPreferencesRepository",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public static final synthetic f:I


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

.field public final b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

.field public final c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

.field public final d:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

.field public final e:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->a:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iput-object p4, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iput-object p5, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p6, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->e:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {p0, v0, p2}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;

    iget v1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;

    invoke-direct {p2, p0, p1, v5}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object p2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->e:I

    invoke-virtual {p2, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_1
    :try_start_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v2

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    instance-of p2, v2, Lretrofit2/HttpException;

    if-eqz p2, :cond_8

    move-object p2, v2

    check-cast p2, Lretrofit2/HttpException;

    iget p2, p2, Lretrofit2/HttpException;->b:I

    const/16 v4, 0x199

    if-eq p2, v4, :cond_6

    const/16 v4, 0x191

    if-ne p2, v4, :cond_8

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {p0}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    iput-object v5, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$1;->e:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_4
    return-object v1

    :cond_7
    :goto_5
    return-object p2

    :cond_8
    throw v2
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;

    iget v1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;->d:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iget-object v5, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->a:Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

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

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v7

    if-ne v2, v7, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_6

    iput v7, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;->d:I

    invoke-interface {v5, p1, v0}, Lcom/vuitton/android/domain/repository/ATGSessionRepository;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_2
    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;

    invoke-direct {p1}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a

    :try_start_3
    iget-object p0, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {p0}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v7

    if-ne p1, v7, :cond_7

    move-object v3, p0

    :cond_7
    if-eqz v3, :cond_9

    iput v6, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$authenticateATGSession$1;->d:I

    invoke-interface {v5, v3, v0}, Lcom/vuitton/android/domain/repository/ATGSessionRepository;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    :goto_6
    new-instance p0, Lkotlin/Result;

    goto :goto_7

    :cond_9
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;

    iget v1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->b:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->d:I

    iget-boolean v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->b:Z

    iget-object v4, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v11, p1

    move p1, v2

    move-object v2, v4

    goto/16 :goto_7

    :cond_3
    iget-object p0, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->d:I

    iget-boolean v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->b:Z

    iget-object v3, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v11, p1

    move p1, v2

    move-object v2, v3

    goto/16 :goto_3

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;->a:Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->l(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    check-cast v9, Lkotlin/collections/builders/MapBuilder;

    const-string v10, "_dynSessConf"

    invoke-static {v9, v10}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->b(Lkotlin/collections/builders/MapBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    sget-object v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;->a:Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    check-cast v10, Lkotlin/collections/builders/MapBuilder;

    const-string v11, "LOGGEDSESSIONID"

    invoke-static {v10, v11}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->b(Lkotlin/collections/builders/MapBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v11, "\"\""

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    move-object v10, v8

    :goto_1
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v6, v2, v11}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Lkotlin/collections/builders/MapBuilder;

    const-string v11, "JSESSIONID"

    invoke-static {v2, v11}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->b(Lkotlin/collections/builders/MapBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_9

    new-instance v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;

    new-instance v11, Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;

    invoke-direct {v11, v10, v9}, Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v11}, Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    new-instance v10, Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;

    new-instance v11, Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;

    invoke-direct {v11, v2, v9}, Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V

    move-object v2, v10

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;->a:Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;

    goto :goto_2

    :cond_b
    sget-object v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;->a:Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;

    :goto_2
    if-eqz p2, :cond_17

    instance-of v9, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;

    if-eqz v9, :cond_c

    new-instance p0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;

    move-object p1, v2

    check-cast p1, Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;

    iget-object p1, p1, Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;->a:Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;

    invoke-direct {p0, p2, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V

    goto/16 :goto_a

    :cond_c
    instance-of p2, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;

    const-string v9, "RefreshSessionError"

    iget-object v10, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->e:Lcom/vuitton/foundation/logger/Logger;

    const/4 v11, 0x0

    if-eqz p2, :cond_10

    invoke-virtual {v6}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    if-nez p1, :cond_f

    iput-object v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    iput-boolean p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->b:Z

    iput v11, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->d:I

    iput v7, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    goto :goto_8

    :cond_d
    :goto_3
    iput-object v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    iput-boolean p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->b:Z

    iput v11, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->d:I

    iput v5, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    invoke-virtual {p0, v7, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    goto :goto_8

    :cond_e
    move-object p0, v2

    :goto_4
    move-object p1, p2

    check-cast p1, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    :goto_5
    move-object v2, p0

    move-object p0, p1

    goto :goto_a

    :cond_f
    const-string p0, "SessionCookieState invalid --> Authentication failed"

    invoke-interface {v10, v9, p0, v8}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;-><init>()V

    throw p0

    :cond_10
    instance-of p2, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;

    if-nez p2, :cond_12

    instance-of p2, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;

    if-eqz p2, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {}, Lv40;->g()V

    return-object v8

    :cond_12
    :goto_6
    if-nez p1, :cond_16

    iput-object v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    iput-boolean p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->b:Z

    iput v11, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_13

    goto :goto_8

    :cond_13
    :goto_7
    iput-object v2, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->c:Lcom/vuitton/android/data/net/atg/SessionCookieState;

    iput-boolean p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->b:Z

    iput v11, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$retrieveATGSessionStatus$1;->g:I

    invoke-virtual {p0, v7, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_14

    :goto_8
    return-object v1

    :cond_14
    move-object p0, v2

    :goto_9
    move-object p1, p2

    check-cast p1, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    goto :goto_5

    :goto_a
    if-nez p0, :cond_15

    goto :goto_b

    :cond_15
    return-object p0

    :cond_16
    invoke-virtual {v6}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    const-string p0, "SessionCookieState anonymous or empty --> Authentication failed"

    invoke-interface {v10, v9, p0, v8}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;-><init>()V

    throw p0

    :cond_17
    :goto_b
    instance-of p0, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Authenticated;

    if-nez p0, :cond_1b

    instance-of p0, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Invalid;

    if-eqz p0, :cond_18

    goto :goto_c

    :cond_18
    instance-of p0, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;

    if-eqz p0, :cond_19

    new-instance p0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Anonymous;

    check-cast v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;

    iget-object p1, v2, Lcom/vuitton/android/data/net/atg/SessionCookieState$Anonymous;->a:Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;

    invoke-direct {p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Anonymous;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V

    return-object p0

    :cond_19
    sget-object p0, Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;->a:Lcom/vuitton/android/data/net/atg/SessionCookieState$Empty;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Empty;->a:Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Empty;

    return-object p0

    :cond_1a
    invoke-static {}, Lv40;->g()V

    return-object v8

    :cond_1b
    :goto_c
    invoke-virtual {v6}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    sget-object p0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Empty;->a:Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Empty;

    return-object p0
.end method
