.class public Lcom/clj/fastble/scan/BleScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;
    }
.end annotation


# instance fields
.field public a:Lcom/clj/fastble/data/BleScanState;

.field public final b:Lcom/clj/fastble/scan/BleScanPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->a:Lcom/clj/fastble/data/BleScanState;

    new-instance v0, Lcom/clj/fastble/scan/BleScanner$1;

    invoke-direct {v0, p0}, Lcom/clj/fastble/scan/BleScanner$1;-><init>(Lcom/clj/fastble/scan/BleScanner;)V

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    return-void
.end method

.method public static a()Lcom/clj/fastble/scan/BleScanner;
    .locals 1

    sget-object v0, Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;->a:Lcom/clj/fastble/scan/BleScanner;

    return-object v0
.end method


# virtual methods
.method public final b([Ljava/util/UUID;JLcom/clj/fastble/callback/BleScanCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->a:Lcom/clj/fastble/data/BleScanState;

    sget-object v1, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    if-eq v0, v1, :cond_0

    invoke-interface {p4}, Lcom/clj/fastble/callback/BleScanPresenterImp;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    iput-wide p2, v0, Lcom/clj/fastble/scan/BleScanPresenter;->a:J

    iput-object p4, v0, Lcom/clj/fastble/scan/BleScanPresenter;->b:Lcom/clj/fastble/callback/BleScanPresenterImp;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "BleScanPresenter"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/clj/fastble/scan/BleScanPresenter;->e:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;

    iget-object p3, v0, Lcom/clj/fastble/scan/BleScanPresenter;->e:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Lcom/clj/fastble/scan/BleScanPresenter$ScanHandler;-><init>(Landroid/os/Looper;Lcom/clj/fastble/scan/BleScanPresenter;)V

    iput-object p2, v0, Lcom/clj/fastble/scan/BleScanPresenter;->f:Landroid/os/Handler;

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/clj/fastble/scan/BleScanPresenter;->g:Z

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p2

    iget-object p2, p2, Lcom/clj/fastble/BleManager;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object p3, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {p2, p1, p3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/clj/fastble/data/BleScanState;->STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;

    :cond_1
    iput-object v1, p0, Lcom/clj/fastble/scan/BleScanner;->a:Lcom/clj/fastble/data/BleScanState;

    iget-object p2, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    iget-object p3, p2, Lcom/clj/fastble/scan/BleScanPresenter;->d:Landroid/os/Handler;

    iget-object p4, p2, Lcom/clj/fastble/scan/BleScanPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    iget-object p4, p2, Lcom/clj/fastble/scan/BleScanPresenter;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p4, p2, Lcom/clj/fastble/scan/BleScanPresenter;->f:Landroid/os/Handler;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-wide v0, p2, Lcom/clj/fastble/scan/BleScanPresenter;->a:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-lez p4, :cond_2

    new-instance p4, Lcom/clj/fastble/scan/BleScanPresenter$4;

    invoke-direct {p4, p2}, Lcom/clj/fastble/scan/BleScanPresenter$4;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;)V

    iget-wide v0, p2, Lcom/clj/fastble/scan/BleScanPresenter;->a:J

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    new-instance p4, Lcom/clj/fastble/scan/BleScanPresenter$5;

    invoke-direct {p4, p2, p1}, Lcom/clj/fastble/scan/BleScanPresenter$5;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;Z)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v0, v0, Lcom/clj/fastble/BleManager;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    sget-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->a:Lcom/clj/fastble/data/BleScanState;

    iget-object v0, p0, Lcom/clj/fastble/scan/BleScanner;->b:Lcom/clj/fastble/scan/BleScanPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/clj/fastble/scan/BleScanPresenter;->g:Z

    iget-object v1, v0, Lcom/clj/fastble/scan/BleScanPresenter;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, v0, Lcom/clj/fastble/scan/BleScanPresenter;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/clj/fastble/scan/BleScanPresenter;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/clj/fastble/scan/BleScanPresenter;->d:Landroid/os/Handler;

    new-instance v2, Lcom/clj/fastble/scan/BleScanPresenter$6;

    invoke-direct {v2, v0}, Lcom/clj/fastble/scan/BleScanPresenter$6;-><init>(Lcom/clj/fastble/scan/BleScanPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
