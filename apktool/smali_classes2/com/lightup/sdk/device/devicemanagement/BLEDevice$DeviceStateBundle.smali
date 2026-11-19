.class public Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceStateBundle"
.end annotation


# instance fields
.field public final batteryLevel:I

.field public final bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field public final bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

.field public final isPlugged:Z


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/enums/DeviceState;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    iput p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->batteryLevel:I

    iput-boolean p4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->isPlugged:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceStateBundle{bleDevice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bleDeviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPlugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->isPlugged:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
