.class Lcom/lp/ble/BLEConnector$5;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/lp/ble/BLEConnector;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 3

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/lp/ble/BLEConnector;->k:Z

    if-nez v1, :cond_0

    new-instance p2, Lcom/lp/ble/BLEConnector$5$1;

    invoke-direct {p2, p0, p1}, Lcom/lp/ble/BLEConnector$5$1;-><init>(Lcom/lp/ble/BLEConnector$5;Lcom/clj/fastble/data/BleDevice;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, p2, p0, p1}, Lcom/lp/ble/BLEConnector;->k(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    iget-object p0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p2, Lcom/clj/fastble/exception/BleException;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/lp/ble/BLEGattListener;->onConnectFail(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 8

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-boolean v1, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->k:Z

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/lp/ble/BLEConnector;->c:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Lcom/lp/ble/BLEConnector$5$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/lp/ble/BLEConnector$5$2;-><init>(Lcom/lp/ble/BLEConnector$5;Landroid/bluetooth/BluetoothGatt;I)V

    const-wide/16 p2, 0x3e8

    invoke-virtual {v0, p1, p2, p3}, Lcom/lp/ble/BLEConnector;->k(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_2

    :cond_1
    move-object v4, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/lp/ble/config/BleSetupConfig;->a:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_1
    const-string v3, "]"

    const-string v5, "  "

    const-string v6, "["

    if-nez v4, :cond_8

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_3
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz p0, :cond_7

    const/16 p1, 0x1003

    const-string p2, "service == null"

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/BLEGattListener;->onFailed(ILjava/lang/String;)V

    :cond_7
    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/lp/ble/statistic/BleStatistic;->a(J)Ljava/lang/String;

    iget-object p0, p0, Lcom/lp/ble/BLEManager;->b:Lcom/lp/ble/statistic/StatisticCallback;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/lp/ble/statistic/StatisticCallback;->a()V

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    :goto_4
    const/4 v7, 0x4

    if-ge v2, v7, :cond_a

    sget-object v7, Lcom/lp/ble/config/BleSetupConfig;->b:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    move-object v7, v1

    :goto_5
    if-nez v7, :cond_f

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    iget-object p0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz p0, :cond_d

    const/16 p1, 0x1004

    const-string p2, "characteristic == null"

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/BLEGattListener;->onFailed(ILjava/lang/String;)V

    :cond_d
    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/lp/ble/statistic/BleStatistic;->a(J)Ljava/lang/String;

    iget-object p0, p0, Lcom/lp/ble/BLEManager;->b:Lcom/lp/ble/statistic/StatisticCallback;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/lp/ble/statistic/StatisticCallback;->a()V

    :cond_e
    :goto_7
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object p0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    return-void

    :cond_f
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    iget-object v2, v0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    if-eqz v2, :cond_10

    iget-object v3, v2, Lcom/lp/ble/RequestManger;->a:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    iget-object v2, v2, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_10
    new-instance v1, Lcom/lp/ble/RequestManger;

    iget-object v2, v0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/lp/ble/RequestManger;-><init>(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    new-instance v1, Lcom/lp/ble/BLEConnector$5$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lp/ble/BLEConnector$5$3;-><init>(Lcom/lp/ble/BLEConnector$5;Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Lcom/lp/ble/BLEConnector;->k(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final c(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/lp/ble/RequestManger;->a:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, v1, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->c:Landroid/os/Handler;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iput-object v3, p0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    invoke-virtual {p0, p2}, Lcom/lp/ble/BLEConnector;->f(Lcom/clj/fastble/data/BleDevice;)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    iget-object p2, p0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, v2

    :goto_1
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v2, v0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p3, p4}, Lcom/lp/ble/BLEGattListener;->onDisConnected(ZLandroid/bluetooth/BluetoothGatt;I)V

    :cond_6
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lp/ble/BLEGattListener;->onStartConnect()V

    :cond_0
    return-void
.end method
