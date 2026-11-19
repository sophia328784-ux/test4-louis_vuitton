.class Lcom/lp/ble/RequestManger$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/RequestManger;-><init>(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/RequestManger;


# direct methods
.method public constructor <init>(Lcom/lp/ble/RequestManger;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/RequestManger$1;->this$0:Lcom/lp/ble/RequestManger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_6

    iget-object p0, p0, Lcom/lp/ble/RequestManger$1;->this$0:Lcom/lp/ble/RequestManger;

    iget-object p1, p0, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/lp/ble/RequestManger;->a()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [B

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/lp/ble/RequestManger;->a()Ljava/lang/String;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/lp/ble/RequestManger;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/callback/BleWriteCallback;

    sget-object v0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/lp/ble/RequestManger$2;

    invoke-direct {v8, p0, v4, p1}, Lcom/lp/ble/RequestManger$2;-><init>(Lcom/lp/ble/RequestManger;[BLcom/clj/fastble/callback/BleWriteCallback;)V

    iget-object p1, p0, Lcom/lp/ble/RequestManger;->f:Lcom/clj/fastble/data/BleDevice;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/lp/ble/RequestManger;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lp/ble/RequestManger;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lp/ble/RequestManger;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/lp/ble/RequestManger;->h:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/lp/ble/RequestManger;->e:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-virtual {v1, p1}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/bluetooth/BleBluetooth;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance p0, Lcom/clj/fastble/exception/OtherException;

    const-string p1, "This device not connect!"

    invoke-direct {p0, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/lp/ble/RequestManger$2;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    return-void

    :cond_3
    array-length p1, v4

    iget v0, v0, Lcom/clj/fastble/BleManager;->f:I

    if-le p1, v0, :cond_4

    new-instance v0, Lcom/clj/fastble/bluetooth/SplitWriter;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/SplitWriter;-><init>(Z)V

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    invoke-virtual/range {v0 .. v8}, Lcom/clj/fastble/bluetooth/SplitWriter;->a(Lcom/clj/fastble/bluetooth/BleBluetooth;Ljava/lang/String;Ljava/lang/String;[BZJLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/clj/fastble/bluetooth/BleConnector;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v8, v3}, Lcom/clj/fastble/bluetooth/BleConnector;->f([BLcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v8, p0}, Lcom/lp/ble/RequestManger$2;->onWriteFinished(I)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/lp/ble/RequestManger;->a()Ljava/lang/String;

    return-void

    :cond_6
    const/16 v2, 0x34

    if-ne v0, v2, :cond_8

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v0, p0, Lcom/lp/ble/RequestManger$1;->this$0:Lcom/lp/ble/RequestManger;

    iget-object v0, v0, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/lp/ble/RequestManger$1;->this$0:Lcom/lp/ble/RequestManger;

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lp/ble/RequestManger$1;->this$0:Lcom/lp/ble/RequestManger;

    iget-object p1, p1, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/RequestManger$1;->this$0:Lcom/lp/ble/RequestManger;

    iget-object p0, p0, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object p0, v2, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    return-void
.end method
