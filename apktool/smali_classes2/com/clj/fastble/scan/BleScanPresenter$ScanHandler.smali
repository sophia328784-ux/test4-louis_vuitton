.class final Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanHandler"
.end annotation


# instance fields
.field private final mBleScanPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/clj/fastble/scan/BleScanPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/clj/fastble/scan/BleScanPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;->mBleScanPresenter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;->mBleScanPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clj/fastble/scan/BleScanPresenter;

    if-eqz p0, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/clj/fastble/data/BleDevice;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanPresenter;->d:Landroid/os/Handler;

    new-instance v1, Lcom/clj/fastble/scan/BleScanPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter$1;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter;->a(Lcom/clj/fastble/data/BleDevice;)V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p1, Lcom/clj/fastble/data/BleDevice;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    :cond_1
    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/clj/fastble/scan/BleScanPresenter;->a(Lcom/clj/fastble/data/BleDevice;)V

    :cond_3
    return-void
.end method
