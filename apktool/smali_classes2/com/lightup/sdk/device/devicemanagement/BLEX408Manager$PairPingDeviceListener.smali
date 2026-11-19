.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairPingDeviceListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0016J\u0006\u0010\r\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\u000f\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;",
        "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;",
        "listener",
        "<init>",
        "(Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V",
        "once",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "deviceError",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;",
        "onDone",
        "",
        "onDeviceError",
        "error",
        "onDonePair",
        "onErrorPair",
        "resolve",
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
.field private deviceError:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

.field private final listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

.field private final once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->onErrorPair(Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;)V

    return-void
.end method

.method public bridge synthetic onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;)V

    return-void
.end method

.method public onDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->onDonePair()V

    return-void
.end method

.method public final onDonePair()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->resolve()V

    :cond_0
    return-void
.end method

.method public final onErrorPair(Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;)V
    .locals 1

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->deviceError:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    iget-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->resolve()V

    :cond_0
    return-void
.end method

.method public final resolve()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->deviceError:Lcom/lightup/sdk/device/features/process/errors/DeviceConnectionError;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-interface {v1, v0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    :cond_0
    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$PairPingDeviceListener;->listener:Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method
