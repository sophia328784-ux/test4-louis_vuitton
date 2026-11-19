.class public Lcom/clj/fastble/BleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/BleManager$BleManagerHolder;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Application;

.field public b:Lcom/clj/fastble/scan/BleScanRuleConfig;

.field public c:Landroid/bluetooth/BluetoothAdapter;

.field public d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

.field public e:Landroid/bluetooth/BluetoothManager;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/clj/fastble/BleManager;->f:I

    return-void
.end method

.method public static c()Lcom/clj/fastble/BleManager;
    .locals 1

    sget-object v0, Lcom/clj/fastble/BleManager$BleManagerHolder;->a:Lcom/clj/fastble/BleManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)V
    .locals 4

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/clj/fastble/BleManager;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/clj/fastble/data/BleDevice;->b:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-direct {v1, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;-><init>(Lcom/clj/fastble/data/BleDevice;)V

    iget-object v2, v0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v3}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v3}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    iget-object p0, p0, Lcom/clj/fastble/BleManager;->b:Lcom/clj/fastble/scan/BleScanRuleConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v1

    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {v1, p1, p2, p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->b(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_3
    :goto_2
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "Not Found Device Exception Occurred!"

    invoke-direct {p0, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Lcom/clj/fastble/callback/BleGattCallback;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_4
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string v0, "Bluetooth not enable!"

    invoke-direct {p0, v0}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Lcom/clj/fastble/callback/BleGattCallback;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_5
    const-string p0, "BleGattCallback can not be Null!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    iget-object p0, p0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-eqz p0, :cond_5

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_0
    move v2, v0

    :goto_0
    monitor-exit p0

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->c()V

    invoke-virtual {p0, v2}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p1

    :cond_2
    :goto_2
    monitor-exit p0

    if-eqz v0, :cond_4

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_3

    :try_start_5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/bluetooth/BleBluetooth;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p1

    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->c()V

    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->c(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    monitor-exit p0

    return-void

    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1

    :cond_5
    return-void
.end method

.method public final d(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "This device is not connected!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/clj/fastble/callback/BleReadCallback;->a(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object p0

    const-string p1, "0000fea0-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p0, p1, p2}, Lcom/clj/fastble/bluetooth/BleConnector;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_1

    invoke-virtual {p0, p3, p2}, Lcom/clj/fastble/bluetooth/BleConnector;->a(Lcom/clj/fastble/callback/BleReadCallback;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 p1, 0x41

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "gatt readCharacteristic fail"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/clj/fastble/callback/BleReadCallback;->a(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_1
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "this characteristic not support read!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/clj/fastble/callback/BleReadCallback;->a(Lcom/clj/fastble/exception/BleException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 10

    if-nez p3, :cond_0

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "data is Null!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "This device not connect!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_1
    const-string v3, "0000fea0-0000-1000-8000-00805f9b34fb"

    if-eqz p4, :cond_2

    array-length p1, p3

    iget p0, p0, Lcom/clj/fastble/BleManager;->f:I

    if-le p1, p0, :cond_2

    new-instance v1, Lcom/clj/fastble/bluetooth/SplitWriter;

    invoke-direct {v1}, Lcom/clj/fastble/bluetooth/SplitWriter;-><init>()V

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/clj/fastble/bluetooth/SplitWriter;->a(Lcom/clj/fastble/bluetooth/BleBluetooth;Ljava/lang/String;Ljava/lang/String;[BZJLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_2
    move-object v4, p2

    move-object v5, p3

    move-object v9, p5

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/clj/fastble/bluetooth/BleConnector;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5, v9, v4}, Lcom/clj/fastble/bluetooth/BleConnector;->f([BLcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v9, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFinished(I)V

    return-void
.end method
