.class public Lcom/lightup/sdk/device/features/process/DualDeviceFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/lightup/sdk/device/features/process/errors/DeviceError;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->a:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$1;

    invoke-direct {p3, p0}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$1;-><init>(Lcom/lightup/sdk/device/features/process/DualDeviceFeature;)V

    invoke-virtual {p1, p3}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->setActionListener(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    new-instance p3, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$2;

    invoke-direct {p3, p0}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$2;-><init>(Lcom/lightup/sdk/device/features/process/DualDeviceFeature;)V

    invoke-virtual {p2, p3}, Lcom/lightup/sdk/device/features/process/ackable/AckableFeature;->setActionListener(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    invoke-virtual {p2}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return-void
.end method

.method public static a(Lcom/lightup/sdk/device/features/process/DualDeviceFeature;Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->c:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->c:Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->a:Lcom/lightup/sdk/device/features/process/listener/ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DeviceErrorListener;->onDeviceError(Ljava/lang/Enum;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void
.end method
