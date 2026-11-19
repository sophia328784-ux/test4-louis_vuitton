.class public final Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000c*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u000c*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;",
        "Lcom/lightup/sdk/device/features/process/ProcessFeature;",
        "bleX408",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "manager",
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;",
        "monitoringListener",
        "Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;",
        "<init>",
        "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "stateChange",
        "Ljava/util/concurrent/locks/Condition;",
        "orientation",
        "Lcom/lightup/sdk/device/enums/PairOrientation;",
        "run",
        "",
        "handleNewMessage",
        "bleDevice",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        "messageId",
        "",
        "payload",
        "",
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

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

.field private final monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

.field private final orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

.field private final stateChange:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

    const-string p2, "X408Monitoring"

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEOrientedDevice;->getOrientation()Lcom/lightup/sdk/device/enums/PairOrientation;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    return-void
.end method


# virtual methods
.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_SEND_STATUS:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;

    invoke-direct {p2, p3}, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;-><init>([B)V

    iget-object p3, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p3}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getPrefs$library()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getProductId()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0, p1, v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/SpecificProperties;->CHECKSUM_KEY_SUFFIX:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->generateCheckSum()I

    move-result p1

    :cond_0
    iget-object p3, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iget v0, p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->b:I

    invoke-static {v0}, Lcom/lightup/sdk/device/enums/DeviceMode;->valueOf(I)Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z

    iget p3, p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->c:I

    if-eq p1, p3, :cond_1

    const-wide/16 p1, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

    invoke-interface {p1}, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;->onRequiresAnimationsUpdate()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/lightup/sdk/device/enums/DeviceMode;->valueOf(I)Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEPairedDevicesManager;->getCallStatus()Lcom/lightup/sdk/device/enums/CallStatus;

    move-result-object p1

    sget-object p3, Lcom/lightup/sdk/device/enums/CallStatus;->INITIATED:Lcom/lightup/sdk/device/enums/CallStatus;

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iget p2, p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->a:I

    if-ne p1, p3, :cond_2

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->getTriggerIndex$library()I

    move-result p1

    if-eq p2, p1, :cond_3

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startAnimation(I)Lcom/lightup/sdk/device/enums/CallStatus;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setCurrentlyPlaying$library(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

    invoke-interface {p1}, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;->onAnimationPlaying()V

    :goto_1
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_REQUEST_PLAY:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_5

    aget-byte p1, p3, v1

    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setCurrentlyPlaying$library(I)V

    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-virtual {p2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->startAnimation(I)Lcom/lightup/sdk/device/enums/CallStatus;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

    invoke-interface {p1}, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;->onAnimationPlaying()V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_5
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_BATTERY_LEVEL:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_7

    aget-byte p1, p3, v1

    and-int/lit8 p2, p1, 0x7f

    int-to-byte p2, p2

    shr-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0, p2, v1}, Lcom/lightup/sdk/device/features/process/monitoring/X408MonitoringListener;->onBatteryLevel(Lcom/lightup/sdk/device/enums/PairOrientation;IZ)V

    return-void

    :cond_7
    sget-object p1, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_AND_DEVICE_WALKING_INFO:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p1

    if-ne p2, p1, :cond_8

    aget-byte p1, p3, v1

    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->orientation:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1, p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setWalkingInfo(ILcom/lightup/sdk/device/enums/PairOrientation;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_8
    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/32 v0, 0x36ee80

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/X408Monitoring;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method
