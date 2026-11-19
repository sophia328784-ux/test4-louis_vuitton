.class public Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;
.super Lcom/lightup/sdk/device/features/process/ProcessFeature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdate"


# instance fields
.field private final bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

.field private final bleDeviceFirmwareBundle:Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

.field private currentDataUpdate:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

.field private currentStep:I

.field private final dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

.field private final eventQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

.field private final fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

.field private final fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

.field private totalNumberOfSteps:I

.field private transferType:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager<",
            "+",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
            ">;",
            "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
            "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/lightup/sdk/device/features/process/ProcessFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->totalNumberOfSteps:I

    iput v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->currentStep:I

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object p3

    invoke-virtual {p2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object p3

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDeviceFirmwareBundle:Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForNewMessages()V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->registerForBLEDeviceStateChange()V

    const-class p3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    const-class v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    const-class v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    const-class v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    invoke-static {v1, v2, p3, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilderFactory;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;

    move-result-object p3

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->START:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    invoke-interface {p3, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;->newStateMachine(Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p3

    check-cast p3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    new-instance p3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;

    invoke-direct {p3, p0, p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$1;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    iput-object p3, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;II)V

    iput-object v0, v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    return-void
.end method

.method public static bridge synthetic a(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/Feature;->putMessage(Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDeviceFirmwareBundle:Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->currentDataUpdate:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->currentStep:I

    return p0
.end method

.method private done()V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDeviceFirmwareBundle:Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$6;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$6;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->dataUpdateProcessListener:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    return-object p0
.end method

.method private error()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    .line 23
    iget-object v0, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->e:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    :goto_0
    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    return-void
.end method

.method private error(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;

    invoke-direct {v1, p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->firmwareUpdateListener:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    return-object p0
.end method

.method private fireFsmEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->canAccept(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-virtual {v0, p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->totalNumberOfSteps:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->transferType:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->currentDataUpdate:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    return-void
.end method

.method public static bridge synthetic j(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->currentStep:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V
    .locals 0

    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->totalNumberOfSteps:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->linkBackUp()V

    return-void
.end method

.method private linkBackUp()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$5;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$5;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private linkBroken()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$4;

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$4;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->linkBroken()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->progress(D)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    return-void
.end method

.method private progress(D)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;D)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;

    invoke-direct {v1, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;

    invoke-direct {v1, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleBLEDeviceStateChange(Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;)V
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;->BLE_DEVICE_STATE:Lcom/lightup/sdk/device/model/device/BLEDeviceStateListener$StateChangeType;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/lightup/sdk/device/devicemanagement/BLEDevice$DeviceStateBundle;->bleDeviceState:Lcom/lightup/sdk/device/enums/DeviceState;

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->IN_BOOTLOADER:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_UP_IN_BOOTLOADER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    return-void

    :cond_1
    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED:Lcom/lightup/sdk/device/enums/DeviceState;

    if-eq p1, p2, :cond_4

    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERING:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceState;->REGISTERED_REQUIRES_UPDATE:Lcom/lightup/sdk/device/enums/DeviceState;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->d:Z

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_UP_IN_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    return-void
.end method

.method public handleNewMessage(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;B[B)V
    .locals 2

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_REQUEST:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    if-ne p2, v0, :cond_5

    array-length p2, p3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    aget-byte p2, p3, p2

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->BOOTLOADER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->BOOTLOADER_UPDATER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;->FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    :goto_1
    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    array-length p0, p3

    invoke-static {p0, p3, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    return-void

    :cond_4
    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->transferType:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->DOWNLOAD_REQUEST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->registerEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->TRANSFERRING_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->currentDataUpdate:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    invoke-virtual {p0, p2, p3}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;->handleNewMessage(B[B)V

    :cond_6
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    new-instance v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$8;

    invoke-direct {v2, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$8;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V

    invoke-virtual {v0, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->addTerminateListener(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;)V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isInBootloader()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_UP_IN_BOOTLOADER:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fireFsmEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    iput-boolean v2, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->d:Z

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_UP_IN_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fireFsmEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->isRegisteredRequiresUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    iput-boolean v1, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->d:Z

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_UP_IN_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fireFsmEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fireFsmEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;->b:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;

    if-eqz v3, :cond_5

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$9;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->error()V

    goto :goto_3

    :cond_3
    const-string p0, "dis should not happen"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->done()V

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$Event;->a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fireFsmEvent(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;)V

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->g:Ljava/lang/Thread;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_1
    monitor-exit v0

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    check-cast v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    iget-object v0, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a()V

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->fsmContext:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/Feature;->isDeviceUnbinding()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-direct {p0, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->bleDevice:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {p0, v2}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->setUpdating(Z)V

    return-void

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
