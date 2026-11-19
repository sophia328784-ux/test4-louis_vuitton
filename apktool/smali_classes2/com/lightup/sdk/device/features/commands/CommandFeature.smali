.class public abstract Lcom/lightup/sdk/device/features/commands/CommandFeature;
.super Lcom/lightup/sdk/device/features/Feature;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/Feature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method


# virtual methods
.method public abstract getMessage()Lcom/lightup/sdk/device/model/device/DeviceMessage;
.end method

.method public isAtomic()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/commands/CommandFeature;->getMessage()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method
