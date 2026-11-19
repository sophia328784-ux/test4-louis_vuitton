.class public Lcom/clj/fastble/bluetooth/BleConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/bluetooth/BluetoothGatt;

.field public b:Landroid/bluetooth/BluetoothGattService;

.field public c:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public d:Lcom/clj/fastble/bluetooth/BleBluetooth;

.field public e:Landroid/os/Handler;


# virtual methods
.method public final a(Lcom/clj/fastble/callback/BleReadCallback;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1, p2}, Lcom/clj/fastble/callback/BleBaseCallback;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/callback/BleBaseCallback;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->d:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1, p2}, Lcom/clj/fastble/callback/BleBaseCallback;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/callback/BleBaseCallback;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->d:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final d(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/clj/fastble/callback/BleNotifyCallback;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleConnector;->c()V

    if-eqz p4, :cond_6

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "gatt setCharacteristicNotification fail"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/clj/fastble/callback/BleNotifyCallback;->b(Lcom/clj/fastble/exception/BleException;)V

    return v0

    :cond_1
    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleConnector;->c()V

    if-eqz p4, :cond_6

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "descriptor equals null"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/clj/fastble/callback/BleNotifyCallback;->b(Lcom/clj/fastble/exception/BleException;)V

    return v0

    :cond_2
    if-eqz p3, :cond_3

    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_0

    :cond_3
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    :goto_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleConnector;->c()V

    if-eqz p4, :cond_4

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p2, "gatt writeDescriptor fail"

    invoke-direct {p0, p2}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/clj/fastble/callback/BleNotifyCallback;->b(Lcom/clj/fastble/exception/BleException;)V

    :cond_4
    return p1

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleConnector;->c()V

    if-eqz p4, :cond_6

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "gatt or characteristic equal null"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/clj/fastble/callback/BleNotifyCallback;->b(Lcom/clj/fastble/exception/BleException;)V

    :cond_6
    return v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleConnector;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->b:Landroid/bluetooth/BluetoothGattService;

    :cond_2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->b:Landroid/bluetooth/BluetoothGattService;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_3
    return-void
.end method

.method public final f([BLcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_4

    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/clj/fastble/bluetooth/BleConnector;->b(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleConnector;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object p3, p0, Lcom/clj/fastble/bluetooth/BleConnector;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleConnector;->e:Landroid/os/Handler;

    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "gatt writeCharacteristic fail"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_2
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "Updates the locally stored value of this characteristic fail"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_3
    :goto_0
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "this characteristic not support write!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_4
    :goto_1
    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "the data to be written is empty"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method
