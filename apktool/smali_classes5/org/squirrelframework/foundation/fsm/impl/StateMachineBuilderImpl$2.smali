.class Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$2;
.super Lorg/squirrelframework/foundation/fsm/ActionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->warpConditionalAction(Lorg/squirrelframework/foundation/fsm/Action;Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/squirrelframework/foundation/fsm/ActionWrapper<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

.field final synthetic val$condition:Lorg/squirrelframework/foundation/fsm/Condition;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/Action;Lorg/squirrelframework/foundation/fsm/Condition;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$2;->val$condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-direct {p0, p2}, Lorg/squirrelframework/foundation/fsm/ActionWrapper;-><init>(Lorg/squirrelframework/foundation/fsm/Action;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$2;->val$condition:Lorg/squirrelframework/foundation/fsm/Condition;

    invoke-interface {v0, p4}, Lorg/squirrelframework/foundation/fsm/Condition;->isSatisfied(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/squirrelframework/foundation/fsm/ActionWrapper;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    :cond_0
    return-void
.end method
