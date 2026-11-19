.class public Lorg/squirrelframework/foundation/fsm/ActionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/Action;


# annotations
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
        "Lorg/squirrelframework/foundation/fsm/Action<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private final delegator:Lorg/squirrelframework/foundation/fsm/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface/range {p0 .. p5}, Lorg/squirrelframework/foundation/fsm/Action;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    return-void
.end method

.method public isAsync()Z
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Action;->isAsync()Z

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Action;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public timeout()J
    .locals 2

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Action;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public weight()I
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->delegator:Lorg/squirrelframework/foundation/fsm/Action;

    invoke-interface {p0}, Lorg/squirrelframework/foundation/fsm/Action;->weight()I

    move-result p0

    return p0
.end method
