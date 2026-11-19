.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderTryAgain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoToBootloaderTryAgain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/Condition<",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;",
        ">;"
    }
.end annotation


# virtual methods
.method public isSatisfied(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget p0, p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;->a:I

    const/16 p1, 0x8

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSatisfied(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderTryAgain;->isSatisfied(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmContext;)Z

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$GoToBootloaderTryAgain;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
