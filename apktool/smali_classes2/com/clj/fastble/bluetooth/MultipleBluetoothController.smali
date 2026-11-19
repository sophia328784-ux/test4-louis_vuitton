.class public Lcom/clj/fastble/bluetooth/MultipleBluetoothController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/clj/fastble/utils/BleLruHashMap;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/clj/fastble/utils/BleLruHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/bluetooth/BleBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized b(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    iget-object v1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    iget-object p1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
