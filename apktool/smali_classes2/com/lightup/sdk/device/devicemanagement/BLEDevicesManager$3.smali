.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field final synthetic val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v0, v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;->val$device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
