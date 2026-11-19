.class public Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProgramUpdate"


# instance fields
.field private bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field private deadlineThread:Ljava/lang/Thread;

.field private firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

.field private firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

.field private nbPages:D

.field private final pageSize:I

.field private programPayload:[B

.field private programSize:I

.field private final stepEvent:Ljava/util/concurrent/locks/Condition;

.field private updateComplete:Z

.field private updatedVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;ILcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
            ">;",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
            "I",
            "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stepEvent:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->updateComplete:Z

    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    iput-object p4, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput p3, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->pageSize:I

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->startProgramUpdate()V

    return-void
.end method

.method private handleDeadline(J)V
    .locals 2

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stopDeadline()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$1;

    invoke-direct {v1, p0, p1, p2, p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$1;-><init>(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;JLcom/lightup/sdk/device/features/Feature;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->deadlineThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handlePageRequest([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->b([B)J

    move-result-wide v2

    const/4 v0, 0x6

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->a([B)I

    move-result p1

    int-to-double v0, p1

    iget-wide v4, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->nbPages:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-double v0, v0

    div-double/2addr v0, v4

    iget-object v4, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    new-instance v5, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v1, v6, v6}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;-><init>(DII)V

    invoke-virtual {v4, v5}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onProgress(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programPayload:[B

    iget v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->pageSize:I

    mul-int v4, p1, v1

    mul-int v5, p1, v1

    add-int/2addr v5, v1

    iget v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programSize:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v2, v3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleDeadline(J)V

    iget p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->pageSize:I

    invoke-static {p0, p1, v0}, Lcom/lightup/sdk/device/messages/MessageBuilder;->b(II[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p0

    return-object p0
.end method

.method private handleStartRequest([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 6

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareManager:Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v1

    iget-object v2, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->updatedVersion:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->b:[B

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programPayload:[B

    iget p1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->c:I

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->e:[B

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programPayload:[B

    iget p1, v1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->f:I

    :goto_0
    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programPayload:[B

    array-length v1, v1

    iput v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programSize:I

    iget v2, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->pageSize:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->nbPages:D

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programPayload:[B

    iget v3, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programSize:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->programSize:I

    iget p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->pageSize:I

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v3, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    new-instance v4, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    const/4 v2, 0x4

    invoke-virtual {v4, v1, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    const/4 v1, 0x2

    invoke-virtual {v4, p0, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v4, v0, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v4, p1, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget-object p0, v4, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {v3, p0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V
    :try_end_0
    .catch Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleUpdateDone()Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    invoke-interface {v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateListener;->onCompleted()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->updateComplete:Z

    sget-object p0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p0

    aput-byte p0, v0, v1

    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object p0
.end method

.method private handleUpdateError([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 3

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    sget-object v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {p1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    iput-boolean v1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->updateComplete:Z

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stepEvent:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p1, v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    invoke-super {p0, v0}, Lcom/lightup/sdk/device/features/Feature;->kill(Z)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$2;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$2;-><init>(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_COMPLETE:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p0

    aput-byte p0, p1, v0

    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object p0
.end method

.method private handleValidation([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->b([B)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleDeadline(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private startProgramUpdate()V
    .locals 5

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stopDeadline()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    sget-object v0, Lcom/lightup/sdk/device/model/device/PriorityMode;->NORMAL:Lcom/lightup/sdk/device/model/device/PriorityMode;

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_REQUIRED:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v2

    aput-byte v2, v3, v4

    const/16 v2, -0x22

    aput-byte v2, v3, v1

    const/4 v2, 0x2

    const/16 v4, -0x53

    aput-byte v4, v3, v2

    const/4 v2, 0x3

    const/16 v4, -0x36

    aput-byte v4, v3, v2

    const/4 v2, 0x4

    const/4 v4, -0x2

    aput-byte v4, v3, v2

    new-instance v2, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v2, v3}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;-><init>(DII)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onProgress(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;)V

    return-void
.end method

.method private stopDeadline()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->deadlineThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->startProgramUpdate()V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    new-array p2, p1, [B

    const/4 v0, 0x0

    aput-byte p1, p2, v0

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleUpdateError([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stopDeadline()V

    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stopDeadline()V

    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_REQUEST:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_0

    invoke-direct {p0, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleStartRequest([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-direct {p0, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handlePageRequest([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_VALIDATING:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_2

    invoke-direct {p0, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleValidation([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_DONE:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_3

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleUpdateDone()Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_KO:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_4

    invoke-direct {p0, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleUpdateError([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stepEvent:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public kill(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->kill(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    :cond_0
    return p1
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->startProgramUpdate()V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->stepEvent:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/lightup/sdk/device/model/device/PriorityMode;->NORMAL:Lcom/lightup/sdk/device/model/device/PriorityMode;

    invoke-virtual {p0, v1, v0}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->updateComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setFirmwareUpdateListener(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    return-void
.end method
