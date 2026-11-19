.class Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteNoValidation;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteValidation;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataIncomplete;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$NoTransferNoValidation;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$NoTransferValidation;,
        Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$StartTransfer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine<",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/States;
    value = {
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "triggerStartPackerStartTriggerTimers"
            initialState = true
            name = "TRIGGER_START_PACKET"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "killTimers"
            isFinal = true
            name = "DONE"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "killTimers"
            isFinal = true
            name = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "sendAckStartTransferTimers"
            name = "REQUEST_PAGE_TRANSFER"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "handleValidation"
            name = "TRANSFER_VALIDATING"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "sendKoStartTransferTimers"
            name = "TRANSFER_KO"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "startValidationTimer"
            name = "WAITING_FOR_USER_VALIDATION"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "sendDoneStartTransferTimers"
            name = "TRANSFER_DONE"
        .end subannotation
    }
.end annotation

.annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/Transitions;
    value = {
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "TRIGGER_START_PACKET"
            on = "DEAD_TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "triggerStartPacket"
            from = "TRIGGER_START_PACKET"
            on = "REPEAT_TIMEOUT"
            to = "TRIGGER_START_PACKET"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagTransferCanceled"
            from = "TRIGGER_START_PACKET"
            on = "TRANSFER_CANCELED"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "TRIGGER_START_PACKET"
            on = "START_PACKET_RECEIVED"
            to = "REQUEST_PAGE_TRANSFER"
            when = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$StartTransfer;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "TRIGGER_START_PACKET"
            on = "START_PACKET_RECEIVED"
            to = "TRANSFER_VALIDATING"
            when = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$NoTransferValidation;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "TRIGGER_START_PACKET"
            on = "START_PACKET_RECEIVED"
            to = "TRANSFER_DONE"
            when = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$NoTransferNoValidation;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "REQUEST_PAGE_TRANSFER"
            on = "DEAD_TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "sendAck"
            from = "REQUEST_PAGE_TRANSFER"
            on = "REPEAT_TIMEOUT"
            to = "REQUEST_PAGE_TRANSFER"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "sendAckResetTransferTimers"
            from = "REQUEST_PAGE_TRANSFER"
            on = "WANTED_PAGE_RECEIVED"
            to = "REQUEST_PAGE_TRANSFER"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
            when = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataIncomplete;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagTransferCanceledKillTimers"
            from = "REQUEST_PAGE_TRANSFER"
            on = "TRANSFER_CANCELED"
            to = "TRANSFER_KO"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagProtocolErrorKillTimers"
            from = "REQUEST_PAGE_TRANSFER"
            on = "FUTURE_PAGE_RECEIVED"
            to = "TRANSFER_KO"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "killTimers"
            from = "REQUEST_PAGE_TRANSFER"
            on = "WANTED_PAGE_RECEIVED"
            to = "TRANSFER_VALIDATING"
            when = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteValidation;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "killTimers"
            from = "REQUEST_PAGE_TRANSFER"
            on = "WANTED_PAGE_RECEIVED"
            to = "TRANSFER_DONE"
            when = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteNoValidation;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagDeviceBusy"
            from = "TRANSFER_VALIDATING"
            on = "DEAD_TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "sendValidating"
            from = "TRANSFER_VALIDATING"
            on = "REPEAT_TIMEOUT"
            to = "TRANSFER_VALIDATING"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagTransferCanceledKillTimers"
            from = "TRANSFER_VALIDATING"
            on = "TRANSFER_CANCELED"
            to = "TRANSFER_KO"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "killTimers"
            from = "TRANSFER_VALIDATING"
            on = "STATUS_VALIDATING_RECEIVED"
            to = "WAITING_FOR_USER_VALIDATION"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "koCheckAndFlagDeviceBusy"
            from = "TRANSFER_KO"
            on = "DEAD_TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "sendKo"
            from = "TRANSFER_KO"
            on = "REPEAT_TIMEOUT"
            to = "TRANSFER_KO"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagKoAcknowledgedKillTransferRepeatTimer"
            from = "TRANSFER_KO"
            on = "STATUS_KO_RECEIVED"
            to = "TRANSFER_KO"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "WAITING_FOR_USER_VALIDATION"
            on = "DEAD_TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagTransferCanceledKillTimers"
            from = "WAITING_FOR_USER_VALIDATION"
            on = "TRANSFER_CANCELED"
            to = "TRANSFER_KO"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "killTimers"
            from = "WAITING_FOR_USER_VALIDATION"
            on = "TRANSFER_CONFIRMED"
            to = "TRANSFER_DONE"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "doneCheckAndFlagDeviceBusy"
            from = "TRANSFER_DONE"
            on = "DEAD_TIMEOUT"
            to = "DONE"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "sendDone"
            from = "TRANSFER_DONE"
            on = "REPEAT_TIMEOUT"
            to = "TRANSFER_DONE"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "flagDoneAcknowledgedKillRepeatTimer"
            from = "TRANSFER_DONE"
            on = "STATUS_DONE_RECEIVED"
            to = "TRANSFER_DONE"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "log"
            from = "*"
            on = "*"
            to = "*"
        .end subannotation
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataPullStateMachine"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;-><init>()V

    return-void
.end method

.method private killRepeatTimer(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private startTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public afterTransitionCausedException(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminate()V

    return-void
.end method

.method public synthetic afterTransitionCausedException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    check-cast p2, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    check-cast p3, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    if-nez p4, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->afterTransitionCausedException(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    return-void

    :cond_0
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public doneCheckAndFlagDeviceBusy(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flagDeviceBusy(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flagDoneAcknowledgedKillRepeatTimer(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flagKoAcknowledgedKillTransferRepeatTimer(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flagProtocolErrorKillTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flagTransferCanceled(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public flagTransferCanceledKillTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->killTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->flagTransferCanceled(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    return-void
.end method

.method public handleValidation(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public killTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public koCheckAndFlagDeviceBusy(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public log(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    return-void
.end method

.method public sendAck(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public sendAckResetTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->killTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    invoke-direct {p0, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->startTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->sendAck(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    return-void
.end method

.method public sendAckStartTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->startTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->sendAck(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    return-void
.end method

.method public sendDone(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public sendDoneStartTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->startTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->sendDone(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    return-void
.end method

.method public sendKo(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public sendKoStartTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->startTransferTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;->sendKo(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V

    return-void
.end method

.method public sendValidating(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public startValidationTimer(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public triggerStartPackerStartTriggerTimers(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public triggerStartPacket(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
