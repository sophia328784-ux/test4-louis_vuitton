.class public abstract Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/model/device/Device;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;,
        Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DEBUG_LOCKING:Z = false

.field private static final FAILED_PACKET_STREAK_THRESHOLD:I = 0x50

.field private static final HARD_RESET_RETRY_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_CHARAC_WRITE_RETRY:I = 0xa

.field private static final READ_CHARAC_NOT_FOUND_MSG:Ljava/lang/String; = "Could not find mandatory read characteristic on the device."

.field private static final TAG:Ljava/lang/String; = "BLEDevice"

.field private static final WRITE_CHARAC_NOT_FOUND_MSG:Ljava/lang/String; = "Could not find mandatory write characteristic on the device."


# instance fields
.field private batteryLevel:I

.field private bleDeviceFirmwareChecksums:Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;

.field protected bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final broker:Lcom/lightup/sdk/device/devicemanagement/Broker;

.field private characWriteRetry:I

.field private final connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private currentChunkedMessage:[B

.field private currentMessagePointer:I

.field private volatile descriptorWritten:Z

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private final deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

.field protected deviceRegistrationHangingDuration:I

.field private deviceRegistrationHangingThread:Ljava/lang/Thread;

.field private deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

.field private final deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final deviceType:Lcom/lightup/sdk/device/model/device/DeviceType;

.field private failedPacketStreak:I

.field private final featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private hardResetRetryThread:Ljava/lang/Thread;

.field private hasRegistered:Z

.field private hasShutdown:Z

.field private final idPrinter:Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;

.field private isHanging:Z

.field private isPlugged:Z

.field private isUpdating:Z

.field private final mac:Ljava/lang/String;

.field private mode:Lcom/lightup/sdk/device/enums/DeviceMode;

.field protected name:Ljava/lang/String;

.field private packetId:B

.field private previousChunkPacketId:Ljava/lang/Byte;

.field private readCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected requiresUpdate:Z

.field private state:Lcom/lightup/sdk/device/enums/DeviceState;

.field private unlockRetryThread:Ljava/lang/Thread;

.field protected updatePossible:Z

.field private writeCharac:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/model/device/DeviceId;Ljava/lang/String;Ljava/lang/String;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/model/device/DeviceType;)V
    .locals 2
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/Broker;

    invoke-direct {v0}, Lcom/lightup/sdk/device/devicemanagement/Broker;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->broker:Lcom/lightup/sdk/device/devicemanagement/Broker;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationHangingDuration:I

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->NOT_CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isPlugged:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->batteryLevel:I

    new-instance v1, Lcom/lightup/sdk/device/features/FeatureStore;

    invoke-direct {v1}, Lcom/lightup/sdk/device/features/FeatureStore;-><init>()V

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->descriptorWritten:Z

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->characWriteRetry:I

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->failedPacketStreak:I

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mac:Ljava/lang/String;

    iput-object p4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p5, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceType:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceMode;->STANDARD:Lcom/lightup/sdk/device/enums/DeviceMode;

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mode:Lcom/lightup/sdk/device/enums/DeviceMode;

    iput-byte v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->packetId:B

    new-instance p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$1;

    invoke-direct {p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$1;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->idPrinter:Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;

    invoke-virtual {p4}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPermissionsManager()Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    move-result-object p1

    iget-object p1, p1, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private BLEOK()Z
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPermissionsManager()Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    move-result-object p0

    iget-object p0, p0, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic a(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->characWriteRetry:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->descriptorWritten:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    return p0
.end method

.method private connectionFlowLock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method private connectionFlowUnlock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)Lcom/lightup/sdk/device/enums/DeviceState;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->characWriteRetry:I

    return-void
.end method

.method private extractBatteryInfo(B)V
    .locals 1

    and-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->batteryLevel:I

    shr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isPlugged:Z

    return-void
.end method

.method private extractRegisterInfo([B)Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;-><init>([B[B)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDeviceFirmwareChecksums:Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;

    aget-byte p1, p1, v3

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->extractBatteryInfo(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDeviceFirmwareChecksums:Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;

    invoke-virtual {p1, v0, p0}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->g(Lcom/lightup/sdk/device/model/device/DeviceId;Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;)Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    move-result-object p0
    :try_end_1
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 1

    const-string v0, "startHardResetRetryThread"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowLock(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method private handleDeviceHangingState()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    iget-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasRegistered:Z

    invoke-interface {v0, p0, v1}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceRegistrationHanging(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unbind()V

    :cond_0
    return-void
.end method

.method private handleNewCharacteristic([BBB[BI)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentChunkedMessage:[B

    const/4 v0, 0x1

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentMessagePointer:I

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceType:Lcom/lightup/sdk/device/model/device/DeviceType;

    invoke-static {v1, p3}, Lcom/lightup/sdk/device/messages/MessageInfo;->a(Lcom/lightup/sdk/device/model/device/DeviceType;B)Lcom/lightup/sdk/device/messages/MessageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v2

    const/16 v3, 0x13

    if-le v2, v3, :cond_2

    array-length p1, p1

    const/16 p5, 0x14

    if-eq p1, p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentChunkedMessage:[B

    const/4 p5, 0x0

    aput-byte p3, p1, p5

    invoke-direct {p0, p2, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->newChunk(B[B)V

    return-void

    :cond_2
    array-length p2, p1

    sub-int/2addr p2, v0

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result p3

    if-eq p2, p3, :cond_3

    :goto_0
    return-void

    :cond_3
    array-length p2, p1

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->onNewMessage([BI)V

    return-void
.end method

.method private handleNewChunk([BB[BI)V
    .locals 2

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentChunkedMessage:[B

    array-length p1, p1

    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentMessagePointer:I

    sub-int/2addr p1, v1

    const/16 v1, 0x12

    if-le p1, v1, :cond_2

    array-length p1, p3

    if-eq p1, v1, :cond_1

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->newChunk(B[B)V

    return-void

    :cond_2
    array-length v1, p3

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->newChunk(B[B)V

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentChunkedMessage:[B

    invoke-direct {p0, p1, p4}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->onNewMessage([BI)V

    :goto_0
    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    return-void

    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    return-void
.end method

.method public static bridge synthetic i(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleDeviceHangingState()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->onHardReset()V

    return-void
.end method

.method private killDeviceRegistrationHangingThread()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationHangingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationHangingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private killUnlockRetryThread()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unlockRetryThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unlockRetryThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private newCharacteristic([BI)V
    .locals 8

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-byte v4, p1, v0

    const/4 v0, 0x1

    aget-byte v5, p1, v0

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    invoke-direct {p0, p1, v4, v6, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleNewChunk([BB[BI)V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleNewCharacteristic([BBB[BI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private newChunk(B[B)V
    .locals 4

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentChunkedMessage:[B

    iget v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentMessagePointer:I

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentMessagePointer:I

    array-length p2, p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentMessagePointer:I

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    return-void
.end method

.method private notifyFeaturesOfNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 6

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    iget-object v0, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lightup/sdk/device/features/Feature;

    iget-object v4, p0, Lcom/lightup/sdk/device/features/FeatureStore;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lightup/sdk/device/features/FeatureStore;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lex;

    invoke-direct {v5, v3, p1, p2, p3}, Lex;-><init>(Lcom/lightup/sdk/device/features/Feature;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyFeaturesOfStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;)V
    .locals 8

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getBleDeviceState()Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    iget-object v1, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lightup/sdk/device/features/Feature;

    iget-object v5, p0, Lcom/lightup/sdk/device/features/FeatureStore;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lightup/sdk/device/features/FeatureStore;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lb5;

    const/16 v7, 0xe

    invoke-direct {v6, v4, p1, v0, v7}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onBLEReady()V
    .locals 2

    const-string v0, "onBLEReady"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasShutdown:Z

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->startUnlockRetryThread()V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->sendUnlock()V

    return-void
.end method

.method private onHardReset()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unexpectedDisconnection()V

    return-void
.end method

.method private onNewMessage([BI)V
    .locals 8

    const-string v0, "onNewMessage"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killUnlockRetryThread()V

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killDeviceRegistrationHangingThread()V

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p2, v3, :cond_1

    iput-boolean v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    iput-boolean v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->updatePossible:Z

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasRegistered:Z

    invoke-virtual {p0, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    iget-boolean p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    invoke-interface {p2, p0, v4}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_SYNC_REQ:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    invoke-static {p1, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_SYNC_INFO:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v3

    aput-byte v3, v7, v1

    array-length v3, v0

    invoke-static {v0, v1, v7, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object p2

    invoke-static {p2, v1, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    const/16 v0, 0x9

    const/16 v1, 0xd

    invoke-direct {p2, v7, v0, v1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([BII)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    goto/16 :goto_2

    :cond_3
    sget-object p2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_REGISTER:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p2

    if-ne v2, p2, :cond_8

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killDeviceRegistrationHangingThread()V

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z

    iget-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p2, v3, :cond_7

    sget-object v5, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p2, v5, :cond_7

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->extractRegisterInfo([B)Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    move-result-object p2

    sget-object v6, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->NONE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    if-ne p2, v6, :cond_4

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->updatePossible:Z

    iget-boolean p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasRegistered:Z

    xor-int/2addr p2, v4

    iput-boolean v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasRegistered:Z

    invoke-virtual {p0, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_REGISTER_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v3}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v3

    new-array v5, v4, [B

    aput-byte v3, v5, v1

    invoke-direct {v0, v5}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    invoke-interface {v0, p0, p2}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceRegistered(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    goto/16 :goto_2

    :cond_4
    iput-boolean v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    sget-object v3, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    if-ne p2, v3, :cond_5

    move v6, v4

    goto :goto_0

    :cond_5
    move v6, v1

    :goto_0
    iput-boolean v6, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->updatePossible:Z

    invoke-virtual {p0, v5}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    sget-object v5, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_REGISTER_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v5}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v5

    new-array v6, v4, [B

    aput-byte v5, v6, v1

    invoke-direct {v0, v6}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    if-ne p2, v3, :cond_6

    move v1, v4

    :cond_6
    invoke-interface {v0, p0, v1}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    new-instance p2, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_REGISTER_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    new-array v3, v4, [B

    aput-byte v0, v3, v1

    invoke-direct {p2, v3}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    goto :goto_2

    :cond_8
    sget-object p2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_POWER_OFF:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p2

    if-ne v2, p2, :cond_f

    aget-byte p2, p1, v4

    if-eqz p2, :cond_e

    if-eq p2, v4, :cond_d

    const/4 v3, 0x2

    if-eq p2, v3, :cond_c

    const/4 v3, 0x3

    if-eq p2, v3, :cond_b

    if-eq p2, v5, :cond_a

    if-eq p2, v6, :cond_9

    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BATTERY_LOW:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    const/4 p2, 0x0

    goto :goto_1

    :cond_9
    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->SMARTPHONE:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    goto :goto_1

    :cond_a
    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->UPDATING:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    goto :goto_1

    :cond_b
    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->LOCK:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    goto :goto_1

    :cond_c
    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->CRITICAL_HEAT:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    goto :goto_1

    :cond_d
    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BUTTON_ACTION:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    goto :goto_1

    :cond_e
    sget-object p2, Lcom/lightup/sdk/device/messages/InternalPowerOfReason;->BATTERY_LOW:Lcom/lightup/sdk/device/messages/InternalPowerOfReason;

    :goto_1
    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killDeviceRegistrationHangingThread()V

    iput-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z

    iput-boolean v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasShutdown:Z

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    invoke-interface {v0, p0, p2}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceInitiatedShutdown(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/messages/InternalPowerOfReason;)Z

    move-result p2

    if-eqz p2, :cond_11

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    goto :goto_2

    :cond_f
    sget-object p2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_BATTERY_LEVEL:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p2

    if-ne v2, p2, :cond_10

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    aget-byte p2, p1, v4

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->extractBatteryInfo(B)V

    sget-object p2, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BATTERY:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->notifyFeaturesOfStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;)V

    goto :goto_2

    :cond_10
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    :cond_11
    :goto_2
    invoke-static {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->f([B)Z

    move-result p2

    if-eqz p2, :cond_12

    array-length p2, p1

    invoke-static {p1, v4, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p0, v2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->notifyFeaturesOfNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V

    :cond_12
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasRegistered:Z

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->updatePossible:Z

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z

    iput-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasShutdown:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->previousChunkPacketId:Ljava/lang/Byte;

    iput-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentChunkedMessage:[B

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->currentMessagePointer:I

    iput-byte v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->packetId:B

    return-void
.end method

.method private setReadCharacteristic()Z
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->p:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->readCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    return v1
.end method

.method private setWriteCharacteristic()Z
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->n:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->o:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->writeCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    return p0
.end method

.method private startDeviceRegistrationHangingThread()V
    .locals 2

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killDeviceRegistrationHangingThread()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$3;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$3;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationHangingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startUnlockRetryThread()V
    .locals 2

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killUnlockRetryThread()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$2;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->unlockRetryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;)V
    .locals 3

    const-string v0, "bind"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->NOT_CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->reset()V

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->startDeviceRegistrationHangingThread()V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connect()V

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceRegistering(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    return-void
.end method

.method public buildCypher([B)[B
    .locals 34

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0xc

    aget-byte v3, p1, v2

    xor-int v4, v1, v3

    int-to-byte v4, v4

    const/4 v5, 0x1

    aget-byte v6, p1, v5

    const/4 v7, 0x4

    aget-byte v8, p1, v7

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    const/4 v9, 0x2

    aget-byte v10, p1, v9

    const/16 v11, 0x8

    aget-byte v12, p1, v11

    xor-int v13, v10, v12

    int-to-byte v13, v13

    const/4 v14, 0x3

    aget-byte v15, p1, v14

    const/16 v16, 0xe

    aget-byte v17, p1, v16

    move/from16 p0, v0

    xor-int v0, v15, v17

    int-to-byte v0, v0

    const/16 v18, 0x6

    aget-byte v19, p1, v18

    xor-int v8, v8, v19

    int-to-byte v8, v8

    const/16 v20, 0x5

    aget-byte v21, p1, v20

    const/16 v22, 0x9

    aget-byte v23, p1, v22

    move/from16 v24, v2

    xor-int v2, v21, v23

    int-to-byte v2, v2

    const/16 v25, 0xb

    aget-byte v26, p1, v25

    move/from16 v27, v5

    xor-int v5, v19, v26

    int-to-byte v5, v5

    const/16 v19, 0x7

    aget-byte v28, p1, v19

    move/from16 v29, v7

    xor-int v7, v28, v17

    int-to-byte v7, v7

    xor-int v12, v12, v23

    int-to-byte v12, v12

    const/16 v30, 0xd

    aget-byte v31, p1, v30

    move/from16 v32, v9

    xor-int v9, v23, v31

    int-to-byte v9, v9

    const/16 v23, 0xa

    aget-byte v33, p1, v23

    xor-int v10, v33, v10

    int-to-byte v10, v10

    move/from16 v33, v11

    xor-int v11, v26, v28

    int-to-byte v11, v11

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    const/16 v3, 0xf

    aget-byte v26, p1, v3

    move/from16 v28, v3

    xor-int v3, v31, v26

    int-to-byte v3, v3

    xor-int v15, v17, v15

    int-to-byte v15, v15

    move/from16 v17, v14

    xor-int v14, v26, v21

    int-to-byte v14, v14

    move/from16 v21, v0

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v4, v0, p0

    aput-byte v6, v0, v27

    aput-byte v13, v0, v32

    aput-byte v21, v0, v17

    aput-byte v8, v0, v29

    aput-byte v2, v0, v20

    aput-byte v5, v0, v18

    aput-byte v7, v0, v19

    aput-byte v12, v0, v33

    aput-byte v9, v0, v22

    aput-byte v10, v0, v23

    aput-byte v11, v0, v25

    aput-byte v1, v0, v24

    aput-byte v3, v0, v30

    aput-byte v15, v0, v16

    aput-byte v14, v0, v28

    return-object v0
.end method

.method public close()V
    .locals 2

    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowLock(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->BLEOK()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killHardResetRetryThread()V

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    :cond_1
    const-string v0, "close post closing"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 2

    const-string v0, "connect"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowLock(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPermissionsManager()Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;

    move-result-object v1

    iget-object v1, v1, Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->CONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    const-string v0, "connect post connection"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public connectionHardReset(Z)V
    .locals 2

    const-string v0, "connectionHardReset"

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowLock(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->BLEOK()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceState;->HARD_RESET_AWAITING_RECONNECTION:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$4;

    invoke-direct {v0, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$4;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 p1, 0x0

    iput-byte p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->packetId:B

    const-string p1, "connectionHardReset post closing"

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    iget-object p1, p1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBleDeviceFirmwareChecksums()Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDeviceFirmwareChecksums:Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;

    return-object p0
.end method

.method public getBleDeviceState()Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;
    .locals 5

    const-string v0, "setBleDeviceStateListener"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    iget v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->batteryLevel:I

    iget-boolean v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isPlugged:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/enums/DeviceState;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    return-object p0
.end method

.method public getFeatureStore()Lcom/lightup/sdk/device/features/FeatureStore;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    return-object p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mode:Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/device/DeviceId;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mac:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/lightup/sdk/device/enums/DeviceState;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    return-object p0
.end method

.method public handleDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->readCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->q:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->descriptorWritten:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Descriptor written"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowLock(Ljava/lang/String;)V

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->READY:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->onBLEReady()V

    :cond_0
    return-void
.end method

.method public handleDeviceCharacteristicChanged([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->newCharacteristic([BI)V

    return-void
.end method

.method public handleServicesDiscovery(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setWriteCharacteristic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setReadCharacteristic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->readCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->q:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->characWriteRetry:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$6;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public hasConnected()Z
    .locals 3

    const-string v0, "hasConnected"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->NOT_CONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTED:Lcom/lightup/sdk/device/enums/DeviceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public hasShutDown()Z
    .locals 2

    const-string v0, "hasShutDown"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/device/DeviceId;->hashCode()I

    move-result p0

    return p0
.end method

.method public isHanging()Z
    .locals 2

    const-string v0, "isHanging"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public isInBootloader()Z
    .locals 3

    const-string v0, "isInBootloader"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public isRegistered()Z
    .locals 3

    const-string v0, "isRegistered"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public isRegisteredRequiresUpdate()Z
    .locals 3

    const-string v0, "isRegisteredRequiresUpdate"

    const-string v1, "isRegisteredRequiresUpdated"

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public isUp()Z
    .locals 3

    const-string v0, "isUp"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public isUpdating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    return p0
.end method

.method public killHardResetRetryThread()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hardResetRetryThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hardResetRetryThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public onInternetTimeAvailable(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;)V
    .locals 3

    const-string v0, "onInternetTimeAvailable"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    new-instance v0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;

    invoke-direct {v0, p1, p0}, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;-><init>(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public pollMessage()Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->broker:Lcom/lightup/sdk/device/devicemanagement/Broker;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/Broker;->poll()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p0

    return-object p0
.end method

.method public putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z
    .locals 1

    .line 14
    sget-object v0, Lcom/lightup/sdk/device/model/device/PriorityMode;->NORMAL:Lcom/lightup/sdk/device/model/device/PriorityMode;

    invoke-virtual {p0, v0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    move-result p0

    return p0
.end method

.method public putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->broker:Lcom/lightup/sdk/device/devicemanagement/Broker;

    invoke-virtual {v0, p1, p2}, Lcom/lightup/sdk/device/devicemanagement/Broker;->put(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->notifyConsumer()V

    :cond_0
    return p1
.end method

.method public registrationFlowLock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public registrationFlowUnlock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public requiresUpdate()Z
    .locals 2

    const-string v0, "requiresUpdate"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw v1
.end method

.method public resetMessageStack()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->broker:Lcom/lightup/sdk/device/devicemanagement/Broker;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/Broker;->clear()V

    return-void
.end method

.method public sendPacket([B)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [B

    iget-byte v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->packetId:B

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->packetId:B

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "sendPacket"

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowLock(Ljava/lang/String;)V

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->READY:Lcom/lightup/sdk/device/enums/DeviceState;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "sendPacket dropped"

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    return v4

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->writeCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->writeCharac:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    const-string v3, "sendPacket ready"

    invoke-direct {p0, v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionFlowUnlock(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->idPrinter:Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;

    if-eqz p1, :cond_2

    invoke-interface {v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;->getShortId()Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    iput v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->failedPacketStreak:I

    return p1

    :cond_2
    invoke-interface {v3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;->getShortId()Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    iget v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->failedPacketStreak:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->failedPacketStreak:I

    const/16 v2, 0x50

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->idPrinter:Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;

    invoke-interface {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$IdPrinter;->getShortId()Ljava/lang/String;

    iput v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->failedPacketStreak:I

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->connectionHardReset(Z)V

    :cond_3
    return p1
.end method

.method public sendUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/model/device/DeviceId;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->buildCypher([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getPairingId()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lightup/sdk/device/messages/MessageBuilder;->d([B[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    return-void
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public setDeviceRegistrationHangingDuration(I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationHangingDuration:I

    return-void
.end method

.method public setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mode:Lcom/lightup/sdk/device/enums/DeviceMode;

    return-void
.end method

.method public setPriorityMode(Lcom/lightup/sdk/device/model/device/PriorityMode;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->broker:Lcom/lightup/sdk/device/devicemanagement/Broker;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/Broker;->setPriorityMode(Lcom/lightup/sdk/device/model/device/PriorityMode;)V

    return-void
.end method

.method public setState(Lcom/lightup/sdk/device/enums/DeviceState;)V
    .locals 1

    const-string v0, "setState"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    sget-object p1, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->notifyFeaturesOfStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;)V

    return-void
.end method

.method public setUpdating(Z)V
    .locals 2

    const-string v0, "setUpdating"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    iput-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUpdating:Z

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-boolean p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isHanging:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->handleDeviceHangingState()V

    :cond_0
    return-void
.end method

.method public startHardResetRetryThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$5;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hardResetRetryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->mac:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbind()V
    .locals 6

    const-string v0, "unbind"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->DISCONNECTING:Lcom/lightup/sdk/device/enums/DeviceState;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setState(Lcom/lightup/sdk/device/enums/DeviceState;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_0
    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killUnlockRetryThread()V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killDeviceRegistrationHangingThread()V

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->reset()V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    iget-object v1, v0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    if-ge v3, v2, :cond_1

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lightup/sdk/device/features/Feature;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lightup/sdk/device/features/Feature;->kill(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "unbind"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    const-string v0, "unbind"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public unexpectedDisconnection()V
    .locals 3

    const-string v0, "unexpectedDisconnection"

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->state:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->hasShutdown:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->startDeviceRegistrationHangingThread()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceRegistrationListener:Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/lightup/sdk/device/model/device/DeviceRegistrationListener;->onDeviceRegistering(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->killUnlockRetryThread()V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return-void
.end method

.method public update(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)Z
    .locals 9

    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowLock(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->updatePossible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v5, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->deviceId:Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->bleDevicesManager:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    const/16 v7, 0x100

    const/16 v8, 0x2710

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->execute()I
    :try_end_1
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "this should not happen"

    invoke-static {p1, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception v0

    move-object v5, p0

    move-object p0, v0

    goto :goto_1

    :goto_0
    invoke-virtual {v5, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    return v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->registrationFlowUnlock(Ljava/lang/String;)V

    throw p0
.end method
