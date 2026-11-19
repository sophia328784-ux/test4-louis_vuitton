.class public abstract Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;
.super Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager<",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\"\u001a\u00020\u001bH\u0016J\u0008\u0010#\u001a\u00020\u001bH\u0016J\u0008\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020%H\u0016J,\u0010)\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000b2\u0008\u0010+\u001a\u0004\u0018\u00010\u000b2\u0008\u0010,\u001a\u0004\u0018\u00010\rH\u0014J(\u0010-\u001a\u00020\u00022\u0006\u0010(\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\rH$J\u0012\u0010.\u001a\u00020\u001b2\u0008\u0010/\u001a\u0004\u0018\u00010\rH\u0014J\"\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00022\u0008\u0010(\u001a\u0004\u0018\u00010%2\u0006\u00103\u001a\u00020\u001bH\u0014J\u001a\u00104\u001a\u0002052\u0008\u00102\u001a\u0004\u0018\u00010\u00022\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u000bH\u0016J\u0008\u0010:\u001a\u00020\u001bH\u0016J\u0008\u0010;\u001a\u00020\u001bH\u0016J\u0010\u0010<\u001a\u0002052\u0006\u0010=\u001a\u00020>H\u0016J\u0018\u0010?\u001a\u0002052\u0006\u0010@\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u0002052\u0006\u0010A\u001a\u00020BH\u0016J\u000e\u0010D\u001a\u0008\u0012\u0004\u0012\u00020F0EH\u0016J\u0010\u0010G\u001a\u0002052\u0006\u0010A\u001a\u00020HH\u0016J\n\u0010I\u001a\u0004\u0018\u00010FH\u0016J\u001a\u0010J\u001a\u0002012\u0008\u0010K\u001a\u0004\u0018\u00010\r2\u0006\u0010A\u001a\u00020HH\u0002J\u0008\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u001b2\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010Q\u001a\u00020\u001b2\u0006\u0010O\u001a\u00020PH\u0016J\u0008\u0010R\u001a\u00020PH\u0016J\u0012\u0010S\u001a\u0002052\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0008\u0010T\u001a\u00020UH\u0016J\u0010\u0010V\u001a\u0002012\u0006\u0010W\u001a\u00020MH\u0016J\u0006\u0010X\u001a\u000201J\u0006\u0010Y\u001a\u000201J\u0010\u0010Z\u001a\u0002012\u0006\u0010[\u001a\u00020\u0002H\u0014J\u0012\u0010\\\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010]\u001a\u0002052\u0006\u0010^\u001a\u00020_2\u0006\u0010A\u001a\u00020BH\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006`"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        "Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
        "context",
        "Landroid/content/Context;",
        "permissionsManager",
        "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;",
        "internetTimeReader",
        "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;",
        "firmwareTag",
        "",
        "prodId",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;Ljava/lang/String;[B)V",
        "monitoring",
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;",
        "getMonitoring",
        "()Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;",
        "setMonitoring",
        "(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "getPrefs$library",
        "()Landroid/content/SharedPreferences;",
        "isModePing",
        "",
        "()Z",
        "setModePing",
        "(Z)V",
        "productId",
        "getProductId",
        "()Ljava/lang/String;",
        "isConnected",
        "isInBootloader",
        "getDeviceId",
        "Lcom/lightup/sdk/device/model/device/DeviceId;",
        "getFirmwareManager",
        "Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;",
        "deviceId",
        "canCreateBLEDevice",
        "name",
        "mac",
        "scanRecord",
        "createBLEDevice",
        "isOpenPairing",
        "pairingId",
        "onConnected",
        "",
        "device",
        "reconnection",
        "ping",
        "Lcom/lightup/sdk/device/enums/CallStatus;",
        "pingDeviceListener",
        "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
        "enableAdminMode",
        "adminKey",
        "disableAdminMode",
        "isAdminModeEnable",
        "openDevice",
        "openDeviceListener",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;",
        "startAnimation",
        "animationId",
        "listener",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "stopAnimation",
        "getLocalAnimations",
        "",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        "updateAnimations",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "getCurrentlyPlayingAnimation",
        "uploadToDevice",
        "data",
        "generateCheckSum",
        "",
        "isModeValid",
        "mode",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        "setMode",
        "getMode",
        "setPowerModeOff",
        "getDeviceStatus",
        "Lcom/lightup/sdk/device/enums/DeviceStatus;",
        "setCurrentlyPlaying",
        "triggerId",
        "stopScan",
        "disconnectDevices",
        "onExpectedlyDisconnect",
        "bleDevice",
        "onLostDevice",
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
.field private isModePing:Z

