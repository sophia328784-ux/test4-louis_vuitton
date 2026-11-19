.class public final Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000cB\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0007\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;",
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
.field public static final g:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final h:Landroidx/datastore/preferences/core/Preferences$Key;


# instance fields
.field public final a:Landroidx/datastore/core/DataStore;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile d:Ljava/lang/String;

.field public e:Lkotlinx/coroutines/Job;

.field public f:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "cross_platform_screenshot_count"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    const-string v1, "cross_platform_screenshot_visit_id"

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->h:Landroidx/datastore/preferences/core/Preferences$Key;

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

    invoke-direct {p0, p1, v0}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;-><init>(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V

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
    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->a:Landroidx/datastore/core/DataStore;

    .line 36
    iput-object p2, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    const-string p1, ""

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$ensurePreloadComplete$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$ensurePreloadComplete$1;-><init>(Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$flush$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$flush$1;-><init>(Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->d(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$preload$1;-><init>(Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->e:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->f:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$persistLatest$1;-><init>(Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v1, v2, v2, v3, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->f:Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
