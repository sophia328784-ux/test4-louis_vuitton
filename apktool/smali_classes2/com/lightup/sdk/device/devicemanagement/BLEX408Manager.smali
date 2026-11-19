.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;
.super Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001{B!\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J.\u0010)\u001a\u00020*2\u0006\u0010\'\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010\r2\u0008\u0010,\u001a\u0004\u0018\u00010\r2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0014J(\u0010/\u001a\u00020\"2\u0006\u0010\'\u001a\u00020(2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020.H\u0014J\u0008\u00100\u001a\u000201H\u0016J \u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020(2\u0006\u00104\u001a\u00020*H\u0014J\u001c\u00105\u001a\u00020*2\u0008\u00103\u001a\u0004\u0018\u00010\u00022\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0010\u00108\u001a\u0002012\u0006\u00103\u001a\u00020\u0002H\u0002J\u0010\u00109\u001a\u0002012\u0006\u0010:\u001a\u00020;H\u0002J\u001c\u0010<\u001a\u00020=2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00020?2\u0006\u0010:\u001a\u00020;J\u0010\u0010@\u001a\u00020=2\u0008\u0010A\u001a\u0004\u0018\u00010BJ\u0006\u0010C\u001a\u00020\u0010J\u000e\u0010D\u001a\u00020*2\u0006\u0010E\u001a\u00020FJ\u0010\u0010G\u001a\u0004\u0018\u00010(2\u0006\u0010E\u001a\u00020FJ\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020\r2\u0006\u0010:\u001a\u00020;J\u000e\u0010H\u001a\u00020=2\u0006\u0010J\u001a\u00020\u001bJ\u000e\u0010K\u001a\u00020=2\u0006\u0010:\u001a\u00020;J\u000e\u0010L\u001a\u00020=2\u0006\u0010:\u001a\u00020\u001fJ\u0016\u0010M\u001a\u00020=2\u0006\u00103\u001a\u00020\"2\u0006\u0010:\u001a\u00020NJ\u0016\u0010O\u001a\u00020=2\u0006\u0010P\u001a\u00020Q2\u0006\u0010:\u001a\u00020NJ*\u0010R\u001a\u00020=2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00020?2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00020T2\u0006\u0010U\u001a\u00020VJ\u000e\u0010W\u001a\u00020=2\u0006\u0010:\u001a\u00020XJ\u000e\u0010Y\u001a\u00020*2\u0006\u0010Z\u001a\u00020\u001dJ\u0006\u0010[\u001a\u00020\u001dJ\u0013\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00180?H\u0000\u00a2\u0006\u0002\u0008]J\u000e\u0010^\u001a\u00020=2\u0006\u0010:\u001a\u00020;J\u0006\u0010_\u001a\u00020`J\u000e\u0010a\u001a\u00020=2\u0006\u0010:\u001a\u00020bJ\u001a\u0010c\u001a\u0002012\u0008\u0010d\u001a\u0004\u0018\u00010.2\u0006\u0010:\u001a\u00020bH\u0002J\u000e\u0010e\u001a\u00020*2\u0006\u0010f\u001a\u00020\rJ\u0006\u0010g\u001a\u00020*J\u0006\u0010h\u001a\u00020*J\u0008\u0010i\u001a\u0004\u0018\u00010\u0018J\r\u0010j\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008kJ\u0015\u0010l\u001a\u0002012\u0006\u0010J\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008mJ\u0006\u0010n\u001a\u00020\u001bJ\u0008\u0010o\u001a\u000201H\u0002J\u0006\u0010p\u001a\u000201J\u0006\u0010q\u001a\u000201J\u0010\u0010r\u001a\u0002012\u0006\u0010s\u001a\u00020\u0002H\u0014J\u0010\u0010t\u001a\u0002012\u0006\u00103\u001a\u00020\u0002H\u0014J\u0016\u0010u\u001a\u00020=2\u0006\u0010v\u001a\u00020w2\u0006\u0010:\u001a\u00020;J\u0016\u0010x\u001a\u00020=2\u0006\u0010y\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020FJ\u0018\u0010z\u001a\u00020=2\u0006\u0010y\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020FH\u0002R\u0016\u0010\u000c\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\"0!j\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\"`#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006|"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;",
        "Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
        "context",
        "Landroid/content/Context;",
        "permissionsManager",
        "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;",
        "internetTimeReader",
        "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;",
        "<init>",
        "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "getPrefs$library",
        "()Landroid/content/SharedPreferences;",
        "firstMonitoring",
        "Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;",
        "secondMonitoring",
        "loadedAnimations",
        "Ljava/util/ArrayList;",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        "Lkotlin/collections/ArrayList;",
        "triggerIndex",
        "",
        "deviceMode",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        "pairListener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;",
        "pairDevices",
        "Ljava/util/HashMap;",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408;",
        "Lkotlin/collections/HashMap;",
        "productId",
        "getFirmwareManager",
        "Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;",
        "deviceId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "canCreateBLEDevice",
        "",
        "name",
        "mac",
        "scanRecord",
        "",
        "createBLEDevice",
        "defineScanFilterPattern",
        "",
        "onConnected",
        "device",
        "reconnection",
        "onDeviceInitiatedShutdown",
        "powerOffReason",
        "Lcom/lightup/sdk/device/messages/InternalPowerOfReason;",
        "startMonitoring",
        "launchConfig",
        "listener",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "twin",
        "Lcom/lightup/sdk/device/enums/CallStatus;",
        "devices",
        "",
        "updateDevices",
        "updateDeviceListener",
        "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;",
        "getPrefs",
        "isInBootloader",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "getDeviceId",
        "startAnimation",
        "animationId",
        "triggerId",
        "stopAnimation",
        "startPairScanProcess",
        "ping",
        "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
        "pingPair",
        "pair",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;",
        "connectPair",
        "deviceConnectionProcessListener",
        "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;",
        "monitoringListener",
        "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;",
        "openDevices",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;",
        "setMode",
        "mode",
        "getMode",
        "getLocalAnimations",
        "getLocalAnimations$library",
        "setPowerModeOff",
        "getDeviceStatus",
        "Lcom/lightup/sdk/device/enums/DeviceStatus;",
        "updateAnimations",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "uploadToDevice",
        "data",
        "enableAdminMode",
        "adminKey",
        "disableAdminMode",
        "isAdminModeEnable",
        "getCurrentlyPlaying",
        "getTriggerIndex",
        "getTriggerIndex$library",
        "setCurrentlyPlaying",
        "setCurrentlyPlaying$library",
        "generateCheckSum",
        "setTriggerMax",
        "stopScan",
        "disconnectDevices",
        "onExpectedlyDisconnect",
        "bleDevice",
        "onLostDevice",
        "setWalkingModeConfig",
        "config",
        "Lcom/lightup/sdk/device/model/WalkingModeConfig;",
        "setWalkingInfo",
        "intensity",
        "launchWalkingInfoFeature",
        "PairPingDeviceListener",
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

