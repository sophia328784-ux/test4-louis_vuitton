.class public final Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/TwistAuthRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0016BQ\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/api/bff/user/AuthApi;",
        "authApi",
        "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;",
        "twistTokenDataSource",
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
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlinx/serialization/json/Json;)V",
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
.field public static final j:Ljava/util/Set;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

.field public final c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

.field public final d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

.field public final f:Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

.field public final g:Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

.field public final h:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

.field public final i:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "louisvuitton.com"

    const-string v1, "louisvuitton.cn"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->j:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlinx/serialization/json/Json;)V
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

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->h:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput-object p9, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->i:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public static t(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, ";"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "="

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4, v4}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    new-instance v3, Lkotlin/Pair;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

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
    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->b:I

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->e:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :try_start_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v5, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    move-object v6, p1

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->b:Ljava/lang/String;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->d:Ljava/lang/String;

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->b:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->e:I

    invoke-interface {v5, v6, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->logout(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v4, Lkotlin/Result;

    invoke-direct {v4, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    instance-of v4, p1, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_9

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v4, p1

    :goto_5
    check-cast v4, Lkotlin/Result;

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->b:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$logout$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->s(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_6
    return-object v1

    :cond_8
    return-object p0

    :cond_9
    throw p1

    :cond_a
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not authenticated with Twist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;->d:I

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

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->r(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogin$1;->d:I

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

.method public final c(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->d:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->c:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->b:I

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;->a:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ForgetPasswordValidation;->c:Ljava/lang/String;

    invoke-direct {v2, v6, v7, p1}, Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->b:I

    iput p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->c:I

    iput p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->g:I

    invoke-interface {p2, v2, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->forgetPasswordValidate(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, p1

    move v4, v2

    :goto_1
    check-cast p2, Lretrofit2/Response;

    iget-object v6, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v6, v6, Lokhttp3/Response;->r:Z

    if-eqz v6, :cond_7

    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p2, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object p2

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->b:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->c:I

    iput p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordValidate$1;->g:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_6
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;

    const-string p1, "Response marked as successful but no credentials found"

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p1, p2, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p2, "Unknown error occurred"

    if-eqz p1, :cond_12

    :try_start_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->i:Lkotlinx/serialization/json/Json;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object p0, v5

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_11

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_a

    move-object p0, v5

    :cond_a
    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    goto :goto_7

    :cond_b
    move-object p0, v5

    :goto_7
    if-eqz p0, :cond_c

    iget-object v5, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    :cond_c
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;->PASSWORD_ALREADY_USED:Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;->INVALID_OTP:Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;->EXPIRED_OTP:Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordError;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    if-nez v5, :cond_d

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;

    invoke-direct {p0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object p0, p1

    goto :goto_9

    :cond_e
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$ExpiredOtp;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$ExpiredOtp;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$InvalidOtp;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$InvalidOtp;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$PasswordAlreadyUsed;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$PasswordAlreadyUsed;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    throw p0

    :cond_12
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;

    invoke-direct {p0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/forgetpassword/ForgetPasswordException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_9
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_b

    :cond_13
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_14

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_b
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_14
    throw p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->e:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->c:I

    iget v6, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->b:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->h:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->authenticateGuest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v2

    move v6, v4

    :goto_1
    check-cast p1, Lretrofit2/Response;

    iget-object v7, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v7, v7, Lokhttp3/Response;->r:Z

    if-eqz v7, :cond_5

    move-object v5, p1

    :cond_5
    if-eqz v5, :cond_9

    iget-object p1, v5, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    if-eqz p1, :cond_9

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object v7, p1, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, ""

    if-nez v7, :cond_6

    move-object v7, v8

    :cond_6
    :try_start_3
    iget-object p1, p1, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->d:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v8, p1

    :goto_2
    invoke-direct {v5, v7, v8}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->e:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iput v6, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->b:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateGuest$1;->h:I

    invoke-virtual {p0, v5, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->r(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object p0, v5

    :goto_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p0, :cond_9

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_6

    :cond_a
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_b

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_b
    throw p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->c:I

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :cond_3
    iget p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->d:I

    iget v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->c:I

    iget-object v7, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v11, v2

    move v2, p1

    move-object p1, v7

    move v7, v5

    move v5, v11

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->e:I

    iput v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->h:I

    invoke-interface {p2, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_5

    :cond_5
    move v5, v2

    move v7, v5

    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of v8, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-eqz v8, :cond_6

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    goto :goto_2

    :cond_6
    move-object p2, v6

    :goto_2
    if-eqz p2, :cond_7

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->a:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object p2, v6

    :goto_3
    iget-object v8, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;

    iget-object v10, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;->b:Ljava/lang/String;

    invoke-direct {v9, v10, p1}, Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;

    iput v7, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->c:I

    iput v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->h:I

    invoke-interface {v8, v9, p2, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->nativeLogin(Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v2

    move v2, v5

    move v4, v7

    :goto_4
    check-cast p2, Lretrofit2/Response;

    iget-object v5, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v5, v5, Lokhttp3/Response;->r:Z

    if-eqz v5, :cond_b

    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p2, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    if-eqz p2, :cond_a

    invoke-static {p2}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object p2

    iput-object v6, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->d:I

    iput p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->e:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$nativeLogin$1;->h:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_5
    return-object v1

    :cond_9
    :goto_6
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_a
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;

    const-string p1, "Response marked as successful but no credentials found"

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    iget-object p1, p2, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->i:Lkotlinx/serialization/json/Json;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    move-object p0, v6

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    :try_start_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_9

    :cond_d
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_13

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_9
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_e

    move-object p0, v6

    :cond_e
    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz p0, :cond_f

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    goto :goto_a

    :cond_f
    move-object p0, v6

    :goto_a
    if-eqz p0, :cond_10

    iget-object p1, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    goto :goto_b

    :cond_10
    move-object p1, v6

    :goto_b
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->INVALID_PASSWORD:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;

    invoke-virtual {p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginError;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    if-nez p1, :cond_11

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;

    invoke-direct {p0, v6}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_c
    move-object p0, p1

    goto :goto_d

    :cond_12
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$InvalidPassword;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$InvalidPassword;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_d
    throw p0

    :cond_13
    throw p0

    :cond_14
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;

    invoke-direct {p0, v6}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_e
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_f

    :cond_15
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_16

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_f
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_16
    throw p0
.end method

.method public final f(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;->d:I

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

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;->b:Ljava/util/UUID;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registration$1;->d:I

    invoke-interface {p0, p2, v2, v3, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->register(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/AuthUrlsMapperKt;->a(Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;)Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p0
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;->c:Ljava/util/UUID;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCode;->d:Ljava/lang/String;

    invoke-direct {p2, v2, v4, v5, p1}, Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$authenticateCodeExchange$1;->d:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->twistCodeExchange(Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final h(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;->b:Ljava/util/UUID;

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$login$1;->d:I

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->login(Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/AuthUrlsMapperKt;->a(Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;)Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final i(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->d:I

    iget p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->c:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->b:I

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0, p2, p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->q(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/io/Serializable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    iget-object v2, p3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p3, p3, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    new-instance v6, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeEntryDto;

    invoke-direct {v6, v2, p3}, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeEntryDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeEntryDto;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeEntryDto;->a:Ljava/lang/String;

    const-string v6, "sfid_access_token"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_6
    move-object p3, v5

    :goto_2
    if-eqz p3, :cond_9

    new-instance p1, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;

    invoke-direct {p1, p2}, Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    const/4 p3, 0x0

    iput p3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->b:I

    iput p3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->c:I

    iput p3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->g:I

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->cookieExchange(Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    move p2, p3

    move v2, p2

    move-object p3, p1

    move p1, v2

    :goto_3
    check-cast p3, Lretrofit2/Response;

    new-instance v6, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;

    invoke-direct {v6, p0, v5}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$2;

    invoke-direct {p0, v4, v5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->b:I

    iput p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->c:I

    iput p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$cookieExchangeFromCheckout$1;->g:I

    invoke-static {p3, v6, p0, v0}, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt;->a(Lretrofit2/Response;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    :goto_5
    check-cast p3, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_b

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_b
    throw p1
.end method

.method public final j(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterValidateBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterValidateBody;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterValidateBody;->b:Ljava/lang/String;

    invoke-direct {v2, v5, p1}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;->d:I

    invoke-interface {p2, v2, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->registerValidate(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_5

    :cond_4
    :goto_1
    check-cast p2, Lretrofit2/Response;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lretrofit2/Response;

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerValidate$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->u(Lretrofit2/Response;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_5
    return-object v1

    :cond_6
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    return-object p0

    :cond_8
    throw p2
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->j:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->h:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->j:I

    const/4 v9, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v9, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->g:I

    iget v4, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->f:I

    iget v5, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->e:I

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :cond_3
    iget v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->g:I

    iget v5, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->f:I

    iget v6, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->e:I

    iget-object v7, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;

    iget-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->c:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->b:Ljava/lang/String;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v12

    move v12, v5

    move-object v5, v13

    move v13, v6

    move-object v6, v11

    move v11, v3

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    move-object/from16 v3, p1

    iput-object v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->b:Ljava/lang/String;

    move-object/from16 v6, p2

    iput-object v6, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->c:Ljava/lang/String;

    move-object/from16 v7, p3

    iput-object v7, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;

    const/4 v11, 0x0

    iput v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->e:I

    iput v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->f:I

    iput v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->g:I

    iput v5, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->j:I

    invoke-interface {v1, v8}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object v5, v3

    move v12, v11

    move v13, v12

    :goto_2
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-eqz v3, :cond_6

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    goto :goto_3

    :cond_6
    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->a:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v1, v10

    :goto_4
    iget-object v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;

    iget-object v15, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;->a:Ljava/lang/String;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;->c:Ljava/lang/String;

    invoke-direct {v14, v15, v9, v7}, Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->b:Ljava/lang/String;

    iput-object v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->c:Ljava/lang/String;

    iput-object v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;

    iput v13, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->e:I

    iput v12, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->f:I

    iput v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->g:I

    iput v4, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->j:I

    move-object v4, v1

    move-object v7, v14

    invoke-interface/range {v3 .. v8}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->socialLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_8

    goto :goto_6

    :cond_8
    move v3, v11

    move v4, v12

    move v5, v13

    :goto_5
    check-cast v1, Lretrofit2/Response;

    iget-object v6, v1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v6, v6, Lokhttp3/Response;->r:Z

    if-eqz v6, :cond_b

    iget-object v1, v1, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object v1

    iput-object v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->b:Ljava/lang/String;

    iput-object v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->c:Ljava/lang/String;

    iput-object v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginBody;

    iput v5, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->e:I

    iput v4, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->f:I

    iput v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->g:I

    const/4 v3, 0x3

    iput v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialLogin$1;->j:I

    invoke-virtual {v0, v1, v8}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    :goto_6
    return-object v2

    :cond_9
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_a
    new-instance v0, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;

    const-string v1, "No credentials found"

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, v1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v0, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->i:Lkotlinx/serialization/json/Json;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v10

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_5
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_13

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_a
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_e

    move-object v0, v10

    :cond_e
    check-cast v0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    goto :goto_b

    :cond_f
    move-object v0, v10

    :goto_b
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    goto :goto_c

    :cond_10
    move-object v1, v10

    :goto_c
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginError;->REGISTRATION_NEEDED:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialLoginError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    if-nez v1, :cond_11

    new-instance v0, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;

    invoke-direct {v0, v10}, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_11
    new-instance v1, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_d
    move-object v0, v1

    goto :goto_e

    :cond_12
    new-instance v1, Lcom/vuitton/android/data/exception/SocialAuthException$RegistrationNeeded;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/exception/SocialAuthException$RegistrationNeeded;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_13
    throw v0

    :cond_14
    new-instance v0, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;

    invoke-direct {v0, v10}, Lcom/vuitton/android/data/exception/SocialAuthException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_e
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_f
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_10

    :cond_15
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_16

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_10
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_16
    throw v0
.end method

.method public final l(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    new-instance p2, Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;

    invoke-direct {p2, p1}, Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;-><init>(Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$forgetPasswordInitiate$1;->d:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->forgetPasswordInitiate(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->j:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->h:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->j:I

    const/4 v9, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v9, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    iget v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->g:I

    iget v5, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->f:I

    iget v6, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->e:I

    iget-object v7, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;

    iget-object v12, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->c:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v24, v12

    move v12, v5

    move-object v5, v13

    move v13, v6

    move-object/from16 v6, v24

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    move-object/from16 v3, p1

    iput-object v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->b:Ljava/lang/String;

    move-object/from16 v6, p2

    iput-object v6, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->c:Ljava/lang/String;

    move-object/from16 v7, p3

    iput-object v7, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;

    iput v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->e:I

    iput v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->f:I

    iput v10, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->g:I

    iput v5, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->j:I

    invoke-interface {v0, v8}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    goto/16 :goto_9

    :cond_5
    move-object v5, v3

    move v3, v10

    move v12, v3

    move v13, v12

    :goto_2
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of v14, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-eqz v14, :cond_6

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    goto :goto_3

    :cond_6
    move-object v0, v11

    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->a:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v0, v11

    :goto_4
    iget-object v14, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    invoke-static {v9}, Lcom/vuitton/android/data/dto/authentication/common/UserInformationDtoKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;)Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    move-result-object v16

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;->b:Ljava/lang/String;

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;->c:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/profile/UserConsentsMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    move-result-object v21

    const/16 v22, 0x14

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    invoke-direct/range {v15 .. v23}, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;-><init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->b:Ljava/lang/String;

    iput-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->c:Ljava/lang/String;

    iput-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;

    iput v13, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->e:I

    iput v12, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->f:I

    iput v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->g:I

    iput v4, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->j:I

    move-object v4, v0

    move-object v3, v14

    move-object v7, v15

    invoke-interface/range {v3 .. v8}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->socialRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    goto :goto_9

    :cond_8
    :goto_5
    check-cast v0, Lretrofit2/Response;

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_c

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_8
    check-cast v3, Lkotlin/Result;

    iget-object v0, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lretrofit2/Response;

    iput-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->b:Ljava/lang/String;

    iput-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->c:Ljava/lang/String;

    iput-object v11, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;

    const/4 v3, 0x0

    iput v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->e:I

    iput v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->f:I

    const/4 v3, 0x3

    iput v3, v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$socialRegister$1;->j:I

    invoke-virtual {v1, v0, v8}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->u(Lretrofit2/Response;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    :goto_9
    return-object v2

    :cond_a
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    return-object v0

    :cond_c
    throw v0
.end method

.method public final n(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/RegisterInitiateMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;)Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$registerInitiate$1;->d:I

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->registerInitiate(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_6

    iget-object p0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateResponseDto;

    if-eqz p0, :cond_4

    iget-object v4, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateResponseDto;->a:Ljava/lang/String;

    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_6
    iget-object p1, p2, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->i:Lkotlinx/serialization/json/Json;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    move-object p0, v4

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_19

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_9

    move-object p0, v4

    :cond_9
    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz p0, :cond_17

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    iget-object v0, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPassword;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPassword;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_TOO_SHORT:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooShort;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooShort;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_TOO_LONG:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooLong;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooLong;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_INVALID_COUNTRY:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalidCountry;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalidCountry;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_INVALID:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalid;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalid;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_e
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPostalCode;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPostalCode;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_STATE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidState;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidState;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_CITY:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCity;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCity;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_ADDRESS:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-string v1, "address3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;->ADDRESS3:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;

    goto :goto_7

    :pswitch_1
    const-string v1, "address2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;->ADDRESS2:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;

    goto :goto_7

    :pswitch_2
    const-string v1, "address1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;->ADDRESS1:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;

    goto :goto_7

    :cond_14
    :goto_6
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;->UNDEFINED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;

    :goto_7
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v1, p2, v0}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;)V

    move-object v0, v1

    goto :goto_8

    :cond_15
    if-nez v0, :cond_16

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    invoke-direct {v0, v4}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_17
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_18
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;-><init>(Ljava/util/List;)V

    goto :goto_9

    :cond_19
    throw p0

    :cond_1a
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    invoke-direct {p1, v4}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;-><init>(Ljava/util/List;)V

    :goto_9
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_a
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_b

    :cond_1b
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_1c

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_b
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1c
    throw p1

    :pswitch_data_0
    .packed-switch -0x48a41d43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    const-string v0, "Requesting new Token with refreshToken : "

    instance-of v1, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->g:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_6

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object p0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    iget p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iget v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :cond_4
    iget p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iget v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iget-object v7, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    :try_start_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v0

    move v0, p1

    move-object p1, v7

    move v7, v3

    move v3, v10

    goto/16 :goto_3

    :cond_5
    iget p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iget v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iget-object v7, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    :try_start_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v10, v0

    move v0, p1

    move-object p1, v7

    move v7, v3

    move v3, v10

    goto :goto_2

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_5
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/AuthApi;

    if-eqz p2, :cond_8

    :try_start_6
    new-instance p2, Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;

    move-object v7, p1

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->b:Ljava/lang/String;

    invoke-direct {p2, v7}, Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iput v8, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-interface {v3, p2, v1}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->refreshTokenGuest(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_7

    goto/16 :goto_6

    :cond_7
    move v3, v0

    move v7, v3

    :goto_2
    check-cast p2, Lretrofit2/Response;

    goto :goto_4

    :cond_8
    new-instance p2, Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;

    invoke-interface {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p2, v8}, Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iput v7, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-interface {v3, p2, v1}, Lcom/vuitton/android/data/api/bff/user/AuthApi;->refreshToken(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_9

    goto :goto_6

    :cond_9
    move v3, v0

    move v7, v3

    :goto_3
    check-cast p2, Lretrofit2/Response;

    :goto_4
    new-instance v8, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$2$newTokens$1;

    invoke-direct {v8, p1, v9}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$2$newTokens$1;-><init>(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$2$newTokens$2;

    invoke-direct {p1, p0, v9}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$2$newTokens$2;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object v9, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput v7, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iput v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iput v6, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-static {p2, v8, p1, v1}, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt;->a(Lretrofit2/Response;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_a

    goto :goto_6

    :cond_a
    move p1, v0

    move v0, v3

    move v3, v7

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of v6, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-eqz v6, :cond_c

    iput-object v9, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput-object p2, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iput p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iput v5, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-virtual {p0, p2, v1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->r(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_b

    goto :goto_6

    :cond_b
    move-object p0, p2

    goto :goto_7

    :cond_c
    instance-of v5, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v5, :cond_d

    move-object v5, p2

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iput-object v9, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput-object p2, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->c:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    iput v3, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->d:I

    iput v0, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->e:I

    iput p1, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->f:I

    iput v4, v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$refreshToken$1;->i:I

    invoke-virtual {p0, v5, v1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_b

    :goto_6
    return-object v2

    :goto_7
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_9

    :cond_e
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_f

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_9
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_f
    throw p0
.end method

.method public final p(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    sget-object v1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->j:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->c:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->c:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    monitor-exit v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    :try_start_1
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "TwistAuthRepositoryImpl"

    const-string v2, "Could not access certificate config"

    invoke-interface {p0, v1, v2, p1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public final q(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/io/Serializable;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "Cookie"

    iget-object v3, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {p1, v2}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->p(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    check-cast p2, Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {p2, v2}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    invoke-static {p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_3
    const-string p2, "TwistAuthRepositoryImpl"

    const-string v0, "Error retrieving cookies from checkout"

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p2, v0, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->b:Lkotlin/Result;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

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

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->c(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->b:Lkotlin/Result;

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$internalSaveTokens$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->v(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object p0, p2

    :goto_3
    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final s(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->d:I

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

    iput v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->d:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$onLogout$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->v(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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

.method public final u(Lretrofit2/Response;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p2, p2, Lokhttp3/Response;->r:Z

    if-eqz p2, :cond_6

    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    const-string p2, "Response marked as successful but no credentials found"

    invoke-direct {p1, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;-><init>(Ljava/util/List;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_4
    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$processRegisterResponse$1;->d:I

    invoke-virtual {p0, v4, v0}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->b(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->i:Lkotlinx/serialization/json/Json;

    :try_start_0
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    move-object p0, v4

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_20

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_9

    move-object p0, v4

    :cond_9
    check-cast p0, Lcom/vuitton/android/data/dto/error/ErrorDto;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->f:Ljava/util/List;

    if-eqz p0, :cond_1e

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;

    iget-object v0, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->b:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD_RULES:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordRules;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordRules;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD_CONTAINS_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsName;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsName;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD_CONTAINS_EMAIL:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsEmail;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsEmail;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_EMAIL:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidEmail;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidEmail;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->USER_ALREADY_EXISTS:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UserAlreadyExists;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UserAlreadyExists;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_e
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->BIRTHDATE_INCONSISTENT:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$BirthdateInconsistent;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$BirthdateInconsistent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->LEGAL_AGE_BLOCKED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeBlocked;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeBlocked;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->LEGAL_AGE_TO_BE_BLOCKED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeToBeBlocked;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeToBeBlocked;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PHONE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPhone;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPhone;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_CALLING_CODE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCallingCode;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCallingCode;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_TITLE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidTitle;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidTitle;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object p2, p2, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto;->c:Ljava/lang/String;

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v0, "lastname2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_6

    :cond_15
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;->LAST_NAME2:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;

    goto :goto_7

    :sswitch_1
    const-string v0, "firstname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_6

    :cond_16
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;->FIRST_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;

    goto :goto_7

    :sswitch_2
    const-string v0, "firstname2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_6

    :cond_17
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;->FIRST_NAME2:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;

    goto :goto_7

    :sswitch_3
    const-string v0, "lastname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_6

    :cond_18
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;->LAST_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;

    goto :goto_7

    :cond_19
    :goto_6
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;->UNDEFINED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;

    :goto_7
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;

    invoke-direct {v0, v1, p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;)V

    move-object p2, v0

    goto :goto_8

    :cond_1a
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->EMAIL_AND_USERNAME_NOT_MATCH:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$EmailAndUsernameNotMatch;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$EmailAndUsernameNotMatch;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    sget-object p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_OTP:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {p2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidOtp;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidOtp;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_1c
    if-nez v0, :cond_1d

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    invoke-direct {p2, v4}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_1d
    new-instance p2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    invoke-direct {p2, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1e
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1f
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;-><init>(Ljava/util/List;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_20
    throw p0

    :cond_21
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;

    invoke-direct {p1, v4}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UnknownError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;-><init>(Ljava/util/List;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56f12ddf -> :sswitch_3
        -0x8cacda9 -> :sswitch_2
        0x7f9753b -> :sswitch_1
        0x78cb7231 -> :sswitch_0
    .end sparse-switch
.end method

.method public final v(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;-><init>(Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

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

    goto/16 :goto_8

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_3
    iget-object v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_7

    :cond_6
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-eqz p1, :cond_8

    instance-of v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    goto :goto_2

    :cond_7
    move-object p1, v7

    :goto_2
    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->a:Ljava/lang/String;

    move-object v2, p1

    goto :goto_3

    :cond_8
    move-object v2, v7

    :goto_3
    iput-object v2, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->h:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_7

    :cond_9
    :goto_4
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-eqz v5, :cond_a

    move-object p1, v7

    :cond_a
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_b
    move-object p1, v7

    :goto_5
    iput-object v7, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object v4, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;

    invoke-virtual {v4, v2, p1, v0}, Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_d

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iput-object v7, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->c:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_d

    :goto_7
    return-object v1

    :cond_d
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
