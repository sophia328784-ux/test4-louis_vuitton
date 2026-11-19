.class public final Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;",
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;",
        "Lcom/dynatrace/agent/storage/db/EventDao;",
        "dao",
        "<init>",
        "(Lcom/dynatrace/agent/storage/db/EventDao;)V",
        "Companion",
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
.field public final a:Lcom/dynatrace/agent/storage/db/EventDao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDao;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/storage/db/EventRecord;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "db event put: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput v3, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$put$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/dynatrace/agent/storage/db/EventDao;->d(Lcom/dynatrace/agent/storage/db/EventRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method public final b(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "db event deleteIds, recordIds: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput v3, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteIds$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/dynatrace/agent/storage/db/EventDao;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method public final c(JJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p5, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->d:I

    :goto_0
    move-object p5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;

    invoke-direct {v0, p0, p5}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, p5, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p5, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "db event deleteAllBefore, now: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", retentionTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput v3, p5, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAllBefore$1;->d:I

    invoke-interface/range {p0 .. p5}, Lcom/dynatrace/agent/storage/db/EventDao;->c(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_3

    return-object v1

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;->d:I

    const/4 v3, 0x1

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

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p1, "db event deleteAll"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput v3, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$deleteAll$1;->d:I

    invoke-interface {p0, v0}, Lcom/dynatrace/agent/storage/db/EventDao;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method public final e(ZILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    const-string v0, "db event fetchEventMetadata: "

    instance-of v1, p3, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;

    iget v2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;

    invoke-direct {v1, p0, p3}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->e:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->g:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget p2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->c:I

    iget-boolean p1, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->b:Z

    iget-object p0, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->d:Lkotlin/collections/EmptyList;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput-object p3, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->d:Lkotlin/collections/EmptyList;

    iput-boolean p1, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->b:Z

    iput p2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->c:I

    iput v4, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventMetadata$1;->g:I

    invoke-interface {p0, p1, p2, v1}, Lcom/dynatrace/agent/storage/db/EventDao;->f(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v5, p3

    move-object p3, p0

    move-object p0, v5

    :goto_1
    :try_start_2
    check-cast p3, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPriority: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", limitRows: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p3

    :catch_0
    move-object p0, p3

    :catch_1
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    return-object p0
.end method

.method public final f(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    const-string v0, "db event fetchEventRecordByIds: "

    instance-of v1, p2, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;

    iget v2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;

    invoke-direct {v1, p0, p2}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->d:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->f:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->c:Lkotlin/collections/EmptyList;

    iget-object p1, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->b:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput-object p1, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->b:Ljava/util/ArrayList;

    iput-object p2, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->c:Lkotlin/collections/EmptyList;

    iput v4, v1, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$fetchEventRecordByIds$1;->f:I

    invoke-interface {p0, p1, v1}, Lcom/dynatrace/agent/storage/db/EventDao;->g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    :goto_1
    :try_start_2
    check-cast p2, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", recordIds: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p2

    :catch_0
    move-object p0, p2

    :catch_1
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    return-object p0
.end method

.method public final g(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "db event delete, eventRecords: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;->a:Lcom/dynatrace/agent/storage/db/EventDao;

    iput v3, v0, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl$delete$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/dynatrace/agent/storage/db/EventDao;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
