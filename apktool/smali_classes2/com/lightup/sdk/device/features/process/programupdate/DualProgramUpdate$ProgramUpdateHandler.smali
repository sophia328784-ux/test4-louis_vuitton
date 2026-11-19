.class Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;
.super Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgramUpdateHandler"
.end annotation


# instance fields
.field public final a:Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;->a:Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;

    iput-boolean p2, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;->b:Z

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;->a:Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->c:Lcom/lightup/sdk/device/enums/UpdateError;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->a:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onUpdateError(Lcom/lightup/sdk/device/enums/UpdateError;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    :cond_1
    return-void
.end method

.method public final onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
    .locals 2

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;->a:Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/enums/UpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/enums/UpdateError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->c:Lcom/lightup/sdk/device/enums/UpdateError;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->c:Lcom/lightup/sdk/device/enums/UpdateError;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->a:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onUpdateError(Lcom/lightup/sdk/device/enums/UpdateError;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/lightup/sdk/device/enums/UpdateError;->fromFirmwareUpdateError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)Lcom/lightup/sdk/device/enums/UpdateError;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->c:Lcom/lightup/sdk/device/enums/UpdateError;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->c:Lcom/lightup/sdk/device/enums/UpdateError;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->a:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    if-eqz p1, :cond_2

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onUpdateError(Lcom/lightup/sdk/device/enums/UpdateError;)V

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/lightup/sdk/device/features/process/ackable/listeners/DoneListener;->onDone()V

    :cond_3
    return-void
.end method

.method public final onLinkBackUp()V
    .locals 0

    return-void
.end method

.method public final onLinkBroken()V
    .locals 0

    return-void
.end method

.method public final onProgress(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;)V
    .locals 4

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;->getStepProgress()D

    move-result-wide v0

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;->a:Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;

    iget-boolean p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;->b:Z

    if-eqz p0, :cond_0

    iput-wide v0, p1, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->d:D

    goto :goto_0

    :cond_0
    iput-wide v0, p1, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->e:D

    :goto_0
    iget-object p0, p1, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->a:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    iget-wide v0, p1, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->d:D

    iget-wide v2, p1, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->e:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const/4 p1, 0x1

    invoke-interface {p0, p1, p1, v0, v1}, Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;->onProgress(IID)V

    return-void
.end method
