.class public abstract Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;
.super Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
.source "SourceFile"


# instance fields
.field private orientation:Lcom/lightup/sdk/device/enums/PairOrientation;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/model/device/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
            ">;",
            "Lcom/lightup/sdk/device/model/device/DeviceType;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;-><init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/model/device/DeviceType;)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getAdditional()[B

    move-result-object p1

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    invoke-static {p1}, Lcom/lightup/sdk/device/enums/PairOrientation;->from(B)Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-void
.end method


# virtual methods
.method public getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-object p0
.end method

.method public setOrientation(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    return-void
.end method
