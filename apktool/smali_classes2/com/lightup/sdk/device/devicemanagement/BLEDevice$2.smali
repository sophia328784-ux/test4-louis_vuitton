.class Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->startUnlockRetryThread()V
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

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const-string v1, "startUnlockRetryThread"

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->d(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-ne v0, v2, :cond_0

    invoke-virtual {v3, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->sendUnlock()V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
