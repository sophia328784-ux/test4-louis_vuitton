.class Lcom/lp/ble/BLEConnector$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/lp/ble/BLEConnector;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$4;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$4;->this$0:Lcom/lp/ble/BLEConnector;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/BLEConnector;->k:Z

    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lp/ble/statistic/BleStatistic;->a(J)Ljava/lang/String;

    iget-object v0, v0, Lcom/lp/ble/BLEManager;->b:Lcom/lp/ble/statistic/StatisticCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/lp/ble/statistic/StatisticCallback;->a()V

    :cond_1
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    new-instance v2, Lcom/lp/ble/BLEConnector$5;

    invoke-direct {v2, p0}, Lcom/lp/ble/BLEConnector$5;-><init>(Lcom/lp/ble/BLEConnector;)V

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/BleManager;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)V

    return-void
.end method
