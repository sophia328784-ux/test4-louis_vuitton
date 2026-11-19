.class public abstract Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTransitionEvent"
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
        "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final sourceState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TC;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;->sourceState:Ljava/lang/Object;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;->event:Ljava/lang/Object;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;->context:Ljava/lang/Object;

    return-object p0
.end method

.method public getSourceState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;->sourceState:Ljava/lang/Object;

    return-object p0
.end method
