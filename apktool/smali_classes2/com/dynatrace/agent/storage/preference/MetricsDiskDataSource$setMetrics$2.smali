.class final Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "preferences",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.storage.preference.MetricsDiskDataSource$setMetrics$2"
    f = "MetricsDiskDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/dynatrace/agent/storage/preference/MetricsData;

.field public final synthetic d:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/preference/MetricsData;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->c:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iput-object p2, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->d:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->c:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->d:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    invoke-direct {v0, v1, p0, p2}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsData;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$setMetrics$2;->c:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->b:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->d:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->o:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->p:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->q:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->r:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->s:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_0
    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_1
    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_2
    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->i:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_3
    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->k:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_4
    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->l:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_5
    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    if-eqz p0, :cond_7

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->m:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-wide v1, p0, Lcom/dynatrace/agent/metrics/AppVersion;->a:J

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v0, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->n:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object p0, p0, Lcom/dynatrace/agent/metrics/AppVersion;->b:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    goto :goto_6

    :cond_7
    sget-object p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->m:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    sget-object p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->n:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;)V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
