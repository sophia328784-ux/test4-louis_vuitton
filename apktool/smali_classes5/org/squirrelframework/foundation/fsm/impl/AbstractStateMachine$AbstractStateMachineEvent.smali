.class public abstract Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractStateMachineEvent"
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
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    return-void
.end method


# virtual methods
.method public getStateMachine()Lorg/squirrelframework/foundation/fsm/StateMachine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;->stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    return-object p0
.end method
