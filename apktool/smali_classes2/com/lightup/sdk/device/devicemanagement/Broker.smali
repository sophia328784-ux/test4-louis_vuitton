.class Lcom/lightup/sdk/device/devicemanagement/Broker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Broker"


# instance fields
.field private currentMode:Lcom/lightup/sdk/device/model/device/PriorityMode;

.field private final messagesQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/lightup/sdk/device/model/device/DeviceMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/lightup/sdk/device/model/device/PriorityMode;->NORMAL:Lcom/lightup/sdk/device/model/device/PriorityMode;

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->currentMode:Lcom/lightup/sdk/device/model/device/PriorityMode;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->messagesQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->messagesQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public poll()Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->messagesQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->messagesQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->currentMode:Lcom/lightup/sdk/device/model/device/PriorityMode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->messagesQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->messagesQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method public declared-synchronized setPriorityMode(Lcom/lightup/sdk/device/model/device/PriorityMode;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/Broker;->currentMode:Lcom/lightup/sdk/device/model/device/PriorityMode;
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
