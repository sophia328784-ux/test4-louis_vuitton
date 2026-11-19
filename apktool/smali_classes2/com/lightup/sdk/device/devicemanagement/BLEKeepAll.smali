.class public Lcom/lightup/sdk/device/devicemanagement/BLEKeepAll;
.super Lcom/lightup/sdk/device/devicemanagement/BLELightup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;-><init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->name:Ljava/lang/String;

    return-object p0
.end method
