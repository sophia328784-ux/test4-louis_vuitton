.class public Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StateMachineExceptionEventImpl;
.super Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateMachineExceptionEventImpl"
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
        "Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineExceptionEvent<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$AbstractStateMachineEvent;-><init>(Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StateMachineExceptionEventImpl;->e:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$StateMachineExceptionEventImpl;->e:Ljava/lang/Exception;

    return-object p0
.end method
