.class public final Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;",
        "",
        "Lcom/dynatrace/agent/storage/db/EndPointInfo;",
        "activeEndpoint",
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;",
        "databaseDataSource",
        "",
        "envelopeSize",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "<init>",
        "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILcom/dynatrace/agent/common/time/TimeProvider;)V",
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
.field public final a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

.field public final b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

.field public final c:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final d:Lcom/dynatrace/agent/communication/filter/EventRecordSizeFilter;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILcom/dynatrace/agent/common/time/TimeProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    new-instance p1, Lcom/dynatrace/agent/communication/filter/EventRecordSizeFilter;

    invoke-direct {p1, p3}, Lcom/dynatrace/agent/communication/filter/EventRecordSizeFilter;-><init>(I)V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->d:Lcom/dynatrace/agent/communication/filter/EventRecordSizeFilter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;

    invoke-direct {v0, p0, p3}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;-><init>(Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->c:Ljava/lang/Object;

    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_3
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/agent/storage/db/EventMetadata;

    iget-wide v3, v3, Lcom/dynatrace/agent/storage/db/EventMetadata;->a:J

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    iput-object p0, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->b:Ljava/util/List;

    iput v2, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$loadEventData$1;->e:I

    invoke-interface {p2, v1, v0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->f(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_5

    return-object p3

    :cond_5
    :goto_2
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p2, p1, :cond_6

    const-string p1, "ALERT! actual record size does not match metadata size"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_6
    return-object p0
.end method

.method public final b(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 7

    instance-of v0, p3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;

    invoke-direct {v0, p0, p3}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;-><init>(Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->e:Ljava/lang/Object;

    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    iget p1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->d:I

    iget-object p2, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->b:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    iget p2, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->d:I

    iget-object p1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v5, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    iput-object p1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p2, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->d:I

    iput v5, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    invoke-interface {p1, v5, p2, v0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->e(ZILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    :goto_1
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    iput-object v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p2, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->d:I

    iput v4, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    invoke-interface {p1, v3, p2, v0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->e(ZILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_5

    :goto_2
    return-object p3

    :cond_5
    move p1, p2

    move-object p2, v1

    :goto_3
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p3, p1, :cond_6

    iput-boolean v3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    :cond_6
    move-object v1, p2

    :cond_7
    check-cast p0, Ljava/util/List;

    new-instance p1, Lkotlin/Pair;

    iget-boolean p2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final c(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;

    iget v3, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;

    invoke-direct {v2, v0, v1}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;-><init>(Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->h:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-boolean v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->g:Z

    iget-wide v6, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->f:J

    iget-object v4, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->e:Ljava/util/List;

    check-cast v4, Ljava/util/List;

    iget-object v10, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->d:Ljava/util/List;

    check-cast v10, Ljava/util/List;

    iget-object v11, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->c:Ljava/util/List;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 p3, v8

    goto/16 :goto_b

    :cond_3
    iget-boolean v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->g:Z

    iget-wide v10, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->f:J

    iget-object v4, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->e:Ljava/util/List;

    check-cast v4, Ljava/util/List;

    iget-object v7, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->d:Ljava/util/List;

    check-cast v7, Ljava/util/List;

    iget-object v12, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->c:Ljava/util/List;

    check-cast v12, Ljava/util/List;

    iget-object v13, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 p3, v8

    goto/16 :goto_8

    :cond_4
    iget-wide v10, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->f:J

    iget-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    move-wide/from16 v10, p1

    iput-wide v10, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->f:J

    iput v8, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    const/16 v1, 0x3e8

    iget-object v4, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    invoke-virtual {v0, v4, v1, v2}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_e

    :cond_6
    :goto_1
    check-cast v1, Lkotlin/Pair;

    iget-object v4, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "data selection: no dispatchable data found"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_7
    iget-object v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->d:Lcom/dynatrace/agent/communication/filter/EventRecordSizeFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v1, Lkotlin/Pair;

    sget-object v13, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v1, v13, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 p3, v8

    goto/16 :goto_6

    :cond_8
    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget v15, v1, Lcom/dynatrace/agent/communication/filter/EventRecordSizeFilter;->a:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 p3, v8

    move-object v8, v14

    goto :goto_4

    :cond_9
    move/from16 p3, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/dynatrace/agent/storage/db/EventMetadata;

    iget v9, v5, Lcom/dynatrace/agent/storage/db/EventMetadata;->d:I

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v15, v9

    add-int/lit8 v9, v15, -0x1

    int-to-long v6, v9

    cmp-long v6, v6, v10

    if-gtz v6, :cond_a

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dynatrace/agent/storage/db/EventMetadata;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v8, p3

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_2

    :cond_d
    :goto_5
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v8, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    iget-object v5, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data selection: need to drop "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " records because they exceed size limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dynatrace/agent/storage/db/EventMetadata;

    iget-wide v13, v9, Lcom/dynatrace/agent/storage/db/EventMetadata;->a:J

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iput-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    move-object v6, v12

    check-cast v6, Ljava/util/List;

    iput-object v6, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->c:Ljava/util/List;

    move-object v6, v7

    check-cast v6, Ljava/util/List;

    iput-object v6, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->d:Ljava/util/List;

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    iput-object v6, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->e:Ljava/util/List;

    iput-wide v10, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->f:J

    iput-boolean v4, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->g:Z

    const/4 v6, 0x2

    iput v6, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    invoke-interface {v5, v8, v2}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->b(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_f

    goto/16 :goto_e

    :cond_f
    move-object v13, v0

    move v0, v4

    move-object v4, v1

    :goto_8
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-wide/from16 v18, v10

    move-object v11, v12

    move-object v12, v13

    :goto_9
    move-object v10, v7

    move-wide/from16 v6, v18

    goto :goto_a

    :cond_10
    move-wide/from16 v18, v10

    move-object v11, v12

    move-object v12, v0

    move v0, v4

    move-object v4, v1

    goto :goto_9

    :goto_a
    iget-object v1, v12, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object v12, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    move-object v5, v11

    check-cast v5, Ljava/util/List;

    iput-object v5, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->c:Ljava/util/List;

    move-object v5, v10

    check-cast v5, Ljava/util/List;

    iput-object v5, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->d:Ljava/util/List;

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iput-object v5, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->e:Ljava/util/List;

    iput-wide v6, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->f:J

    iput-boolean v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->g:Z

    const/4 v5, 0x3

    iput v5, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    invoke-virtual {v12, v10, v1, v2}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->a(Ljava/util/List;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_11

    goto/16 :goto_e

    :cond_11
    :goto_b
    check-cast v1, Ljava/util/List;

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    if-nez v0, :cond_13

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_12

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_d

    :cond_13
    :goto_c
    move/from16 v8, p3

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data selection: selected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records, more pending: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", selection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/agent/storage/db/EventRecord;

    new-instance v3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;

    iget-boolean v2, v2, Lcom/dynatrace/agent/storage/db/EventRecord;->d:Z

    invoke-direct {v3, v0, v1, v2}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;-><init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/util/List;Z)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_14
    const-string v0, "data selection: all data records were too big"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    iput-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->c:Ljava/util/List;

    iput-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->d:Ljava/util/List;

    iput-object v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->e:Ljava/util/List;

    const/4 v0, 0x4

    iput v0, v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    invoke-virtual {v12, v6, v7, v2}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->c(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_15

    :goto_e
    return-object v3

    :cond_15
    return-object v0
.end method
