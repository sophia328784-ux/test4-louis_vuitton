.class Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventSenderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dynatrace/android/agent/CommunicationManager;


# direct methods
.method private constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string p1, "dtxEventSenderThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;Lcom/dynatrace/android/agent/CommunicationManager$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->o:Z

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->o:Z

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v2, v0, Lcom/dynatrace/android/agent/CommunicationManager;->o:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->b()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_4
    invoke-static {v0, v3}, Lcom/dynatrace/android/agent/CommunicationManager;->a(Lcom/dynatrace/android/agent/CommunicationManager;Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    :catch_1
    :goto_2
    return-void
.end method
