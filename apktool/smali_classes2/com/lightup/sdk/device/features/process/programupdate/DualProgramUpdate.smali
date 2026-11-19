.class public Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;
    }
.end annotation


# instance fields
.field public final a:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/lightup/sdk/device/enums/UpdateError;

.field public d:D

.field public e:D


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->d:D

    iput-wide v0, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->e:D

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->a:Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;

    const/4 v1, 0x1

    invoke-direct {p3, p0, v1}, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;-><init>(Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;Z)V

    invoke-virtual {p1, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->setFirmwareUpdateListener(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)V

    new-instance p3, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;

    invoke-direct {p3, p0, v0}, Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate$ProgramUpdateHandler;-><init>(Lcom/lightup/sdk/device/features/process/programupdate/DualProgramUpdate;Z)V

    invoke-virtual {p2, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->setFirmwareUpdateListener(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)V

    invoke-virtual {p1}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    invoke-virtual {p2}, Lcom/lightup/sdk/device/features/Feature;->execute()I

    return-void
.end method
