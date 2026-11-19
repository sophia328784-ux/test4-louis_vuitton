.class public Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# instance fields
.field private defaultTimeOut:I

.field private deregistered:Z

.field private final kill:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final setEpochListener:Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;-><init>(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->kill:Ljava/util/concurrent/locks/Condition;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->deregistered:Z

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->setEpochListener:Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;

    iput p3, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->defaultTimeOut:I

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    return-void
.end method

.method private killSignal()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->kill:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->deregistered:Z

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->killSignal()V

    :cond_0
    return-void
.end method

.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 0

    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_GENERIC_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    aget-byte p1, p3, p1

    sget-object p2, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_SET_EPOCH:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p2}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->killSignal()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_SET_EPOCH:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    aput-byte v0, v1, v2

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([BI)V

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->kill:Ljava/util/concurrent/locks/Condition;

    iget v1, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->defaultTimeOut:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->deregistered:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->setEpochListener:Lcom/lightup/sdk/device/features/process/epoch/SetEpochListener;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-interface {v1, v0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/epoch/SetEpoch;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
