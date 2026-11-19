.class Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->notifyConsumer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->b(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->b(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->k(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    :cond_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
