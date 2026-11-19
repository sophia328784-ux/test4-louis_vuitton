.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startPairScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1",
        "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "onDeviceFound",
        "",
        "device",
        "onScanEnd",
        "cancelled",
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
.field final synthetic $listener:Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-static {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->access$getPairDevices$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEX408;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->isLeft$library()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    invoke-direct {v1, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;

    invoke-direct {v1, v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->access$getPairListener$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v1}, Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;->onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->access$getPairDevices$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)Ljava/util/HashMap;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEX408;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408;->getTwinSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onScanEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;->onScanEnd(Z)V

    return-void
.end method
