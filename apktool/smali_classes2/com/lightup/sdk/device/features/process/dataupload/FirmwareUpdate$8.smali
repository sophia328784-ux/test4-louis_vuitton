.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateListener<",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$8;->a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    return-void
.end method


# virtual methods
.method public final terminated(Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;)V
    .locals 2

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$8;->a:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;

    invoke-static {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->o(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;->ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;

    invoke-static {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->o(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$FsmStatus;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->a(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getShortId()Ljava/lang/String;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;->getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
