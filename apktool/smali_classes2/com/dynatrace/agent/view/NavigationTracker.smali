.class public final Lcom/dynatrace/agent/view/NavigationTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/view/NavigationTracker;",
        "",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;)V",
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
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/view/NavigationTracker;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dynatrace/agent/view/NavigationTracker;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/agent/view/NavigationEvent;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/agent/view/NavigationTracker;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/agent/view/NavigationEvent;

    if-eqz v0, :cond_0

    const-string v0, "Replacing active navigation with a new one"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/dynatrace/agent/view/NavigationEvent;

    iget-object v1, p0, Lcom/dynatrace/agent/view/NavigationTracker;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/view/NavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object p1, p0, Lcom/dynatrace/agent/view/NavigationTracker;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
