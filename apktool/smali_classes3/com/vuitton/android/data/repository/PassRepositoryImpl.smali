.class public final Lcom/vuitton/android/data/repository/PassRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PassRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/PassRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/PassRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PassRepository;",
        "Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;",
        "passLocalDataSource",
        "Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;",
        "passNetworkDataSource",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;

.field public final c:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/PassRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;-><init>(Lcom/vuitton/android/data/repository/PassRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->d:I

    iget-boolean p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->c:Z

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->b:Ljava/lang/String;

    iput v8, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->g:I

    invoke-virtual {v5, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_a

    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    :goto_2
    move v4, v8

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;

    iput-object v3, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->b:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->c:Z

    iput v4, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->d:I

    iput v7, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_4

    :cond_8
    move p1, p2

    move-object p2, p0

    move p0, v4

    :goto_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    iput-object v3, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->b:Ljava/lang/String;

    iput-boolean p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->c:Z

    iput p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->d:I

    iput v6, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$isEligibleForPass$1;->g:I

    invoke-virtual {v5, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_4
    return-object v1

    :cond_9
    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_a
    return-object p2
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;-><init>(Lcom/vuitton/android/data/repository/PassRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$clearPassDataCache$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;-><init>(Lcom/vuitton/android/data/repository/PassRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    iget-boolean p2, p2, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->d:Z

    if-eqz p2, :cond_5

    iput v4, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    iput v3, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$getPass$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_1
    return-object v1

    :cond_6
    return-object p0
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;-><init>(Lcom/vuitton/android/data/repository/PassRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iget-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->b:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    check-cast p1, Ljava/io/InputStream;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->f:I

    iget p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->e:I

    iget-object v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iget-object v4, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->c:[B

    iget-object v6, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->b:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    check-cast v6, Ljava/io/InputStream;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v2

    move v2, p0

    move-object p0, v11

    goto/16 :goto_7

    :cond_3
    iget-object p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->c:[B

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    iget-object p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->b:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto/16 :goto_8

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_18

    :try_start_3
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of p2, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v2

    goto :goto_4

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v2

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    sget-object v10, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->CARD_TWO_DIMENSIONAL:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    if-ne v9, v10, :cond_8

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :goto_4
    const-string p1, "Required value was null."

    if-ne p2, v7, :cond_d

    :try_start_4
    sget-object p2, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->CARD_TWO_DIMENSIONAL:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v3}, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->b:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->c:[B

    iput v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->f:I

    iput v6, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    invoke-virtual {v5, v3, p2, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->e(Ljava/io/ByteArrayInputStream;Lcom/vuitton/android/data/dto/pass/ContentDispositionName;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    goto/16 :goto_8

    :cond_b
    move-object p0, p1

    goto/16 :goto_9

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of v7, p2, Ljava/util/Collection;

    if-eqz v7, :cond_e

    move-object v7, p2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v2

    goto :goto_6

    :cond_e
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v7, v2

    :cond_f
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    sget-object v10, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->RECTO_NORMAL:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    if-eq v9, v10, :cond_10

    sget-object v10, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->RECTO_DIFFUSE:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    if-ne v9, v10, :cond_f

    :cond_10
    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_11

    goto :goto_5

    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v8

    :cond_12
    :goto_6
    if-ne v7, v6, :cond_17

    sget-object p2, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->RECTO_NORMAL:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    if-eqz v6, :cond_16

    invoke-static {v6}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;)[B

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->RECTO_DIFFUSE:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    if-eqz p0, :cond_15

    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v7, v9}, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->b:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    iput-object p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->c:[B

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iput v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    invoke-virtual {v5, v7, p2, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->e(Ljava/io/ByteArrayInputStream;Lcom/vuitton/android/data/dto/pass/ContentDispositionName;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_13

    goto :goto_8

    :cond_13
    move-object v4, p0

    move-object p0, p1

    move p1, v2

    :goto_7
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v4, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->RECTO_DIFFUSE:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->b:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->c:[B

    iput-object p0, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->d:Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;

    iput p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->f:I

    iput v3, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$fetchFromNetworkThenSaveInCache$1;->i:I

    invoke-virtual {v5, p2, v4, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->e(Ljava/io/ByteArrayInputStream;Lcom/vuitton/android/data/dto/pass/ContentDispositionName;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_14

    :goto_8
    return-object v1

    :cond_14
    :goto_9
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected number of files: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_18
    return-object p0
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;-><init>(Lcom/vuitton/android/data/repository/PassRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    iget-object v4, p0, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/android/data/dto/pass/ContentDispositionName;->CARD_TWO_DIMENSIONAL:Lcom/vuitton/android/data/dto/pass/ContentDispositionName;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->b:Ljava/lang/String;

    iput v7, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->e:I

    invoke-virtual {v4, p2, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->a(Lcom/vuitton/android/data/dto/pass/ContentDispositionName;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    check-cast p2, Ljava/io/File;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;-><init>(Ljava/io/InputStream;)V

    goto :goto_3

    :cond_6
    instance-of p2, v2, Lcom/vuitton/foundation/exception/CacheException$NoResultException;

    if-eqz p2, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->b:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->e:I

    invoke-virtual {v4, v0}, Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_2
    move-object v2, p2

    goto :goto_3

    :cond_8
    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_9

    return-object v2

    :cond_9
    :try_start_1
    instance-of v2, p2, Lcom/vuitton/foundation/exception/CacheException$NoResultException;

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/PassRepositoryImpl$retrievePassFromCacheOrNetwork$1;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/PassRepositoryImpl;->d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    :goto_5
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/pass/Pass;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p0

    :cond_b
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
