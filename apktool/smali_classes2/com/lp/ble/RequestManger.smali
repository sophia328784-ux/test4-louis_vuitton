.class public Lcom/lp/ble/RequestManger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/LinkedList;

.field public final d:Ljava/util/HashMap;

.field public e:Z

.field public final f:Lcom/clj/fastble/data/BleDevice;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lp/ble/RequestManger;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/RequestManger;->e:Z

    iput-object p1, p0, Lcom/lp/ble/RequestManger;->f:Lcom/clj/fastble/data/BleDevice;

    iput-object p2, p0, Lcom/lp/ble/RequestManger;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/lp/ble/RequestManger;->h:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/lp/ble/RequestManger;->c:Ljava/util/LinkedList;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "RequestManger"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lp/ble/RequestManger;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/lp/ble/RequestManger$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/lp/ble/RequestManger$1;-><init>(Lcom/lp/ble/RequestManger;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/lp/ble/RequestManger;->f:Lcom/clj/fastble/data/BleDevice;

    if-nez p0, :cond_0

    const-string p0, "RequestManger"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestManger ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/clj/fastble/data/BleDevice;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "] "

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
