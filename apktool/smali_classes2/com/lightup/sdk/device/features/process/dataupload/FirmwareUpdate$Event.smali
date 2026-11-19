.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public final a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

.field public final b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;->a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    .line 11
    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;

    return-void
.end method

.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;->a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;

    return-void
.end method
