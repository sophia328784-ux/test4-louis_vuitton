.class public abstract Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/ScanListener;
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;
.implements Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        ">",
        "Landroid/bluetooth/BluetoothGattCallback;",
        "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/ScanListener;",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener<",
        "TD;>;",
        "Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener<",
        "TD;>;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DEBUG_LOCKING:Z = false

.field protected static final TAG:Ljava/lang/String; = "BLEDevicesManager"


# instance fields
.field protected bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bluetoothAvailable:Z

.field final connectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TD;>;"
        }
    .end annotation
.end field

.field private final connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private connectionPoolSize:I

.field private consumer:Ljava/lang/Thread;

.field private final consumerLock:Ljava/util/concurrent/locks/Lock;

.field consumingRate:I

.field protected final context:Landroid/content/Context;

.field protected deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

.field private deviceDiscoveryListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected deviceScanProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

.field private inactivityStreak:I

.field private isAdminMode:Z

.field private isModePing:Z

.field final knownBLEDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TD;>;"
        }
    .end annotation
.end field

.field private final messageNotification:Ljava/util/concurrent/locks/Condition;

.field final overclockConsumingRateLock:Ljava/lang/Object;

.field overclockConsumingRateRequests:I

.field private final pairingId:[B

.field private patternId:[B

.field protected permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

.field private final remainder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "[B>;"
        }
    .end annotation
.end field

.field protected scanTimeoutThread:Ljava/lang/Thread;

.field protected scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/ble/exceptions/ScannerException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bluetoothAvailable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->patternId:[B

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    const/16 v1, 0xa

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionPoolSize:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->remainder:Ljava/util/Map;

    const/16 v1, 0x14

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumingRate:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumerLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->messageNotification:Ljava/util/concurrent/locks/Condition;

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->inactivityStreak:I

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isAdminMode:Z

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isModePing:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->defineScanFilterPattern()V

    new-instance v2, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->patternId:[B

    invoke-direct {v2, p2, v3}, Lcom/lightup/sdk/device/ble/scanner/MBLEScanner;-><init>(Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;[B)V

    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    iget-object p2, p2, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->a:Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;

    invoke-virtual {p2, p0}, Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityReceiver;->registerConnectionForBluetoothAvailabilityChange(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "android_id"

    invoke-static {p2, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/lightup/sdk/device/properties/Properties;->SMARTPHONE_ID:Ljava/lang/String;

    const-string p2, "LUCIE_PREFS"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    sget-object p2, Lcom/lightup/sdk/device/properties/Properties;->SMARTPHONE_ID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    sget-object v2, Lcom/lightup/sdk/device/properties/Properties;->SMARTPHONE_ID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [B

    aput-byte p2, v2, v1

    aput-byte p1, v2, v0

    sget-object p1, Lcom/lightup/sdk/device/properties/Properties;->d:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/properties/Properties;->e:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/properties/Properties;->f:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/properties/Properties;->g:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pairingId:[B

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/lightup/sdk/device/properties/Properties;->c:[B

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pairingId:[B

    :goto_1
    invoke-virtual {p3, p0}, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->setInternetTimeReaderListener(Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startDataTransfer()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bluetoothAvailable:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumer:Ljava/lang/Thread;

    return-object p0
.end method

.method private bindBLE(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;",
            ")V"
        }
    .end annotation

    const-string v0, "bind"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->registrationFlowLock(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bind(Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPermissionsManager()Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p2, v1, v2, p0, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->registrationFlowUnlock(Ljava/lang/String;)V

    throw p1

    :catch_0
    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumerLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private connectionFlowLock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method private connectionFlowUnlock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->inactivityStreak:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->messageNotification:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static bridge synthetic f(ILcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 0

    iput p0, p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->inactivityStreak:I

    return-void
.end method

.method private static fillPacket([B[BI)[B
    .locals 3

    array-length v0, p0

    sub-int/2addr v0, p2

    array-length v1, p1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    invoke-static {p1, v2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getRemainder([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, v2, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isModePing:Z

    return-void
.end method

.method private getMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)[B
    .locals 0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->pollMessage()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    invoke-static {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->e([B)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;->getProcessedData(Lcom/lightup/sdk/device/model/device/DeviceMessage;)[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRemainder([BI)[B
    .locals 3

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 1

    const-string v0, "connectionHardReset prior to connecting"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowLock(Ljava/lang/String;)V

    return-void
.end method

.method private handleNextChunk([BI[BLcom/lightup/sdk/device/model/device/DeviceId;)I
    .locals 1

    array-length v0, p1

    invoke-static {p3, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->fillPacket([B[BI)[B

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p3, p1

    sub-int/2addr v0, p3

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->remainder:Ljava/util/Map;

    invoke-interface {p0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public static bridge synthetic i(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->sendMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startDataTransfer()V

    return-void
.end method

.method private registrationFlowLock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method private registrationFlowUnlock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private sendMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    const/16 v1, 0x13

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->remainder:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/4 v6, -0x1

    aput-byte v6, v2, v4

    invoke-direct {p0, v3, v5, v2, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->handleNextChunk([BI[BLcom/lightup/sdk/device/model/device/DeviceId;)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->sendMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[B)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object v7

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    add-int/lit16 v7, v7, -0x81

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    :cond_1
    move v7, v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move v3, v4

    move v7, v5

    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    invoke-direct {p0, v6, v3, v2, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->handleNextChunk([BI[BLcom/lightup/sdk/device/model/device/DeviceId;)I

    move-result v3

    move v7, v4

    if-ne v3, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)[B

    move-result-object v6

    if-nez v6, :cond_3

    :goto_1
    if-nez v7, :cond_5

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->sendMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[B)Z

    move-result p0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    return v4
.end method

.method private sendMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[B)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_0
    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->sendPacket([B)Z

    const/4 p0, 0x1

    return p0
.end method

.method private startDataTransfer()V
    .locals 1

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;

    invoke-direct {v0, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$5;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public additionalCheckOnDiscoveredDevice([B)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract canCreateBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method public cancelDiscovery()Z
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearConnections()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unbind()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized connectDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bindBLE(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionHardReset(Z)V

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;

    invoke-direct {v0, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$7;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, v0, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public abstract createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)TD;"
        }
    .end annotation
.end method

.method public abstract defineScanFilterPattern()V
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumer:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumer:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public disconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unbind()V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public discover(ILcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    :cond_0
    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceDiscoveryListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    invoke-virtual {p2, p1, p0}, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->a(ILcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public findKnownDeviceByDeviceId(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            ")TD;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoardVersion(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/device/DeviceId;->getHardwareVersion()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HW "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HW --"

    return-object p0
.end method

.method public getCallStatus(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->NO_DEVICE_CONNECTED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public abstract getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener<",
            "TD;>;"
        }
    .end annotation
.end method

.method public getDeviceConnectionProcessListener()Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceConnectionProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    return-object p0
.end method

.method public abstract getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;
.end method

.method public getFirmwareVersion(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "FW "

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-string p0, "FW --"

    return-object p0
.end method

.method public getIsAdminMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isAdminMode:Z

    return p0
.end method

.method public getIsModePing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isModePing:Z

    return p0
.end method

.method public getPairingId()[B
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->pairingId:[B

    return-object p0
.end method

.method public getPermissionsManager()Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->permissionsManager:Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    return-object p0
.end method

.method public getSerialNumber(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SN "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SN --"

    return-object p0
.end method

.method public handleDeviceDiscovery(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->createBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceDiscoveryListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;->onDiscoveredDevice(Lcom/lightup/sdk/device/model/device/Device;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public isConnectionPoolFull(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionPoolSize:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenPairing([B)Z
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPairingId()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/properties/Properties;->d:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isReady(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p0

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isScanRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanner:Lcom/lightup/sdk/device/ble/scanner/BLEScanner;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/ble/scanner/BLEScanner;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized killScanTimeout()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanTimeoutThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->scanTimeoutThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public launchPingFeature(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PING:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v1

    aput-byte v1, v2, v3

    move-object v1, v2

    new-instance v2, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v2, v1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v4, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$2;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/features/process/listener/ActionListener;Z)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return-void
.end method

.method public notifyConsumer()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$6;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p0

    invoke-static {}, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleDeviceCharacteristicChanged([BI)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    return-void
.end method

.method public abstract onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/model/device/DeviceId;",
            "Z)V"
        }
    .end annotation
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_8

    const-string v1, "onConnectionStateChange"

    invoke-direct {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowLock(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killHardResetRetryThread()V

    const/16 p3, 0x85

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    const-string p1, "onConnectionStateChange status == 133"

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p2

    sget-object p3, Lcom/lightup/sdk/device/enums/DeviceState;->CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p2, p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " onConnectionStateChange status != 133"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_7

    const/16 p3, 0x101

    if-ne p2, p3, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {v0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    :cond_3
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p2

    sget-object p3, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p2, p3, :cond_4

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->close()V

    const-string p1, "onConnectionStateChange state == State.DISCONNECTED"

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p2

    sget-object p3, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED_BROKEN:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p2, p3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " onConnectionStateChange state == State.DISCONNECTED_BROKEN"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object p2

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    invoke-virtual {p0, v0, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " onConnectionStateChange state == State.HARD_RESET_AWAITING_RECONNECTION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->close()V

    invoke-virtual {v0, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    invoke-virtual {p0, v0, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " onConnectionStateChange prior to onUnexpectedlyDisconnected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unexpectedDisconnection()V

    return-void

    :cond_7
    invoke-direct {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {p0, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/messages/InternalPowerOfReason;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->UPDATING:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    if-ne p2, v0, :cond_0

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;

    invoke-direct {v0, p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$3;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onReconnecting()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    invoke-virtual {p2}, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->a()Lcom/lightup/sdk/device/enums/PowerOffReason;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onDeviceShutDown(Lcom/lightup/sdk/device/enums/PowerOffReason;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDeviceRegistered(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setDeviceRegistrationHangingDuration(I)V

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnectionPoolFull(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceId;Z)V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unbind()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionPoolSize:I

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    :cond_3
    return-void
.end method

.method public onDeviceRegistering(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onConnecting()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onReconnecting()V

    return-void
.end method

.method public onDeviceRegistrationHanging(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)Z"
        }
    .end annotation

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onLost()V

    const/4 p0, 0x1

    return p0
.end method

.method public onDeviceRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnectionPoolFull(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getDeviceConnectionProcessHandler(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;->onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unbind()V

    :cond_1
    return-void
.end method

.method public onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceScanProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;->onDeviceFound(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDiscoveredDevice(Lcom/lightup/sdk/device/model/device/Device;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->onDiscoveredDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    return-void
.end method

.method public onDiscoveredDevice(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 10

    array-length v0, p3

    const/16 v1, 0x3e

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x9

    const/16 v1, 0x8

    invoke-static {p3, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    sub-int/2addr v0, v2

    if-ltz v0, :cond_7

    const/4 v4, 0x4

    if-lt v0, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lcom/lightup/sdk/device/properties/Properties;->j:[I

    aget v4, v4, v0

    sget-object v5, Lcom/lightup/sdk/device/properties/Properties;->i:[I

    aget v5, v5, v0

    sget-object v6, Lcom/lightup/sdk/device/properties/Properties;->k:[I

    aget v6, v6, v0

    sget-object v7, Lcom/lightup/sdk/device/properties/Properties;->l:[I

    aget v7, v7, v0

    sget-object v8, Lcom/lightup/sdk/device/properties/Properties;->m:[I

    aget v0, v8, v0

    add-int/lit8 v8, v4, 0x2

    invoke-static {p3, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int/lit8 v8, v5, 0x1

    invoke-static {p3, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    aget-byte v8, v4, v3

    aget-byte v4, v4, v2

    aget-byte v5, v5, v3

    const/4 v9, 0x3

    new-array v9, v9, [B

    aput-byte v8, v9, v3

    aput-byte v4, v9, v2

    const/4 v4, 0x2

    aput-byte v5, v9, v4

    const/4 v4, 0x5

    invoke-static {p3, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    add-int/lit8 v1, v6, 0x2

    invoke-static {p3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    add-int/lit8 v4, v7, 0x8

    invoke-static {p3, v7, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    invoke-static {p3, v0, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :try_start_0
    new-instance v5, Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-direct {v5, v4, v9, v0, v1}, Lcom/lightup/sdk/device/model/device/DeviceId;-><init>([B[B[B[B)V
    :try_end_0
    .catch Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->canCreateBLEDevice(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->additionalCheckOnDiscoveredDevice([B)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/lightup/sdk/device/model/device/DeviceId;->getHardwareVersion()B

    move-result v4

    iget-object v6, v0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0, v4}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->a(B)V

    :cond_4
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isAdminMode:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isOpenPairing([B)Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->handleDeviceDiscovery(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;[B)V

    return v2

    :cond_6
    invoke-virtual {v5}, Lcom/lightup/sdk/device/model/device/DeviceId;->toString()Ljava/lang/String;

    :catch_0
    :cond_7
    :goto_0
    return v2
.end method

.method public onDiscoveryEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceScanProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;->onScanEnd(Z)V

    :cond_0
    return-void
.end method

.method public abstract onExpectedlyDisconnect(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method public onInternetTimeAvailable()V
    .locals 0

    return-void
.end method

.method public abstract onLostDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method public onNewBluetoothState(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bluetoothAvailable:Z

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bluetoothAvailable:Z

    :cond_1
    return-void
.end method

.method public onScanEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceDiscoveryListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;->onDiscoveryEnd(Z)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const-string v1, "onServicesDiscovered"

    invoke-direct {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowLock(Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    const-string v3, "onConnectionStateChange prior to connectionHardReset"

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getState()Lcom/lightup/sdk/device/enums/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED_BROKEN:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleServicesDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->ERROR:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killHardResetRetryThread()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionHardReset(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->startHardResetRetryThread()V

    :goto_0
    invoke-direct {p0, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    invoke-direct {p0, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public pingDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isModePing:Z

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;

    invoke-direct {v0, p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V

    invoke-direct {p0, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bindBLE(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;)V

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method

.method public requestBleTransmissionRateDiminution()V
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    if-ne v1, v2, :cond_0

    const/16 v1, 0x28

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumingRate:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestBleTransmissionRateOverclock()V
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/lightup/sdk/device/properties/Properties;->a:I

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumingRate:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestBleTransmissionRateReinstatement()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->overclockConsumingRateRequests:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->consumingRate:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->clearConnections()V

    return-void
.end method

.method public setConnectionPoolSize(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->connectionPoolSize:I

    return-void
.end method

.method public setIsAdminMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isAdminMode:Z

    return-void
.end method

.method public setIsModePing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isModePing:Z

    return-void
.end method

.method public setPatternId([B)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->patternId:[B

    return-void
.end method

.method public declared-synchronized startScanProcess()Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1

    monitor-enter p0

    const/16 v0, 0x7530

    .line 20
    :try_start_0
    invoke-virtual {p0, v0, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->discover(ILcom/lightup/sdk/device/ble/scanner/listeners/DeviceDiscoveryListener;)V

    .line 21
    sget-object v0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startScanProcess(Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener<",
            "TD;>;)",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->reset()V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->knownBLEDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->deviceScanProcessListener:Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->startScanProcess()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized stopDeviceConnectionProcess()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->killScanTimeout()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->cancelDiscovery()Z

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateDevice(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;",
            ")",
            "Lcom/lightup/sdk/device/enums/CallStatus;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->isConnected(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->PROCESS_ALREADY_RUNNING:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;

    invoke-direct {v1, p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager$4;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V

    invoke-virtual {p1, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->update(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->bleDeviceUpdateOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->ERROR:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    return-object p0
.end method
