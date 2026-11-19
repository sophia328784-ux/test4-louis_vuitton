.class public final Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;",
        "",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "twistAuthRepository",
        "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;",
        "salesforceAuthRepository",
        "Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;",
        "timeProvider",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public static final synthetic h:I


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final b:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

.field public final c:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

.field public final d:Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

.field public final e:Lcom/vuitton/foundation/logger/Logger;

.field public final f:Lkotlinx/coroutines/sync/MutexImpl;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p2, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->b:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->c:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->d:Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

    iput-object p5, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->f:Lkotlinx/coroutines/sync/MutexImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;

    iget v1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;-><init>(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    :goto_1
    iget-object p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iput-object p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    iput v5, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->e:I

    iget-object v2, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->c:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    invoke-interface {v2, p2, v0}, Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;->c(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_2

    :cond_4
    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput-object p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    iput v4, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$performRefresh$1;->e:I

    iget-object v2, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->b:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-interface {v2, p2, v0}, Lcom/vuitton/android/domain/repository/TwistAuthRepository;->o(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_2
    return-object v1

    :cond_5
    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    if-eqz p2, :cond_d

    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;

    invoke-direct {p2}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;-><init>()V

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p2, Lkotlin/Result$Failure;

    iget-object p0, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->e:Lcom/vuitton/foundation/logger/Logger;

    if-nez v0, :cond_b

    move-object v0, p2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->f:Lkotlinx/datetime/Instant;

    goto :goto_4

    :cond_7
    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;->d:Lkotlinx/datetime/Instant;

    goto :goto_4

    :cond_8
    instance-of v1, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-nez v1, :cond_a

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_a
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ERROR ("

    const-string v2, ")"

    invoke-static {v1, p1, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TokenRefreshResult"

    invoke-interface {p0, v1, p1, v0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-object p2

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Proactive refresh skipped, last attempt was "

    instance-of v3, v1, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;

    iget v4, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;-><init>(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->i:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    const-string v6, "TokenRefreshCoordinator"

    iget-object v7, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->e:Lcom/vuitton/foundation/logger/Logger;

    iget-object v8, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->d:Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

    iget-object v9, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v13, :cond_4

    if-eq v5, v12, :cond_3

    if-eq v5, v11, :cond_2

    if-ne v5, v10, :cond_1

    iget-object v2, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->g:Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v15

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v15

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v15

    :cond_2
    iget-wide v8, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->h:J

    iget v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->f:I

    iget v11, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->e:I

    iget v12, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    iget v10, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    iget v15, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    iget-object v13, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->g:Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v2

    move-object v2, v13

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v13

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_3
    iget v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->e:I

    iget v10, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    iget v12, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    iget v13, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    iget-object v15, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->g:Lkotlinx/coroutines/sync/Mutex;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v2

    move-object v2, v15

    move v15, v13

    move v13, v10

    move v10, v12

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :cond_4
    iget v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    iget v10, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    iget v13, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v15, v13

    move v13, v10

    move v10, v5

    move-object v5, v1

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v14, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    iput v14, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    iput v14, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    const/4 v1, 0x1

    iput v1, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    invoke-interface {v9, v3}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    goto/16 :goto_7

    :cond_6
    move v10, v14

    move v13, v10

    move v15, v13

    :goto_2
    check-cast v5, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    move-object/from16 v16, v2

    invoke-interface {v8}, Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;->a()J

    move-result-wide v1

    invoke-static {v5, v1, v2}, Lcom/vuitton/android/data/net/auth/AuthTokenExpirationExtKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;J)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_9

    :cond_7
    iget-object v1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->f:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v15, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    iput v13, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    iput v10, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    iput v14, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->e:I

    iput v12, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v2, v4, :cond_8

    goto/16 :goto_7

    :cond_8
    move v2, v13

    move v13, v10

    move v10, v2

    move-object v2, v1

    move v5, v14

    :goto_3
    :try_start_5
    invoke-interface {v8}, Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;->a()J

    move-result-wide v11

    iput-object v2, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v15, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    iput v10, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    move v8, v13

    iput v8, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    iput v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->e:I

    iput v14, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->f:I

    iput-wide v11, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->h:J

    const/4 v1, 0x3

    iput v1, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    invoke-interface {v9, v3}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_9

    goto/16 :goto_7

    :cond_9
    move-wide/from16 v20, v11

    move v12, v8

    move-wide/from16 v8, v20

    move v11, v5

    move v5, v14

    :goto_4
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    move/from16 v17, v15

    iget-wide v14, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->g:J

    sub-long v14, v8, v14

    const-wide/16 v18, 0xbb8

    cmp-long v14, v14, v18

    if-gez v14, :cond_a

    const/4 v13, 0x1

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    :goto_5
    invoke-static {v1, v8, v9}, Lcom/vuitton/android/data/net/auth/AuthTokenExpirationExtKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;J)Z

    move-result v14

    if-nez v14, :cond_c

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object v0, v1

    :cond_b
    :goto_6
    const/4 v1, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_1

    :cond_c
    if-eqz v13, :cond_d

    iget-wide v0, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->g:J

    sub-long/2addr v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v6, v0, v1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    iput-wide v8, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->g:J

    iput-object v2, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->g:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v15, v17

    iput v15, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->b:I

    iput v10, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->c:I

    iput v12, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->d:I

    iput v11, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->e:I

    iput v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->f:I

    iput-wide v8, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->h:J

    const/4 v5, 0x4

    iput v5, v3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshIfExpired$1;->k:I

    invoke-virtual {v0, v1, v3}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v0, v4, :cond_b

    :goto_7
    return-object v4

    :goto_8
    :try_start_6
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    :goto_9
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v5}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    :goto_a
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_b
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_c
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_10

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_d
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "Proactive token refresh failed"

    invoke-interface {v7, v6, v2, v1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-object v0

    :cond_10
    throw v1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;

    iget v1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;-><init>(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->i:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->d:Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p1, p3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget v5, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->f:I

    iget p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->e:I

    iget-object p2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_1
    move-object p0, p2

    goto/16 :goto_7

    :cond_3
    iget p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->e:I

    iget-object p2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move p3, p1

    move-object p1, v6

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->c:Ljava/lang/String;

    iget-object p3, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->f:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p3, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->e:I

    iput v6, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->i:I

    invoke-virtual {p3, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v2, p2

    move-object p2, p3

    move p3, v5

    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput p3, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->e:I

    iput v5, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->i:I

    invoke-interface {v6, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v9, v4

    move-object v4, p1

    move p1, p3

    move-object p3, v9

    :goto_3
    check-cast p3, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of v6, p3, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    if-eqz v6, :cond_7

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p1, p0

    goto :goto_1

    :cond_7
    :try_start_4
    invoke-static {p3}, Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptorKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;)Lkotlin/Pair;

    move-result-object v6

    iget-object v8, v6, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v6, v6, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v4, :cond_a

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object p0, p2

    move-object p1, p3

    goto :goto_5

    :cond_a
    iput-object v7, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->b:Ljava/lang/String;

    iput-object v7, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput p1, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->e:I

    iput v5, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->f:I

    iput v3, v0, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$refreshOnAuthError$1;->i:I

    invoke-virtual {p0, p3, v0}, Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    move-object p0, p2

    :goto_5
    move-object p2, p0

    :goto_6
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p1

    :goto_7
    invoke-interface {p0, v7}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method
