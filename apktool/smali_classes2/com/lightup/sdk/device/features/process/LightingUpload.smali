.class public Lcom/lightup/sdk/device/features/process/LightingUpload;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LightingUpload"


# instance fields
.field private checksum:I

.field private dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

.field private deadlineThread:Ljava/lang/Thread;

.field private device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

.field private nbPages:I

.field private pageSize:I

.field private final stepEvent:Ljava/util/concurrent/locks/Condition;

.field private updateComplete:Z

.field private uploadPayload:[B


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;[BILcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->updateComplete:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->stepEvent:Ljava/util/concurrent/locks/Condition;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->uploadPayload:[B

    iput-object p4, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    iput p3, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->pageSize:I

    array-length p1, p2

    div-int/2addr p1, p3

    iput p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->nbPages:I

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->uploadPayload:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v0, p3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->checksum:I

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/lightup/sdk/device/features/process/LightingUpload;)Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/lightup/sdk/device/features/process/LightingUpload;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForNewMessages()V

    return-void
.end method

.method public static synthetic access$100(Lcom/lightup/sdk/device/features/process/LightingUpload;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForBLEDeviceStateChange()V

    return-void
.end method

.method private handleDeadline(J)V
    .locals 2

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->stopDeadline()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/LightingUpload$1;

    invoke-direct {v1, p0, p1, p2, p0}, Lcom/lightup/sdk/device/features/process/LightingUpload$1;-><init>(Lcom/lightup/sdk/device/features/process/LightingUpload;JLcom/lightup/sdk/device/features/Feature;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->deadlineThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handlePageRequest([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->b([B)J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-static {p1, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->a([B)I

    move-result p1

    iget v1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->nbPages:I

    if-le p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v4, v6

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    invoke-interface {v1, v4, v5}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onProgress(D)V

    iget v1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->pageSize:I

    mul-int v4, p1, v1

    add-int/2addr v1, v4

    iget-object v5, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->uploadPayload:[B

    array-length v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->uploadPayload:[B

    invoke-static {v5, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v4, v1

    invoke-static {v4, v1, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/lightup/sdk/device/features/process/LightingUpload;->handleDeadline(J)V

    iget p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->pageSize:I

    invoke-static {p0, p1, v1}, Lcom/lightup/sdk/device/messages/MessageBuilder;->b(II[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p0

    return-object p0
.end method

.method private handleUploadDone()V
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForNewMessages()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForBLEDeviceStateChange()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->updateComplete:Z

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onCompleted()V

    return-void
.end method

.method private handleUploadStatus([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 8

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->handleUploadDone()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    sget-object p1, Lcom/lightup/sdk/device/enums/DataUploadError;->UnexpectedError:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    sget-object p1, Lcom/lightup/sdk/device/enums/DataUploadError;->TransferError:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    sget-object p1, Lcom/lightup/sdk/device/enums/DataUploadError;->TransferError:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->handleUploadDone()V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->uploadPayload:[B

    array-length p1, p1

    iget v3, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->pageSize:I

    iget p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->checksum:I

    sget-object v4, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_START:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v5, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    new-instance v6, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    invoke-virtual {v4}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v4}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v4

    invoke-virtual {v6, v4, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v6, p1, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v6, v3, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v6, p0, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    const p0, 0x89000

    invoke-virtual {v6, p0, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget-object p0, v6, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {v5, p0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object v5
.end method

.method private startUpload()V
    .locals 6

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->device:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    iget v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->checksum:I

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_DATA_UPLOAD_REQUIRED:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v3, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    new-instance v4, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v2

    invoke-virtual {v4, v2, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    const/4 v1, 0x4

    invoke-virtual {v4, v0, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget-object v0, v4, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {v3, v0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    iput-object v3, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-virtual {p0, v3}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method private stopDeadline()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->deadlineThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    if-ne p1, v0, :cond_1

    iget-object p1, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->startUpload()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->stopDeadline()V

    :cond_1
    return-void
.end method

.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 1

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->stopDeadline()V

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%02x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x0

    array-length v0, p3

    invoke-static {v0, p3, p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_DATA_UPLOAD_STATUS:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_0

    invoke-direct {p0, p3}, Lcom/lightup/sdk/device/features/process/LightingUpload;->handleUploadStatus([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_UPDATE_PAGE_REQUEST:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-direct {p0, p3}, Lcom/lightup/sdk/device/features/process/LightingUpload;->handlePageRequest([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->stepEvent:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public kill(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->kill(Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForNewMessages()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->deregisterForBLEDeviceStateChange()V

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->updateComplete:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    sget-object v0, Lcom/lightup/sdk/device/enums/DataUploadError;->TimeOut:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    :cond_0
    return p1
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->startUpload()V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->stepEvent:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->msgToSend:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/lightup/sdk/device/model/device/PriorityMode;->NORMAL:Lcom/lightup/sdk/device/model/device/PriorityMode;

    invoke-virtual {p0, v1, v0}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    :cond_1
    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->updateComplete:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setDataUploadListener(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload;->dataUploadListener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    return-void
.end method
