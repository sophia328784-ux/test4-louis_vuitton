.class Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttemptTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;


# direct methods
.method private constructor <init>(Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;->this$0:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;-><init>(Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;->this$0:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;->this$0:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    iget-object v1, v1, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;->this$0:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e(Ljava/util/Date;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