.field private monitoring:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private final prodId:[B

.field private final productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;-><init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V

    iput-object p5, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->prodId:[B

    const-string p2, "LUCIE_PREFS"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->prefs:Landroid/content/SharedPreferences;

    new-instance p2, Lcom/lightup/sdk/device/utils/firmware/DualFirmwareManager;

    invoke-direct {p2, p1, p4}, Lcom/lightup/sdk/device/utils/firmware/DualFirmwareManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    array-length p1, p5

    invoke-static {p1, p5, p3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    return-void
.end method

.method private final uploadToDevice([BLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/lightup/sdk/device/features/process/LightingUpload;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/16 v1, 0x100

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/lightup/sdk/device/features/process/LightingUpload;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[BILcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

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

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getProductId()[B

    move-result-object p1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->prodId:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public abstract createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLELightup;
.end method

.method public disableAdminMode()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->setIsAdminMode(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final disconnectDevices()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->clearConnections()V

    return-void
.end method

.method public enableAdminMode(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "42633eab2bb146e19031e6b65a47c9b7"

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

.method public generateCheckSum()I
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    const-string v1, "0050"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileKeepAll:Ljava/util/Map;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_0
    const-string v1, "0408"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileX408:Ljava/util/Map;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileTrunk:Ljava/util/Map;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_0
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

.method public getCurrentlyPlayingAnimation()Lcom/lightup/sdk/animation/CreatorProject;
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->getCurrentlyPlaying$library()Lcom/lightup/sdk/animation/CreatorProject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getDeviceStatus()Lcom/lightup/sdk/device/enums/DeviceStatus;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-nez p0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->OFF:Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0

    :cond_0
    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->getCurrentlyPlaying$library()Lcom/lightup/sdk/animation/CreatorProject;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->STANDBY:Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceStatus;->ON:Lcom/lightup/sdk/device/enums/DeviceStatus;

    return-object p0
.end method

.method public getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getLocalAnimations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->getLoadedAnimations$library()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    sget-object v1, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimation:Ljava/util/Map;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->setLoadedAnimations$library(Ljava/util/ArrayList;)V

    :cond_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->getLoadedAnimations$library()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMode()Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMode()Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/DeviceMode;->UNKNOWN:Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object p0
.end method

.method public final getMonitoring()Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->monitoring:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;

    return-object p0
.end method

.method public final getPrefs$library()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public isAdminModeEnable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getIsAdminMode()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    invoke-super {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->isConnected()Z

    move-result p0

    return p0
.end method

.method public isInBootloader()Z
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getBleDeviceState()Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;

    move-result-object p0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isModePing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isModePing:Z

    return p0
.end method

.method public isModeValid(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/lightup/sdk/device/SpecificProperties;->TRUNK_AVAILABLE_MODE:[Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOpenPairing([B)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isOpenPairing([B)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/properties/Properties;->e:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V
    .locals 0

    .line 34
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->onConnected(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V

    return-void
.end method

.method public onConnected(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    iget-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isModePing:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    iget-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->deviceMonitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/DeviceMonitoringListener;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;

    invoke-direct {p1, p2, p0, p3}, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;)V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->monitoring:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_0
    return-void
.end method

.method public bridge synthetic onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method

.method public bridge synthetic onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void
.end method

.method public onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V
    .locals 0

    .line 6
    return-void
.end method

.method public openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v3

    aput-byte v3, v4, v5

    new-instance v3, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v3, v4}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v4, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v5, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$openDevice$feature$1;

    invoke-direct {v5, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$openDevice$feature$1;-><init>(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getFeatureStore()Lcom/lightup/sdk/device/features/FeatureStore;

    move-result-object p0

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->getUniqueId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/FeatureStore;->a(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public ping(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setCurrentlyPlaying(I)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->setCurrentlyPlaying$library(I)V

    return-void
.end method

.method public setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isModeValid(Lcom/lightup/sdk/device/enums/DeviceMode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->name:Ljava/lang/String;

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v2, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/enums/DeviceMode;->getDeviceMode()I

    move-result v3

    sget-object v4, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_OPEN_SET_MODE:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v4}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v4}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v4

    aput-byte v4, v5, v1

    invoke-static {v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object v1

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    const/4 v3, 0x1

    aput-byte v1, v5, v3

    new-instance v1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v1, v5}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v4, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v5, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;

    invoke-direct {v5, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$setMode$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;Lcom/lightup/sdk/device/enums/DeviceMode;)V

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return v3

    :cond_1
    return v1
.end method

.method public final setModePing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->isModePing:Z

    return-void
.end method

.method public final setMonitoring(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring<",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->monitoring:Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;

    return-void
.end method

.method public setPowerModeOff(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-static {}, Lcom/lightup/sdk/device/messages/MessageBuilder;->a()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v2

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public setWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/lightup/sdk/device/messages/SpecificMessageBuilder;->buildWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0, p1, v1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->launchFeature(Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->getLoadedAnimations$library()Ljava/util/ArrayList;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->setCurrentlyPlaying$library(I)V

    new-instance v0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/lightup/sdk/device/messages/MessageBuilder;->c(IZ)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_2
    return-object v1

    :cond_3
    sget-object p0, Lcom/lightup/sdk/device/features/process/errors/DeviceError;->DEVICE_REQUIRES_UPDATE:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-interface {p2, p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->setCurrentlyPlaying$library(I)V

    new-instance v1, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lcom/lightup/sdk/device/messages/MessageBuilder;->c(IZ)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v2

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final stopScan()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->killScanTimeout()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    return-void
.end method

.method public updateAnimations(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$updateAnimations$1;

    invoke-direct {v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager$updateAnimations$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    const-string v1, "0050"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileKeepAll:Ljava/util/Map;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const-string v1, "0408"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileX408:Ljava/util/Map;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimationFileTrunk:Ljava/util/Map;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;->currentBLEDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    sget-object v2, Lcom/lightup/sdk/device/SpecificProperties;->outOfProdAnimation:Ljava/util/Map;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->productId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->setLoadedAnimations$library(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->uploadToDevice([BLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method
