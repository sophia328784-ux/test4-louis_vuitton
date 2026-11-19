.class Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->startHardResetRetryThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->g(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->d(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-ne v0, v1, :cond_0

    iget-object v0, v2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const-string v1, "startHardResetRetryThread prior to connectionHardReset"

    invoke-static {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->h(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "startHardResetRetryThread break"

    invoke-static {v2, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->h(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
