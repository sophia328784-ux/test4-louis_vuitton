.class final Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/bluetooth/BleBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->d()V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->f()V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->a()V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->g:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget-object p1, p1, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->c(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->a:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    new-instance v0, Lcom/clj/fastble/exception/TimeoutException;

    invoke-direct {v0}, Lcom/clj/fastble/exception/TimeoutException;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/clj/fastble/callback/BleGattCallback;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    sget-object v1, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTED:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v1, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->g:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->h:Z

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->c(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter v0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    iget-object v3, v1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v3}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    iget-object v3, v1, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v3}, Lcom/clj/fastble/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/BleConnectStateParameter;

    iget p1, p1, Lcom/clj/fastble/data/BleConnectStateParameter;->a:I

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->a:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->j:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, p0, p1}, Lcom/clj/fastble/callback/BleGattCallback;->b(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->d()V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->f()V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->a()V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->g:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget-object p1, p1, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->c(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->a:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    new-instance v0, Lcom/clj/fastble/exception/OtherException;

    const-string v1, "GATT discover services exception occurred!"

    invoke-direct {v0, v1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/clj/fastble/callback/BleGattCallback;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->j:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    iget-object p1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->a:Lcom/clj/fastble/callback/BleGattCallback;

    iget v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->l:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->b(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    sget-object v1, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_DISCONNECT:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v1, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->g:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->b(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->c()V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->f()V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->a()V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->b:Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    monitor-enter v2

    :try_start_3
    iget-object v0, v2, Lcom/clj/fastble/bluetooth/BleBluetooth;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v0, v2, Lcom/clj/fastble/bluetooth/BleBluetooth;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_4
    iget-object v0, v2, Lcom/clj/fastble/bluetooth/BleBluetooth;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_5
    iget-object v0, v2, Lcom/clj/fastble/bluetooth/BleBluetooth;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    monitor-exit v2

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object v0, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/BleConnectStateParameter;

    iget-boolean v0, p1, Lcom/clj/fastble/data/BleConnectStateParameter;->b:Z

    iget p1, p1, Lcom/clj/fastble/data/BleConnectStateParameter;->a:I

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->a:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->j:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/clj/fastble/callback/BleGattCallback;->c(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_6
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->d()V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->f()V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->a()V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget v0, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->l:I

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v0, :cond_7

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->l:I

    iget-object p1, p1, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->k:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    sget-object v1, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v1, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;->g:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->c(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/BleConnectStateParameter;

    iget p1, p1, Lcom/clj/fastble/data/BleConnectStateParameter;->a:I

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->a:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->i:Lcom/clj/fastble/data/BleDevice;

    new-instance v2, Lcom/clj/fastble/exception/ConnectException;

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->j:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v2, p0, p1}, Lcom/clj/fastble/exception/ConnectException;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/callback/BleGattCallback;->a(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
