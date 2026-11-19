.class public final Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;",
        "",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "dataStore",
        "<init>",
        "(Landroidx/datastore/core/DataStore;)V",
        "Keys",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/datastore/core/DataStore;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;->a:Landroidx/datastore/core/DataStore;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$2;

    const/4 v5, 0x3

    invoke-direct {v2, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v6, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1;

    invoke-direct {p1, v6, p0}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;)V

    new-instance p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$4;

    invoke-direct {p0, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v2, p1, p0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput v3, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$1;->d:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/dynatrace/agent/storage/preference/MetricsData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    return-object v4
.end method

.method public final b(Lcom/dynatrace/agent/storage/preference/MetricsData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "metrics are updated: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_1
    iget-object p2, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;

    invoke-direct {v2, p1, p0, v3}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsData;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$1;->d:I

    invoke-static {p2, v2, v0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
