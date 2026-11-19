.class public abstract Lcom/lightup/sdk/device/features/process/ackable/AckableThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AckableThread"


# instance fields
.field private final ackToReceive:Lcom/lightup/sdk/device/messages/MessageInfo;

.field private final bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field private final breakOnUpdateRequired:Z

.field private canTransmit:Z

.field private defaultTimeOut:I

.field private final eventOccurred:Ljava/util/concurrent/locks/Condition;

.field featureComplete:Z

.field private identifier:Ljava/lang/String;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final messageToAck:Lcom/lightup/sdk/device/model/device/DeviceMessage;

.field private receivedPayload:[B

.field private requiresUpdate:Z

.field private retries:I

.field private tick:J

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V

    .line 38
    iput-object p4, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->identifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;Z)V
    .locals 6

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/DeviceMessage;Lcom/lightup/sdk/device/messages/MessageInfo;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "n/a"

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->identifier:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->featureComplete:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->eventOccurred:Ljava/util/concurrent/locks/Condition;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->messageToAck:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->ackToReceive:Lcom/lightup/sdk/device/messages/MessageInfo;

    iput-boolean p4, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->breakOnUpdateRequired:Z

    iput p5, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->defaultTimeOut:I

    iput v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->retries:I

    return-void
.end method

.method private triggerAck()V
    .locals 2

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->canTransmit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->messageToAck:Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    :cond_0
    iget v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->defaultTimeOut:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->timeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->tick:J

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 4

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->breakOnUpdateRequired:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->canTransmit:Z

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    if-ne p1, v0, :cond_5

    iget-object p1, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-boolean v2, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->requiresUpdate:Z

    iget-boolean p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->breakOnUpdateRequired:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->eventOccurred:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_4
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_5
    return-void
.end method

.method public handleNewMessage(B[B)V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->ackToReceive:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->receivedPayload:[B

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->eventOccurred:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method public abstract onAckReceived([B)Z
.end method

.method public abstract putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
.end method

.method public requiresUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->requiresUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->breakOnUpdateRequired:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->requiresUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->requiresUpdate:Z

    iget-boolean v1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->breakOnUpdateRequired:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isRegistered()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isUp()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->canTransmit:Z

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->triggerAck()V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->eventOccurred:Ljava/util/concurrent/locks/Condition;

    iget-wide v1, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->timeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->breakOnUpdateRequired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->requiresUpdate:Z

    if-eqz v0, :cond_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->receivedPayload:[B

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->onAckReceived([B)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->retries:I

    if-lt v0, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->retries:I

    iget v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->defaultTimeOut:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->tick:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->timeout:J

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->retries:I

    if-lt v0, v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->retries:I

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->triggerAck()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/ackable/AckableThread;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
