.class Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

.field final synthetic val$timeOutMs:I


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/scanner/BLEScanner;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;->this$0:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    iput p2, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;->val$timeOutMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;->val$timeOutMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;->this$0:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner$1;->this$0:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b(Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
