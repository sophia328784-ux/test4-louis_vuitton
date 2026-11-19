.class public final Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/SearchHistoryRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\rB3\u0008\u0007\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/SearchHistoryRepository;",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "encryptedSharedPreferences",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatcher",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V",
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
.field public final a:Ldagger/Lazy;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final d:Lkotlinx/serialization/json/Json;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
            "Lkotlinx/serialization/json/Json;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->a:Ldagger/Lazy;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->d:Lkotlinx/serialization/json/Json;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p2, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$1;-><init>(Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 50
    sget-object p3, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    sget-object p3, Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule;->b:Lcom/vuitton/android/core/schedulers/CoroutineDispatchersModule$Companion$DefaultCoroutineDispatchers$1;

    .line 52
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;-><init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V

    return-void
.end method

.method public static final c(Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;-><init>(Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$2;-><init>(Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$getSearchHistoryFromSharedPref$1;->d:I

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


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;-><init>(Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$2;

    invoke-direct {v2, p1, p0, v3}, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$2;-><init>(Ljava/util/List;Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl$setSearchHistory$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SearchHistoryRepositoryImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method
