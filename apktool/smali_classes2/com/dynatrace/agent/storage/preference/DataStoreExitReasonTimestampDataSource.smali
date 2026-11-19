.class public final Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;",
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

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->a:Landroidx/datastore/core/DataStore;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {p0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$getCrashTimestamp$2;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v3, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$getCrashTimestamp$$inlined$map$1;

    invoke-direct {p0, v3}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$getCrashTimestamp$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$getCrashTimestamp$4;

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    const-string v0, "anr timestamp is updated: "

    instance-of v1, p3, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;

    iget v2, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;

    invoke-direct {v1, p0, p3}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;-><init>(Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->c:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-wide p1, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->b:J

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance p3, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;

    invoke-direct {p3, p1, p2, v4}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;-><init>(JLkotlin/coroutines/Continuation;)V

    iput-wide p1, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->b:J

    iput v5, v1, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;->e:I

    invoke-static {p0, p3, v1}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
