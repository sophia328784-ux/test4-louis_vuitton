.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;
.super Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

.field public final synthetic i:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->h:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->i:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput p4, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->j:I

    iput p5, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->k:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a:I

    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->b:I

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->c:Z

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->d:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
