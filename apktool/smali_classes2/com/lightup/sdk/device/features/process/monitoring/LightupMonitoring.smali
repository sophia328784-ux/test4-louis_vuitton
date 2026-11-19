.class public Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        ">",
        "Lcom/lightup/sdk/device/features/process/ProcessFeature;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0014J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016R\u0010\u0010\u0006\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0010*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;",
        "M",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        "Lcom/lightup/sdk/device/features/process/ProcessFeature;",
        "bleDevice",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
        "manager",
        "monitoringListener",
        "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
        "<init>",
        "(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;)V",
        "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;",
        "DEBUG",
        "",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "lock",
        "Ljava/util/concurrent/locks/Lock;",
        "stateChange",
        "Ljava/util/concurrent/locks/Condition;",
        "handleNewMessage",
        "",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        "messageId",
        "",
        "payload",
        "",
        "run",
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
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final manager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;

.field private final stateChange:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLELightup;Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/devicemanagement/BLELightup;",
            "TM;",
            "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->DEBUG:Z

    const-string p1, "LightupMonitoring"

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

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

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;

    invoke-direct {p2, p3}, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;-><init>([B)V

    invoke-virtual {p2}, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->toString()Ljava/lang/String;

    iget-object p3, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    invoke-virtual {p3}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->getPrefs$library()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getProductId()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

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

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->generateCheckSum()I

    move-result p1

    :cond_0
    iget-object p3, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    iget v0, p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->b:I

    invoke-static {v0}, Lcom/lightup/sdk/device/enums/DeviceMode;->valueOf(I)Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v0}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->setMode(Lcom/lightup/sdk/device/enums/DeviceMode;)Z

    iget p3, p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->c:I

    if-eq p1, p3, :cond_1

    const-wide/16 p1, 0x3e8

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;

    invoke-interface {p1}, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;->onRequiresAnimationsUpdate()V

    goto :goto_0

    :cond_1
    iget p1, p2, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->a:I

    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->manager:Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;

    invoke-virtual {p2, p1}, Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;->setCurrentlyPlaying(I)V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->monitoringListener:Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;

    invoke-interface {p1}, Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;->onAnimationPlaying()V

    :goto_0
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
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
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->stateChange:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/32 v0, 0x36ee80

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_0
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method
