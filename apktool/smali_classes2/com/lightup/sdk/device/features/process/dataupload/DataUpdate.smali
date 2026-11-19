.class Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;,
        Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;,
        Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;,
        Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$BadAckException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataUpdate"


# instance fields
.field private final STEP_TIMEOUT:I

.field private ackPayload:[B

.field private currentPageId:I

.field private final dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

.field private final numberOfPages:D

.field private final pageSize:I

.field private final payload:[B

.field private state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field private final stateChange:Ljava/util/concurrent/locks/Condition;

.field private final stateLock:Ljava/util/concurrent/locks/Lock;

.field private final updateAckMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

.field private final updateDataMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

.field private final updateStatusMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/messages/MessageInfo;[BILcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->NOT_STARTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    const/4 v0, -0x1

    iput v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->currentPageId:I

    iput-object p4, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->payload:[B

    iput p5, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->pageSize:I

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateDataMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateAckMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateStatusMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    iput-object p6, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    iput p7, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->STEP_TIMEOUT:I

    array-length p1, p4

    int-to-float p1, p1

    int-to-float p2, p5

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->numberOfPages:D

    return-void
.end method

.method private completed()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateListener;->onCompleted()V

    return-void
.end method

.method private error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateListener;->onError()V

    return-void
.end method

.method private handleAck(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$BadAckException;
        }
    .end annotation

    iget v0, p1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;->a:I

    iget v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->currentPageId:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->numberOfPages:D

    div-double/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateListener;->onProgress(D)V

    :cond_0
    iget p1, p1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;->a:I

    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->currentPageId:I

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->numberOfPages:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->payload:[B

    iget v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->pageSize:I

    mul-int/2addr p1, v1

    add-int/2addr v1, p1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    iget v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->pageSize:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateDataMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a(B)V

    iget v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->currentPageId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v0, p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b([B)V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    new-instance p1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {p1, v0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;->c(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void

    :cond_1
    new-instance p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$BadAckException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method

.method private putStatusDone()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->putUpdateStatus(B)V

    return-void
.end method

.method private putStatusKo()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->putUpdateStatus(B)V

    return-void
.end method

.method private putStatusValidating()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->putUpdateStatus(B)V

    return-void
.end method

.method private putUpdateStatus(B)V
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateStatusMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateStatusMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    new-instance p1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {p1, v0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;->c(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method private startDataTransfer([B)V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    new-instance v1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v1, p1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;->c(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->currentPageId:I

    return-void
.end method


# virtual methods
.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    sget-object p2, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_0
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    return-void
.end method

.method public handleNewMessage(B[B)V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->updateAckMessageInfo:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 p1, 0x0

    aget-byte p1, p2, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-ne p1, v0, :cond_6

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->VALIDATING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-ne p1, v0, :cond_6

    :cond_1
    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->VALIDATING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-ne p1, v0, :cond_6

    :cond_3
    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->VALIDATING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->VALIDATING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-ne p1, v0, :cond_6

    :cond_5
    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_7
    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;->a()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->startDataTransfer([B)V

    invoke-static {}, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a()I

    move-result v0

    iget v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->STEP_TIMEOUT:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    iput-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-nez v0, :cond_3

    :try_start_2
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$1;->a:[I

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->completed()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->state:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    sget-object v4, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    if-ne v0, v4, :cond_4

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_3
    sget-object v4, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_6

    if-ne v0, v2, :cond_5

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget v3, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->STEP_TIMEOUT:I

    invoke-direct {v0, v2, v3}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;-><init>([BI)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->putStatusDone()V

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;->b()V

    move v1, v4

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dis should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget v3, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->STEP_TIMEOUT:I

    invoke-direct {v0, v2, v3}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;-><init>([BI)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->putStatusKo()V

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    const v3, 0x1d4c0

    invoke-direct {v0, v2, v3}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;-><init>([BI)V

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->putStatusValidating()V

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->ackPayload:[B

    iget v3, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->STEP_TIMEOUT:I

    invoke-direct {v0, v2, v3}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->handleAck(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;)V

    :cond_9
    :goto_2
    iget v0, v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;->b:I
    :try_end_3
    .catch Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$BadAckException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    :try_start_4
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_BAD_ACK:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V

    goto/16 :goto_1

    :catch_1
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :goto_3
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