.field private deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

.field private firstMonitoring:Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;

.field private loadedAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation
.end field

.field private pairDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lightup/sdk/device/devicemanagement/BLEX408;",
            ">;"
        }
    .end annotation
.end field

.field private pairListener:Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final productId:Ljava/lang/String;

.field private secondMonitoring:Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;

.field private triggerIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    const-string p2, "BLEX408Manager"

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->loadedAnimations:Ljava/util/ArrayList;

    const/4 p2, -0x1

    iput p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceMode;->UNKNOWN:Lcom/lightup/sdk/device/enums/DeviceMode;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->pairDevices:Ljava/util/HashMap;

    const-string p2, "0408"

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->productId:Ljava/lang/String;

    new-instance p3, Lcom/lightup/sdk/device/utils/firmware/DualFirmwareManager;

    const-string v0, "_x408"

    invoke-direct {p3, p1, v0}, Lcom/lightup/sdk/device/utils/firmware/DualFirmwareManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    const-string p3, "LUCIE_PREFS_X408"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->prefs:Landroid/content/SharedPreferences;

    sget-object p1, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimation:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->loadedAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getPairDevices$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->pairDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getPairListener$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->pairListener:Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$launchConfig(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->launchConfig(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    return-void
.end method

.method public static final synthetic access$setDeviceMode$p(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/enums/DeviceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    return-void
.end method

.method public static final synthetic access$setTriggerMax(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setTriggerMax()V

    return-void
.end method

.method private final launchConfig(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V
    .locals 7

    sget-object v0, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->c(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->c(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_SET_CONFIG_X408:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0x8

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v0, v3}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v2

    aput-byte v2, v3, v5

    invoke-static {v1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v1, v3}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v3, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$launchConfig$1;

    invoke-direct {v3, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$launchConfig$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void
.end method

.method private final launchWalkingInfoFeature(ILcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    :cond_0
    new-instance p2, Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p0, p1}, Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V

    invoke-virtual {p2}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method private final setTriggerMax()V
    .locals 4

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->loadedAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_SET_MAX_TRIG:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v1

    aput-byte v1, v2, v3

    invoke-static {v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v0, v2}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v2, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setTriggerMax$1;

    invoke-direct {v2, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setTriggerMax$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void
.end method

.method private final startMonitoring(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 2

    new-instance v0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

    invoke-direct {v0, p1, p0, v1}, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->isLeft$library()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->firstMonitoring:Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->secondMonitoring:Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;

    :goto_0
    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return-void
.end method

.method private final uploadToDevice([BLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V
    .locals 5

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;

    new-instance v1, Lcom/lightup/sdk/device/features/process/LightingUpload;

    sget-object v2, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object v2

    const/16 v3, 0x100

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/lightup/sdk/device/features/process/LightingUpload;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[BILcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    new-instance v2, Lcom/lightup/sdk/device/features/process/LightingUpload;

    sget-object v4, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0, v4}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p0

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/lightup/sdk/device/features/process/LightingUpload;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[BILcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/lightup/sdk/device/features/process/lightup/DualDataUpload;-><init>(Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/features/process/LightingUpload;Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    return-void

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/DataUploadError;->TransferError:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-interface {p2, p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    return-void
.end method


# virtual methods
.method public canCreateBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getProductId()[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_X408:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
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
            "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEX408;

    move-result-object p0

    return-object p0
.end method

.method public createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEX408;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x23

    const/16 v0, 0x2b

    invoke-static {p4, p2, v0}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object p2

    array-length p4, p2

    const/4 v0, 0x0

    invoke-static {p4, p2, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEX408;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p4, 0x4

    invoke-virtual {p2, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p4, "X408_"

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/lightup/sdk/device/devicemanagement/BLEX408;-><init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V

    return-object v1
.end method

.method public defineScanFilterPattern()V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->PRODUCT_ID_X408:[B

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setPatternId([B)V

    return-void
.end method

.method public final disableAdminMode()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setIsAdminMode(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final disconnectDevices()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->clearConnections()V

    return-void
.end method

.method public final enableAdminMode(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "be735c4894a94265a83883da909058e8"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setIsAdminMode(Z)V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final generateCheckSum()I
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileX408:Ljava/util/Map;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->productId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getCurrentlyPlaying()Lcom/lightup/sdk/animation/CreatorProject;
    .locals 4

    iget v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->loadedAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {v1}, Lcom/lightup/sdk/animation/CreatorProject;->getTriggerIndex()I

    move-result v2

    iget v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeviceId(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->OFF:Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0

    :cond_0
    iget p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->STANDBY:Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->ON:Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0
.end method

.method public getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getLocalAnimations$library()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimation:Ljava/util/Map;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->productId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object p0
.end method

.method public final getPrefs()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final getPrefs$library()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final getTriggerIndex$library()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    return p0
.end method

.method public final isAdminModeEnable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getIsAdminMode()Z

    move-result p0

    return p0
.end method

.method public final isInBootloader(Lcom/lightup/sdk/device/enums/PairOrientation;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getDevice(Lcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getBleDeviceState()Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;

    move-result-object p0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V
    .locals 0

    .line 42
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->onConnected(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V

    return-void
.end method

.method public onConnected(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getIsModePing()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startMonitoring(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getSoftCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p1

    sget-object p2, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startAnimation(I)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_1
    return-void
.end method

.method public bridge synthetic onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z
    .locals 0

    .line 33
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z

    move-result p0

    return p0
.end method

.method public onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z

    move-result p1

    sget-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BATTERY_LOW:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BUTTON_ACTION:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->CRITICAL_HEAT:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/lightup/sdk/device/messages/MessageBuilder;->a()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p2

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v1, Lcom/lightup/sdk/device/features/process/listener/EmptyActionListener;

    invoke-direct {v1}, Lcom/lightup/sdk/device/features/process/listener/EmptyActionListener;-><init>()V

    invoke-virtual {p0, p2, v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return p1
.end method

.method public bridge synthetic onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V

    return-void
.end method

.method public bridge synthetic onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public bridge synthetic onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final openDevices(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v1

    aput-byte v1, v2, v3

    new-instance v1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v3, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1;

    invoke-direct {v3, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final ping(Lcom/lightup/sdk/device/devicemanagement/BLEX408;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final pingPair(Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;

    invoke-direct {v0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;-><init>(Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setIsModePing(Z)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getLeftDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;->getRightDevice()Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v2

    filled-new-array {v1, v2}, [Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$pingPair$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$pingPair$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V

    invoke-virtual {p0, v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final setCurrentlyPlaying$library(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    return-void
.end method

.method public final setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->deviceMode:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/enums/DeviceMode;->getDeviceMode()I

    move-result p1

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_OPEN_SET_MODE:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v1

    aput-byte v1, v3, v2

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object p1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    const/4 v1, 0x1

    aput-byte p1, v3, v1

    new-instance p1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {p1, v3}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v3, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setMode$1;

    invoke-direct {v3, p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setMode$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/enums/DeviceMode;)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return v1

    :cond_0
    return v2
.end method

.method public final setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lightup/sdk/device/messages/MessageBuilder;->a()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v1

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0, v1, v2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final setWalkingInfo(ILcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->launchWalkingInfoFeature(ILcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/lightup/sdk/device/messages/SpecificMessageBuilder;->buildWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0, p1, v1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final startAnimation(I)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 80
    invoke-static {p1, v1}, Lcom/lightup/sdk/device/messages/MessageBuilder;->c(IZ)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    .line 81
    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    .line 82
    new-instance v2, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startAnimation$1;

    invoke-direct {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startAnimation$1;-><init>()V

    .line 83
    invoke-virtual {p0, p1, v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->loadedAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {v2}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/lightup/sdk/animation/CreatorProject;->getTriggerIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_2

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lightup/sdk/device/messages/MessageBuilder;->c(IZ)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_2
    return-object v1

    :cond_3
    sget-object p0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->DEVICE_REQUIRES_UPDATE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-interface {p2, p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public final startPairScanProcess(Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->stopDeviceConnectionProcess()V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->pairListener:Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;

    invoke-direct {v0, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$startPairScanProcess$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->triggerIndex:I

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/lightup/sdk/device/messages/MessageBuilder;->c(IZ)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0, v0, v1, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final stopScan()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->killScanTimeout()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    return-void
.end method

.method public final twin(Ljava/util/List;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4
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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setIsModePing(Z)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->isLeft$library()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->isLeft$library()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    goto :goto_3

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :goto_3
    filled-new-array {v2, p1}, [Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;

    invoke-direct {v0, p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$twin$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->connectPair(Ljava/util/List;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final updateAnimations(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$1;

    invoke-direct {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    sget-object v1, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileX408:Ljava/util/Map;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->productId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, [B

    sget-object v2, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimation:Ljava/util/Map;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->productId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->loadedAnimations:Ljava/util/ArrayList;

    new-instance v2, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;

    invoke-direct {v2, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V

    invoke-direct {p0, v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->uploadToDevice([BLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final updateDevices(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2

    const/16 v0, 0x100

    const/16 v1, 0x2710

    invoke-super {p0, p1, v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->updateDevices(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;II)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
