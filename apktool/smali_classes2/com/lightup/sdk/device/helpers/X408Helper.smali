.class public final Lcom/lightup/sdk/device/helpers/X408Helper;
.super Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/helpers/LightupHelperInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0016\u0010!\u001a\u00020\u001a2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0007J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020%J\u0006\u0010&\u001a\u00020\'J\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010)\u001a\u00020*J\u0016\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\u0006\u0010)\u001a\u00020*J\u0018\u0010.\u001a\u00020\u001a2\u0008\u0010\u0013\u001a\u0004\u0018\u00010#2\u0006\u0010)\u001a\u00020*J\u000e\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u0006J\u0006\u00101\u001a\u00020\u0010J\u0006\u00102\u001a\u00020\u0010J\u0010\u00103\u001a\u00020\u001a2\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u000208H\u0016J\u001c\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020;2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0=J7\u00109\u001a\u00020\u001a2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00180?2\u0006\u0010@\u001a\u00020\u00102\u0006\u0010:\u001a\u00020;2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0=\u00a2\u0006\u0002\u0010AJ*\u0010B\u001a\u00020\u001a2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020#0D2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0=2\u0006\u0010:\u001a\u00020;J+\u0010B\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0=2\u0006\u0010:\u001a\u00020;H\u0000\u00a2\u0006\u0002\u0008EJ\u0006\u0010F\u001a\u00020\'J\u0018\u0010G\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020IH\u0016J\u0010\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020LH\u0016J\u0008\u0010M\u001a\u00020LH\u0016J\u000e\u0010N\u001a\u0008\u0012\u0004\u0012\u00020 0DH\u0016J\u0010\u0010O\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010P\u001a\u00020QH\u0016J\u0006\u0010R\u001a\u00020\u001aJ\u0010\u0010S\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010T\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010U\u001a\u00020\'J\u001c\u0010V\u001a\u00020\u001a2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020#0D2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010W\u001a\u00020\'2\u0006\u0010X\u001a\u00020\u0010H\u0016J\u0018\u0010Y\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0016\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/lightup/sdk/device/helpers/X408Helper;",
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
        "bleX408Manager",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;",
        "isConnected",
        "",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408;",
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
        "startPairScanProcess",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;",
        "stopScan",
        "",
        "ping",
        "pingDeviceListener",
        "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
        "pingPair",
        "pair",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "pingDevice",
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
        "monitoringListener",
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
        "deviceConnectionProcessListener",
        "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;",
        "deviceIds",
        "",
        "exclude",
        "([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;",
        "connectToPair",
        "devices",
        "",
        "connectToPair$library",
        "stopDeviceConnectionProcess",
        "updateAnimations",
        "fetchFromCloud",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "setMode",
        "mode",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        "getMode",
        "getDeviceAnimations",
        "setPowerModeOff",
        "getDeviceStatus",
        "Lcom/lightup/sdk/device/enums/DeviceStatus;",
        "getDeviceCallStatus",
        "getFirmwareVersion",
        "getBoardVersion",
        "disconnect",
        "twin",
        "setTestFolder",
        "useTestFolder",
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

.field private final bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V

    const-string p3, "X408Helper"

    iput-object p3, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->TAG:Ljava/lang/String;

    const-string p3, "5ab65c1930bb4c04b36fea82fbe3e4d7"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iget-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;->internetTimeReader:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p1, p3, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    iput-object p2, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    return-void

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final connectToPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    new-instance v0, Lcom/lightup/sdk/device/helpers/X408Helper$connectToPair$1;

    invoke-direct {v0, p3}, Lcom/lightup/sdk/device/helpers/X408Helper$connectToPair$1;-><init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final connectToPair$library(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getLeftDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getRightDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, p1}, [Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/lightup/sdk/device/helpers/X408Helper$connectToPair$2;

    invoke-direct {v0, p3}, Lcom/lightup/sdk/device/helpers/X408Helper$connectToPair$2;-><init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final disableAdminMode()Z
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->disableAdminMode()Z

    move-result p0

    return p0
.end method

.method public final disconnect()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->disconnectDevices()V

    return-void
.end method

.method public final enableAdminMode(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->enableAdminMode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getCurrentlyPlaying()Lcom/lightup/sdk/animation/CreatorProject;

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

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getLocalAnimations$library()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getDeviceId(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getDeviceId(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;

    move-result-object p0

    return-object p0
.end method

.method public getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getMode()Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object p0

    return-object p0
.end method

.method public final isAdminModeEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->isAdminModeEnable()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected()Z

    move-result p0

    return p0
.end method

.method public final isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEX408;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0
.end method

.method public final isConnected(Lcom/lightup/sdk/device/enums/PairOrientation;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isConnected(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result p0

    return p0
.end method

.method public final isInBootloader(Lcom/lightup/sdk/device/enums/PairOrientation;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->isInBootloader(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result p0

    return p0
.end method

.method public isReady()Z
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isReady()Z

    move-result p0

    return p0
.end method

.method public final isReady(Lcom/lightup/sdk/device/devicemanagement/BLEX408;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0
.end method

.method public final isReady(Lcom/lightup/sdk/device/enums/PairOrientation;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isReady(Lcom/lightup/sdk/device/enums/PairOrientation;)Z

    move-result p0

    return p0
.end method

.method public openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->openDevices(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final ping(Lcom/lightup/sdk/device/devicemanagement/BLEX408;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->ping(Lcom/lightup/sdk/device/devicemanagement/BLEX408;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final pingPair(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->pingPair(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z

    move-result p0

    return p0
.end method

.method public setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

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

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final startDeviceConnectionProcess(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    .line 25
    new-instance v0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;

    invoke-direct {v0, p1}, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$1;-><init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V

    .line 26
    invoke-virtual {p0, v0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->startDeviceConnectionProcess(Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "Z",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;",
            "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    new-instance v0, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$2;

    invoke-direct {v0, p3}, Lcom/lightup/sdk/device/helpers/X408Helper$startDeviceConnectionProcess$2;-><init>(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->startDeviceConnectionProcess([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
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

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->startDeviceScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final startPairScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startPairScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final stopDeviceConnectionProcess()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->stopDeviceConnectionProcess()V

    return-void
.end method

.method public final stopScan()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->stopScan()V

    return-void
.end method

.method public final twin(Ljava/util/List;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            ">;",
            "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->twin(Ljava/util/List;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public updateAnimations(ZLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->updateAnimations(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/helpers/X408Helper;->bleX408Manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->updateDevices(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method
