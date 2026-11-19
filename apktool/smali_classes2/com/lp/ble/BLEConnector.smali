.class public Lcom/lp/ble/BLEConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/lp/ble/entity/LPBluetoothDevice;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public d:I

.field public e:Lcom/clj/fastble/data/BleDevice;

.field public f:Lcom/lp/ble/RequestManger;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/lp/ble/BLEGattListener;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public k:Z

.field public l:I

.field public m:Lcom/lp/ble/entity/BLEResponse;

.field public final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/lp/ble/entity/LPBluetoothDevice;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lp/ble/BLEConnector;->d:I

    const-string v1, ""

    iput-object v1, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/lp/ble/BLEConnector;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lp/ble/BLEConnector;->k:Z

    const/16 v1, 0x14

    iput v1, p0, Lcom/lp/ble/BLEConnector;->l:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    iput v0, p0, Lcom/lp/ble/BLEConnector;->d:I

    new-instance p1, Lcom/lp/ble/BLEConnector$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/lp/ble/BLEConnector$1;-><init>(Lcom/lp/ble/BLEConnector;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lp/ble/BLEConnector;->c:Landroid/os/Handler;

    new-instance p1, Lcom/lp/ble/BLEConnector$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/lp/ble/BLEConnector$2;-><init>(Lcom/lp/ble/BLEConnector;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    return-void

    :cond_0
    const-string p0, "device must not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    new-instance v3, Lcom/lp/ble/BLEConnector$6;

    invoke-direct {v3, p0}, Lcom/lp/ble/BLEConnector$6;-><init>(Lcom/lp/ble/BLEConnector;)V

    iget-object p0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "This device not connect!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/lp/ble/BLEConnector$6;->b(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/clj/fastble/bluetooth/BleConnector;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleConnector;->c()V

    invoke-virtual {v3, v2}, Lcom/clj/fastble/callback/BleBaseCallback;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Lcom/clj/fastble/callback/BleBaseCallback;->setHandler(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->d:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/clj/fastble/bluetooth/BleConnector;->d(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/clj/fastble/callback/BleNotifyCallback;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "this characteristic not support notify!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/lp/ble/BLEConnector$6;->b(Lcom/clj/fastble/exception/BleException;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static b(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V
    .locals 8

    iget v0, p0, Lcom/lp/ble/BLEConnector;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lp/ble/BLEConnector;->d:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    const-string v0, "{\"keep_hotspot_until_connected\":true}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-instance v7, Lcom/lp/ble/BLEConnector$3;

    invoke-direct {v7, p0, p1}, Lcom/lp/ble/BLEConnector$3;-><init>(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V

    const-string v4, "147c6160-fab2-11e4-9fbb-0002a5d5c51b"

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void
.end method

.method public static c(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleMtuChangedCallback;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/lp/ble/BLEConnector$7;

    invoke-direct {v1, p0, p2}, Lcom/lp/ble/BLEConnector$7;-><init>(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/callback/BleMtuChangedCallback;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {p0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "This device is not connected!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/lp/ble/BLEConnector$7;->b(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object p0

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 p2, 0x61

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Lcom/clj/fastble/callback/BleBaseCallback;->setHandler(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->d:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter p1

    :try_start_0
    iput-object v1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->b:Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->a:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "gatt requestMtu fail"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/lp/ble/BLEConnector$7;->b(Lcom/clj/fastble/exception/BleException;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final d()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lcom/lp/ble/BLEGattListener;)V
    .locals 2

    sget-object v0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iget-object v0, v0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void

    :cond_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    iget-object v0, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/clj/fastble/data/BleDevice;

    invoke-direct {v1, v0}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    iput-object p1, p0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    new-instance p1, Lcom/lp/ble/BLEConnector$4;

    invoke-direct {p1, p0}, Lcom/lp/ble/BLEConnector$4;-><init>(Lcom/lp/ble/BLEConnector;)V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string p0, "not call LPBLEManager.getInstance().init()"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lcom/clj/fastble/data/BleDevice;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/clj/fastble/bluetooth/BleConnector;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/clj/fastble/bluetooth/BleConnector;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, v0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/clj/fastble/bluetooth/BleConnector;->d(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/clj/fastble/callback/BleNotifyCallback;)Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_5

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-eqz p0, :cond_1

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->e:Landroid/bluetooth/BluetoothManager;

    iget-object p0, p0, Lcom/clj/fastble/data/BleDevice;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p0, v1

    :goto_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public final i(ILjava/lang/String;)V
    .locals 4

    const-string v0, "protocolVersion"

    const-string v1, "commonInfo"

    iget-object v2, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {p1}, Lcom/lp/ble/utils/HexUtil;->d(I)V

    sget-object v2, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/16 v2, 0x1001

    if-ne p1, v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x68

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lp/ble/RequestManger;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->d()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    check-cast v1, Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/lp/ble/BLECharacteristicChangedListener;->onCharacteristicChanged(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final j(Lcom/lp/ble/entity/BLEResponse;)V
    .locals 5

    const-string v0, "protocolVersion"

    const-string v1, "commonInfo"

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    iget v3, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    iget v2, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-static {v2}, Lcom/lp/ble/utils/HexUtil;->d(I)V

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    sget-object v2, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget v2, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    const/16 v3, 0x1001

    const-string v4, ""

    if-ne v2, v3, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.]"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x68

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lp/ble/RequestManger;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-interface {p0, p1}, Lcom/lp/ble/BLECharacteristicChangedListener;->onCharacteristicChanged(Lcom/lp/ble/entity/BLEResponse;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final l(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->n:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 4

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p3

    add-int/lit8 v1, v0, 0x6

    new-array v1, v1, [B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput-byte p1, v1, v2

    and-int/lit16 p1, v0, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x4

    aput-byte p1, v1, v2

    shr-int/lit8 p1, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x5

    aput-byte p1, v1, v0

    array-length p1, p3

    const/4 v0, 0x6

    invoke-static {p3, v3, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {p2}, Lcom/lp/ble/utils/HexUtil;->d(I)V

    invoke-static {v1}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    iget-object p1, p0, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/lp/ble/RequestManger;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 p0, 0x34

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    if-eqz p4, :cond_3

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "writeCommand before return"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    :cond_3
    return-void
.end method

.method public final o(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {p2}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/lp/ble/RequestManger;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x34

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "writeCommand before return"

    invoke-direct {p0, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void
.end method
