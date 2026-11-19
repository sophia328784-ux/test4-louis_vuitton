.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->twin(Ljava/util/List;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1",
        "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "onConnected",
        "",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "device",
        "reconnection",
        "",
        "onRequiresUpdate",
        "updatePossible",
        "onConnecting",
        "onReconnecting",
        "onNoDeviceFound",
        "onLost",
        "onDeviceShutDown",
        "reason",
        "Lcom/lightup/sdk/device/enums/PowerOffReason;",
        "onError",
        "error",
        "",
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
.field final synthetic $listener:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->$listener:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0

    .line 22
    check-cast p2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V

    return-void
.end method

.method public onConnected(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->$listener:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    invoke-static {p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->access$launchConfig(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    :cond_0
    return-void
.end method

.method public onConnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    return-void
.end method

.method public onDeviceShutDown(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/enums/PowerOffReason;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLost(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->$listener:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    sget-object p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void
.end method

.method public onNoDeviceFound()V
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->$listener:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->UNREACHABLE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void
.end method

.method public onReconnecting(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 0

    .line 22
    check-cast p2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V

    return-void
.end method

.method public onRequiresUpdate(Lcom/lightup/sdk/device/enums/PairOrientation;Lcom/lightup/sdk/device/devicemanagement/BLELightup;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;->$listener:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    invoke-static {p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->access$launchConfig(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    :cond_0
    return-void
.end method
