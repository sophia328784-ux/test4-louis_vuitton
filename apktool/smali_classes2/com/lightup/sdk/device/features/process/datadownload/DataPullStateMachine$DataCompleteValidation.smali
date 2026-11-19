.class Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteValidation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCompleteValidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/Condition<",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;",
        ">;"
    }
.end annotation


# virtual methods
.method public isSatisfied(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)Z
    .locals 0

    .line 13
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic isSatisfied(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteValidation;->isSatisfied(Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmContext;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lr81;->h()V

    const/4 p0, 0x0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$DataCompleteValidation;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
