.class Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;

.field final synthetic val$stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;->this$1:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;->val$stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;->val$stateMachine:Lorg/squirrelframework/foundation/fsm/StateMachine;

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;->this$1:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;

    iget-object v1, v1, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {v1}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$000(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;->this$1:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {p0}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$100(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/squirrelframework/foundation/fsm/StateMachine;->fire(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
