.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

.field final synthetic val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v1, v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->canAccept(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->DEBUG:Z

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    iget-object v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-virtual {v1, v0, v2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-boolean v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->DEBUG:Z

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->DEBUG:Z

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$2;->val$fsm:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;

    invoke-virtual {v0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
