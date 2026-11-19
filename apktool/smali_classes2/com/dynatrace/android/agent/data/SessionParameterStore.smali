.class public final Lcom/dynatrace/android/agent/data/SessionParameterStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/data/SessionParameterStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000cB\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0007\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dynatrace/android/agent/data/SessionParameterStore;",
        "",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "dataStore",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "<init>",
        "(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V",
        "Landroid/content/Context;",
        "context",
        "(Landroid/content/Context;)V",
        "Companion",
        "agent.core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final i:Landroidx/datastore/preferences/core/Preferences$Key;


# instance fields
.field public final a:Landroidx/datastore/core/DataStore;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public volatile c:Ljava/lang/Integer;

.field public volatile d:Ljava/lang/Long;

.field public e:Lkotlinx/coroutines/Job;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionParameterStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/android/agent/data/SessionParameterStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "session_id"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "visitor_id"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->i:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynatrace/android/agent/data/SessionParameterStoreKt;->b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    sget-object v1, Lcom/dynatrace/android/agent/data/SessionParameterStoreKt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dynatrace/android/agent/data/SessionParameterStore;-><init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->a:Landroidx/datastore/core/DataStore;

    .line 36
    iput-object p2, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->c()V

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionParameterStore$ensurePreloadComplete$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/data/SessionParameterStore$ensurePreloadComplete$1;-><init>(Lcom/dynatrace/android/agent/data/SessionParameterStore;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->g:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "need to wait for updates to be written to data store"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionParameterStore$flush$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/data/SessionParameterStore$flush$1$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionParameterStore$preload$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/data/SessionParameterStore$preload$1;-><init>(Lcom/dynatrace/android/agent/data/SessionParameterStore;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->e:Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final declared-synchronized d(IJ)V
    .locals 7

    monitor-enter p0

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "session id is out of range and will be reset to 0"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->c:Ljava/lang/Integer;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->d:Ljava/lang/Long;

    iget-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->g:Lkotlinx/coroutines/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {p1, v6}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :cond_1
    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/dynatrace/android/agent/data/SessionParameterStore;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v3, p2

    :try_start_4
    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/android/agent/data/SessionParameterStore$update$1;-><init>(Lcom/dynatrace/android/agent/data/SessionParameterStore;IJLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v6, v6, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v1, Lcom/dynatrace/android/agent/data/SessionParameterStore;->g:Lkotlinx/coroutines/Job;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    move-object p1, p0

    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
