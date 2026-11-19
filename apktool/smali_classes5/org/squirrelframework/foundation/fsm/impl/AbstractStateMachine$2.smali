.class Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/StateMachine$StartListener<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

.field final synthetic val$logger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Lorg/squirrelframework/foundation/fsm/StateMachineLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$2;->val$logger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public started(Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$2;->val$logger:Lorg/squirrelframework/foundation/fsm/StateMachineLogger;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/StateMachineLogger;->startLogging()V

    return-void
.end method
