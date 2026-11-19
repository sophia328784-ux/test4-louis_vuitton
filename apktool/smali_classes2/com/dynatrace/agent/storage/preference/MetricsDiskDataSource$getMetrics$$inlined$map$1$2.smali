.class public final Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic c:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2;->c:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;

    iget v3, v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v4, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->p:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, ""

    if-nez v4, :cond_3

    move-object/from16 v23, v7

    goto :goto_1

    :cond_3
    move-object/from16 v23, v4

    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    move v1, v6

    goto/16 :goto_b

    :cond_4
    new-instance v8, Lcom/dynatrace/agent/storage/preference/MetricsData;

    sget-object v4, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v9, -0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v9

    :goto_2
    sget-object v10, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->b:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v10}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_3

    :cond_6
    move v10, v9

    :goto_3
    sget-object v11, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v11}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_4

    :cond_7
    move v11, v9

    :goto_4
    sget-object v12, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->d:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_8
    move v12, v9

    sget-object v9, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v9}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/lang/Double;

    sget-object v9, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->i:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v9}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/lang/Double;

    sget-object v9, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v9}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    sget-object v9, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v9}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Ljava/lang/String;

    sget-object v9, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v9}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    const/16 v17, 0x0

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_5

    :cond_9
    move/from16 v9, v17

    :goto_5
    sget-object v5, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v5}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_a

    move-object/from16 v18, v7

    goto :goto_6

    :cond_a
    move-object/from16 v18, v5

    :goto_6
    sget-object v5, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->k:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v5}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    sget-object v5, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->l:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v5}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    sget-object v5, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->m:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v5}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    sget-object v6, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->n:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move/from16 p1, v4

    iget-object v4, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2;->c:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v24, 0x1

    cmp-long v4, v21, v24

    if-gez v4, :cond_c

    :cond_b
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto :goto_7

    :cond_c
    new-instance v4, Lcom/dynatrace/agent/metrics/AppVersion;

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v7, v8, v6}, Lcom/dynatrace/agent/metrics/AppVersion;-><init>(JLjava/lang/String;)V

    move-object v5, v4

    goto :goto_8

    :goto_7
    const/4 v5, 0x0

    :goto_8
    sget-object v4, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->o:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_d

    move-object/from16 v4, v21

    :cond_d
    sget-object v6, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->s:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_e

    move-object/from16 v24, v21

    goto :goto_9

    :cond_e
    move-object/from16 v24, v6

    :goto_9
    sget-object v6, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->r:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move/from16 v25, v6

    goto :goto_a

    :cond_f
    move/from16 v25, v17

    :goto_a
    sget-object v6, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;->q:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    :cond_10
    move-object/from16 v21, v5

    move/from16 v26, v17

    move-object/from16 v8, v22

    move-object/from16 v22, v4

    move/from16 v17, v9

    move/from16 v9, p1

    invoke-direct/range {v8 .. v26}, Lcom/dynatrace/agent/storage/preference/MetricsData;-><init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v22, v8

    move-object/from16 v5, v22

    const/4 v1, 0x1

    :goto_b
    iput v1, v2, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1;->c:I

    iget-object v0, v0, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$getMetrics$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v5, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    return-object v3

    :cond_11
    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
