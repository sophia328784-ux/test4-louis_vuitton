.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/listener/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "onDeviceError",
        "",
        "error",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceError;",
        "onDone",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;

.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)V
    .locals 0

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->onDone$lambda$0(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)V

    return-void
.end method

.method private static final onDone$lambda$0(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)V
    .locals 2

    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method


# virtual methods
.method public onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V

    return-void
.end method

.method public onDone()V
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->stopDeviceConnectionProcess()V

    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;

    new-instance v1, Lz1;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
