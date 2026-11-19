.class Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;->doExecute(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;

.field final synthetic val$actionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

.field final synthetic val$instance:Lorg/squirrelframework/foundation/fsm/StateMachine;

.field final synthetic val$isTestEvent:Z


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;Lorg/squirrelframework/foundation/fsm/StateMachine;ZLorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->val$instance:Lorg/squirrelframework/foundation/fsm/StateMachine;

    iput-boolean p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->val$isTestEvent:Z

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->val$actionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->val$instance:Lorg/squirrelframework/foundation/fsm/StateMachine;

    iget-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->val$isTestEvent:Z

    invoke-static {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$1;->val$actionContext:Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/fsm/impl/AbstractExecutionService$ActionContext;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;)V

    throw p0
.end method
