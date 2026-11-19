.class public Lcom/lightup/sdk/device/helpers/LightupCommonHelper;
.super Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/helpers/LightupHelperInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0016\u0010!\u001a\u00020\u001a2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0017J\u001a\u0010$\u001a\u00020\u001a2\u0008\u0010%\u001a\u0004\u0018\u00010#2\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0006H\u0017J\u0008\u0010*\u001a\u00020\u0014H\u0017J\u0008\u0010+\u001a\u00020\u0014H\u0016J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u000201H\u0016J9\u00102\u001a\u00020\u001a2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0018042\u0006\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u0002072\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020#09H\u0017\u00a2\u0006\u0002\u0010:J&\u0010;\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020#2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020#092\u0006\u0010<\u001a\u000207H\u0017J\u0008\u0010=\u001a\u00020>H\u0017J\u0018\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020AH\u0016J\u0010\u0010B\u001a\u00020\u00142\u0006\u0010C\u001a\u00020DH\u0016J\u0008\u0010E\u001a\u00020DH\u0016J\u000e\u0010F\u001a\u0008\u0012\u0004\u0012\u00020 0GH\u0016J\u0010\u0010H\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020\u00062\u0006\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u00062\u0006\u0010L\u001a\u00020MH\u0016J\u0010\u0010O\u001a\u00020>2\u0006\u0010P\u001a\u00020\u0014H\u0016J\u0006\u0010Q\u001a\u00020>J\u0006\u0010R\u001a\u00020>J\u0018\u0010S\u001a\u00020\u001a2\u0006\u0010T\u001a\u00020U2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0016\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006V"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/LightupCommonHelper;",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;",
        "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;",
        "context",
        "Landroid/content/Context;",
        "apiKey",
        "",
        "bleAvailabilityListener",
        "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V",
        "TAG",
        "kotlin.jvm.PlatformType",
        "lightupManager",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        "getLightupManager$library",
        "()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        "setLightupManager$library",
        "(Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V",
        "isConnected",
        "",
        "isReady",
        "isInBootloader",
        "getDeviceId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "startAnimation",
        "Lcom/lightup/sdk/device/enums/CallStatus;",
        "animationId",
        "listener",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "stopAnimation",
        "getCurrentlyPlayingAnimation",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        "startDeviceScanProcess",
        "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "ping",
        "device",
        "pingDeviceListener",
        "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
        "enableAdminMode",
        "adminKey",
        "disableAdminMode",
        "isAdminModeEnable",
        "openDevice",
        "openDeviceListener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;",
        "updateDevice",
        "updateDeviceListener",
        "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;",
        "startDeviceConnectionProcess",
        "deviceIds",
        "",
        "exclude",
        "deviceMonitoringListener",
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
        "deviceConnectionProcessListener",
        "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;",
        "([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;",
        "connectToDevice",
        "monitoringListener",
        "stopDeviceConnectionProcess",
        "",
        "updateAnimations",
        "fetchFromCloud",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "setMode",
        "mode",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        "getMode",
        "getDeviceAnimations",
        "",
        "setPowerModeOff",
        "getDeviceStatus",
        "Lcom/lightup/sdk/device/enums/DeviceStatus;",
        "getFirmwareVersion",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "getBoardVersion",
        "setTestFolder",
        "useTestFolder",
        "stopScan",
        "disconnect",
        "setWalkingModeConfig",
        "config",
        "Lcom/lightup/sdk/device/model/WalkingModeConfig;",
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
.field private final TAG:Ljava/lang/String;

.field public lightupManager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    const-string p1, "LightupCommonHelper"

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->TAG:Ljava/lang/String;

    const-string p0, "5ab65c1930bb4c04b36fea82fbe3e4d7"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    new-instance v0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;

    invoke-direct {v0, p3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$connectToDevice$1;-><init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->connectToDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public disableAdminMode()Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->disableAdminMode()Z

    move-result p0

    return p0
.end method

.method public final disconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->disconnectDevices()V

    return-void
.end method

.method public enableAdminMode(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->enableAdminMode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceAnimations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->getLocalAnimations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;

    move-result-object p0

    return-object p0
.end method

.method public getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->lightupManager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "lightupManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->getMode()Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object p0

    return-object p0
.end method

.method public isAdminModeEnable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isAdminModeEnable()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isConnected()Z

    move-result p0

    return p0
.end method

.method public isInBootloader()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isInBootloader()Z

    move-result p0

    return p0
.end method

.method public isReady()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->isReady()Z

    move-result p0

    return p0
.end method

.method public openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public ping(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->ping(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final setLightupManager$library(Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->lightupManager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    return-void
.end method

.method public setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z

    move-result p0

    return p0
.end method

.method public setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public setTestFolder(Z)V
    .locals 0

    return-void
.end method

.method public setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "Z",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    new-instance v0, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$startDeviceConnectionProcess$1;

    invoke-direct {v0, p3}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper$startDeviceConnectionProcess$1;-><init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public stopDeviceConnectionProcess()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->stopDeviceConnectionProcess()V

    return-void
.end method

.method public final stopScan()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->stopScan()V

    return-void
.end method

.method public updateAnimations(ZLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->updateAnimations(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/helpers/LightupCommonHelper;->getLightupManager$library()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method
