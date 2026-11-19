.class public Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionBeginEventImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionBeginEventImpl"
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
        "Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent<",
        "TT;TS;TE;TC;>;",
        "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionBeginEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TC;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    return-void
.end method
