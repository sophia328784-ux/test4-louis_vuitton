.class public Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TerminateEventImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerminateEventImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/squirrelframework/foundation/fsm/StateMachine<",
        "TT;TS;TE;TC;>;S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    return-void
.end method
