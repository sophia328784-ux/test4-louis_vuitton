.class final Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;
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
    c = "com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2"
    f = "DataStoreExitReasonTimestampDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->c:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;

    iget-wide v1, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->c:J

    invoke-direct {v0, v1, v2, p2}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;-><init>(JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    sget-object v0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2;->c:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
