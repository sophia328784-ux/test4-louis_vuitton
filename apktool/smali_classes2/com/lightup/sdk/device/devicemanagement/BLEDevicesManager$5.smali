.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startDataTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget v3, v2, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumingRate:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    invoke-static {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v2, v2, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v3, v3, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v6}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v7, v6}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->j(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->d(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->f(ILcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    const/4 v2, 0x2

    if-lt v3, v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :goto_2
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v4, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->f(ILcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_5
    :goto_4
    return-void
.end method
