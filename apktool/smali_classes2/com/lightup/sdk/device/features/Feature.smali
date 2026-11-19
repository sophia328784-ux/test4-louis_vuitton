.class public abstract Lcom/lightup/sdk/device/features/Feature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/lightup/sdk/device/ble/communication/MessageListener;
.implements Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Feature"


# instance fields
.field protected bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field private deviceUnbinding:Z

.field private featureExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private isRegisteredForBLEDeviceStateChange:Z

.field private isRegisteredForNewMessages:Z

.field protected uniqueId:I


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lightup/sdk/device/features/Feature;->uniqueId:I

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->deviceUnbinding:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/lightup/sdk/device/features/Feature;->featureExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForNewMessages:Z

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForBLEDeviceStateChange:Z

    iput-object p1, p0, Lcom/lightup/sdk/device/features/Feature;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getFeatureStore()Lcom/lightup/sdk/device/features/FeatureStore;

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/features/Feature;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isAtomic()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/lightup/sdk/device/features/Feature;->uniqueId:I

    :cond_0
    return-void
.end method

.method private putMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)Z

    return-void
.end method


# virtual methods
.method public final deregisterForBLEDeviceStateChange()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForBLEDeviceStateChange:Z

    return-void
.end method

.method public final deregisterForNewMessages()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForNewMessages:Z

    return-void
.end method

.method public execute()I
    .locals 3

    iget-object v0, p0, Lcom/lightup/sdk/device/features/Feature;->featureExecuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/Feature;->featureStore:Lcom/lightup/sdk/device/features/FeatureStore;

    iget-object v1, v0, Lcom/lightup/sdk/device/features/FeatureStore;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/lightup/sdk/device/features/FeatureStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/features/Feature;->setFuture(Ljava/util/concurrent/Future;)V

    :cond_0
    iget p0, p0, Lcom/lightup/sdk/device/features/Feature;->uniqueId:I

    return p0
.end method

.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 0

    return-void
.end method

.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 0

    return-void
.end method

.method public abstract isAtomic()Z
.end method

.method public final isCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/Feature;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/Feature;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

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

.method public isDeviceUnbinding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lightup/sdk/device/features/Feature;->deviceUnbinding:Z

    return p0
.end method

.method public kill(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/Feature;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/Feature;->deviceUnbinding:Z

    iget-object p0, p0, Lcom/lightup/sdk/device/features/Feature;->future:Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForBLEDeviceStateChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/lightup/sdk/device/features/Feature;->handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V

    :cond_0
    return-void
.end method

.method public final onNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForNewMessages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/lightup/sdk/device/features/Feature;->handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V

    :cond_0
    return-void
.end method

.method public final putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/PriorityMode;->NORMAL:Lcom/lightup/sdk/device/model/device/PriorityMode;

    invoke-virtual {p0, v0, p1}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public final putMessage(Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/lightup/sdk/device/features/Feature;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-direct {p0, v0, p1, p2}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/model/device/PriorityMode;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public final registerForBLEDeviceStateChange()V
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isAtomic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForBLEDeviceStateChange:Z

    return-void

    :cond_0
    const-string p0, "Feature is atomic"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final registerForNewMessages()V
    .locals 1

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isAtomic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/Feature;->isRegisteredForNewMessages:Z

    return-void

    :cond_0
    const-string p0, "Feature is atomic"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/features/Feature;->future:Ljava/util/concurrent/Future;

    return-void
.end method
