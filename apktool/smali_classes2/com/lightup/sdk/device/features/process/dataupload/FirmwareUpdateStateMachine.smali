.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateDone;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateRequiredAndStartedInconsistency;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateRequiredButNotStarted;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FirmwareUpdateNoMoreTries;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FirmwareUpdateTryAgain;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderNoMoreTries;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderTryAgain;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$NoUpdateRequired;,
        Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateRequired;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine<",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/States;
    value = {
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            exitCallMethod = "overClockBleTransmissionRate"
            initialState = true
            name = "START"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "cancelBleTransmissionRateOverclock"
            isFinal = true
            name = "DONE"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "cancelBleTransmissionRateOverclock"
            isFinal = true
            name = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "goToBootloaderStartTimer"
            exitCallMethod = "killTimer"
            name = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "startTimer"
            exitCallMethod = "killTimer"
            name = "WAITING_FOR_LINK_UP"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "waitForDownloadRequestStartTimer"
            exitCallMethod = "killTimer"
            name = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "transferFirmware"
            exitCallMethod = "afterTransferFirmware"
            name = "TRANSFERRING_FIRMWARE"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
            entryCallMethod = "startTimer"
            exitCallMethod = "killTimer"
            name = "WAITING_FOR_LINK_DOWN"
        .end subannotation
    }
.end annotation

.annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/Transitions;
    value = {
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "START"
            on = "LINK_UP_IN_BOOTLOADER"
            to = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "START"
            on = "LINK_UP_IN_FIRMWARE"
            to = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateRequired;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "unexpectedLinkDown"
            from = "START"
            on = "LINK_DOWN"
            to = "WAITING_FOR_LINK_UP"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "noUpdateRequiredError"
            from = "START"
            on = "LINK_UP_IN_FIRMWARE"
            to = "ERROR"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$NoUpdateRequired;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
            on = "LINK_DOWN"
            to = "WAITING_FOR_LINK_UP"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "goToBootloaderStartTimer"
            from = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
            on = "TIMEOUT"
            to = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
            type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderTryAgain;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "timeoutError"
            from = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
            on = "TIMEOUT"
            to = "ERROR"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderNoMoreTries;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "resetGoToBootloaderAttemptCount"
            from = "WAITING_FOR_LINK_UP"
            on = "LINK_UP_IN_FIRMWARE"
            to = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateRequiredButNotStarted;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "linkDownError"
            from = "WAITING_FOR_LINK_UP"
            on = "TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "unexpectedError"
            from = "WAITING_FOR_LINK_UP"
            on = "LINK_UP_IN_FIRMWARE"
            to = "ERROR"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateRequiredAndStartedInconsistency;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "WAITING_FOR_LINK_UP"
            on = "LINK_UP_IN_FIRMWARE"
            to = "DONE"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$UpdateDone;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "linkBackUp"
            from = "WAITING_FOR_LINK_UP"
            on = "LINK_UP_IN_BOOTLOADER"
            to = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "unexpectedLinkDown"
            from = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
            on = "LINK_DOWN"
            to = "WAITING_FOR_LINK_UP"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "timeoutError"
            from = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
            on = "TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
            on = "DOWNLOAD_REQUEST"
            to = "TRANSFERRING_FIRMWARE"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "transferError"
            from = "TRANSFERRING_FIRMWARE"
            on = "TRANSFER_FAILURE"
            to = "ERROR"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FirmwareUpdateNoMoreTries;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "TRANSFERRING_FIRMWARE"
            on = "TRANSFER_FAILURE"
            to = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"
            when = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FirmwareUpdateTryAgain;
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "killFirmwareTransferUnexpectedLinkDown"
            from = "TRANSFERRING_FIRMWARE"
            on = "LINK_DOWN"
            to = "WAITING_FOR_LINK_UP"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "resetFirmwareUpdateAttemptCount"
            from = "TRANSFERRING_FIRMWARE"
            on = "TRANSFER_SUCCESS"
            to = "WAITING_FOR_LINK_DOWN"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "timeoutError"
            from = "WAITING_FOR_LINK_DOWN"
            on = "TIMEOUT"
            to = "ERROR"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            from = "WAITING_FOR_LINK_DOWN"
            on = "LINK_DOWN"
            to = "WAITING_FOR_LINK_UP"
        .end subannotation,
        .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
            callMethod = "error"
            from = "*"
            on = "*"
            to = "ERROR"
        .end subannotation
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateStateMachine"


# instance fields
.field private linkDownNotified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->linkDownNotified:Z

    return-void
.end method


# virtual methods
.method public afterTransferFirmware(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;->TRANSFER_SUCCESS:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    if-eq p3, p0, :cond_0

    invoke-virtual {p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a()V

    :cond_0
    return-void
.end method

.method public afterTransitionCausedException(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->getLastException()Lorg/squirrelframework/foundation/exception/TransitionException;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->terminate()V

    return-void
.end method

.method public bridge synthetic afterTransitionCausedException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    check-cast p2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    check-cast p3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;

    check-cast p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->afterTransitionCausedException(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V

    return-void
.end method

.method public cancelBleTransmissionRateOverclock(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    invoke-virtual {p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a()V

    return-void
.end method

.method public error(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    return-void
.end method

.method public goToBootloaderStartTimer(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->startTimer(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V

    iget p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a:I

    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    new-instance p2, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    sget-object p3, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_GO_TO_BOOTLOADER:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p3}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {p3}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    sget-object p3, Lcom/lightup/sdk/device/properties/Properties;->r:[B

    invoke-virtual {p2, p3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b([B)V

    check-cast p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    iget-object p3, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->h:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    iget-object v0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->i:Lcom/lightup/sdk/device/devicemanagement/BLEDevice;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->getFirmwareManager(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;

    move-result-object p3

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getDeviceId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevice;->getBleDeviceFirmwareChecksums()Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;

    move-result-object v0

    invoke-virtual {p3, v1}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object p3

    iget-object v0, v0, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->bootloaderChecksum:[B

    iget-object p3, p3, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {p2, p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a(B)V

    iget-object p1, p2, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    iget-object p1, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p1, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->access$100(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/model/device/DeviceMessage;)V

    return-void
.end method

.method public killFirmwareTransferUnexpectedLinkDown(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 2

    move-object v0, p4

    check-cast v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    iget-object v0, v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->unexpectedLinkDown(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V

    return-void
.end method

.method public killTimer(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    monitor-enter p4

    :try_start_0
    iget-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->g:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p4

    return-void

    :goto_1
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public linkBackUp(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    iget-boolean p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->linkDownNotified:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->linkDownNotified:Z

    check-cast p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    iget-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->l(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V

    :cond_0
    return-void
.end method

.method public linkDownError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->CONNECTION_LOST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    iput-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->e:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-void
.end method

.method public noUpdateRequiredError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->NO_UPDATE_REQUIRED:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    iput-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->e:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-void
.end method

.method public overClockBleTransmissionRate(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    iget-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_0

    check-cast p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    iget-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->h:Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;->requestBleTransmissionRateOverclock()V

    :cond_0
    return-void
.end method

.method public resetFirmwareUpdateAttemptCount(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    iput p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->b:I

    return-void
.end method

.method public resetGoToBootloaderAttemptCount(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    const/4 p0, 0x0

    iput p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a:I

    return-void
.end method

.method public startTimer(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/16 p1, 0x7530

    goto :goto_0

    :cond_0
    const/16 p1, 0x1388

    :goto_0
    monitor-enter p4

    :try_start_0
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$1;

    invoke-direct {p3, p4, p1, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext$1;-><init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;ILcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->g:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public timeoutError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    iput-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->e:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-void
.end method

.method public transferError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->TRANSFER_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    iput-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->e:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-void
.end method

.method public transferFirmware(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 8

    iget p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->b:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->b:I

    check-cast p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$9;->a:[I

    iget-object p2, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->h(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$TransferType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    if-eq p0, p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-ne p0, p3, :cond_1

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object p0

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->h:[B

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result v0

    :goto_0
    invoke-static {p2, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->k(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->j(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    :goto_1
    move-object v4, p0

    goto :goto_4

    :cond_1
    const-string p0, "dis should not happen"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object p0

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->k:[B

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p3

    :goto_2
    invoke-static {p2, p3}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->k(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    invoke-static {p2, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->j(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->b(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object p0

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->b:[B

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p3

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p1

    :goto_3
    invoke-static {p2, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->k(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->j(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;I)V

    goto :goto_1

    :goto_4
    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_DATA:Lcom/lightup/sdk/device/messages/MessageInfo;

    sget-object v2, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_ACK:Lcom/lightup/sdk/device/messages/MessageInfo;

    sget-object v3, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_STATUS:Lcom/lightup/sdk/device/messages/MessageInfo;

    iget v5, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->j:I

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->e(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;

    move-result-object v6

    iget v7, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->k:I

    invoke-direct/range {v0 .. v7}, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;-><init>(Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/messages/MessageInfo;Lcom/lightup/sdk/device/messages/MessageInfo;[BILcom/lightup/sdk/device/features/process/dataupload/DataUpdateProcessListener;I)V

    invoke-static {p2, v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->i(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;)V

    invoke-static {p2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->c(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public unexpectedError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    sget-object p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;->UNEXPECTED_ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    iput-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->e:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    return-void
.end method

.method public unexpectedLinkDown(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    iget-boolean p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->linkDownNotified:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->linkDownNotified:Z

    check-cast p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;

    iget-object p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$2;->l:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->m(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V

    :cond_0
    return-void
.end method

.method public waitForDownloadRequestStartTimer(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;->startTimer(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmEvent;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)V

    const/4 p0, 0x1

    iput-boolean p0, p4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->c:Z

    return-void
.end method
