.class public Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionEndEventImpl"
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
        "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEndEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final targetState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4, p5}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractTransitionEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;->targetState:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTargetState()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$TransitionEndEventImpl;->targetState:Ljava/lang/Object;

    return-object p0
.end method
