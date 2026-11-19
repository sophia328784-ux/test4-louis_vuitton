.class Lcom/lightup/sdk/device/features/process/DualDeviceFeature$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/listener/ActionListener;


# instance fields
.field public final synthetic a:Lcom/lightup/sdk/device/features/process/DualDeviceFeature;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/DualDeviceFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$1;->a:Lcom/lightup/sdk/device/features/process/DualDeviceFeature;

    return-void
.end method


# virtual methods
.method public final onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$1;->a:Lcom/lightup/sdk/device/features/process/DualDeviceFeature;

    invoke-static {p0, p1}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->a(Lcom/lightup/sdk/device/features/process/DualDeviceFeature;Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V

    return-void
.end method

.method public final onDone()V
    .locals 2

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature$1;->a:Lcom/lightup/sdk/device/features/process/DualDeviceFeature;

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/DualDeviceFeature;->b()V

    :cond_0
    return-void
.end method
