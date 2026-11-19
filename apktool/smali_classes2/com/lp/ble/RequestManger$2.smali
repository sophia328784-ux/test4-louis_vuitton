.class Lcom/lp/ble/RequestManger$2;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/clj/fastble/callback/BleWriteCallback;

.field public final synthetic b:Lcom/lp/ble/RequestManger;


# direct methods
.method public constructor <init>(Lcom/lp/ble/RequestManger;[BLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/RequestManger$2;->b:Lcom/lp/ble/RequestManger;

    iput-object p3, p0, Lcom/lp/ble/RequestManger$2;->a:Lcom/clj/fastble/callback/BleWriteCallback;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 4

    iget-object v0, p0, Lcom/lp/ble/RequestManger$2;->b:Lcom/lp/ble/RequestManger;

    invoke-virtual {v0}, Lcom/lp/ble/RequestManger;->a()Ljava/lang/String;

    iget-object v1, v0, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    sget-object v2, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/RequestManger$2;->a:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    :cond_0
    iget-object p0, v0, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/16 p0, 0x33

    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final onWriteFinished(I)V
    .locals 2

    iget-object p0, p0, Lcom/lp/ble/RequestManger$2;->b:Lcom/lp/ble/RequestManger;

    invoke-virtual {p0}, Lcom/lp/ble/RequestManger;->a()Ljava/lang/String;

    iget-object p1, p0, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/16 p0, 0x33

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final onWriteSuccess(II[B)V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/RequestManger$2;->b:Lcom/lp/ble/RequestManger;

    invoke-virtual {v0}, Lcom/lp/ble/RequestManger;->a()Ljava/lang/String;

    invoke-static {p3}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/RequestManger$2;->a:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    :cond_0
    return-void
.end method
