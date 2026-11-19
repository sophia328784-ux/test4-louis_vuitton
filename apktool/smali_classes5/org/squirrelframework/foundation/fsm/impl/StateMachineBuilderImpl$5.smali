.class Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->newStateMachine(Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachineConfiguration;[Ljava/lang/Object;)Lorg/squirrelframework/foundation/fsm/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

.field final synthetic val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$200(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setStartEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$300(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setFinishEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$400(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setTerminateEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$500(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setExtraParamTypes([Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$600(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setTypeOfStateMachine(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$700(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setTypeOfState(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$800(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setTypeOfEvent(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$900(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setTypeOfContext(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->val$stateMachineImpl:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {p0}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$1000(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)Lorg/squirrelframework/foundation/fsm/MvelScriptManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->setScriptManager(Lorg/squirrelframework/foundation/fsm/MvelScriptManager;)V

    return-void
.end method
