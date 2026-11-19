.class public final Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB)\u0008\u0007\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "encryptedSharedPreferences",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;)V",
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
.field public static final synthetic e:I


# instance fields
.field public final a:Ldagger/Lazy;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lkotlinx/serialization/json/Json;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Lkotlinx/serialization/json/Json;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->a:Ldagger/Lazy;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->c:Lkotlinx/serialization/json/Json;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p2, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$1;-><init>(Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final c(Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;-><init>(Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    check-cast v3, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->c:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_6

    const-wide/16 v7, 0x1e

    invoke-virtual {v6, v7, v8}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v6

    if-ne v6, v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iput v4, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$deleteDeprecatedProducts$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->b(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final b(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;-><init>(Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;->d:I

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

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$2;

    invoke-direct {v2, p1, p0, v3}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$2;-><init>(Ljava/util/List;Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$setRecommendedSource$1;->d:I

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

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;-><init>(Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;->d:I

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

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$2;-><init>(Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/RecommendedSourceRepositoryImpl$getRecommendedSourceFromSharedPref$1;->d:I

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
