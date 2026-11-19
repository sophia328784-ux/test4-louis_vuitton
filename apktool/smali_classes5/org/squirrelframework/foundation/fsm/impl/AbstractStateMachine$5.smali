.class Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->newListenerMethodProxy(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

.field final synthetic val$condition:Ljava/lang/String;

.field final synthetic val$isAsync:Z

.field final synthetic val$listenTarget:Ljava/lang/Object;

.field final synthetic val$listenerMethod:Ljava/lang/reflect/Method;

.field final synthetic val$listenerMethodName:Ljava/lang/String;

.field final synthetic val$timeout:J


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenTarget:Ljava/lang/Object;

    iput-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenerMethodName:Ljava/lang/String;

    iput-object p4, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenerMethod:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$condition:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$isAsync:Z

    iput-wide p7, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getListenTarget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenTarget:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenerMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "."

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    aget-object p1, p3, v1

    instance-of p2, p1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenTarget:Ljava/lang/Object;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenerMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$condition:Ljava/lang/String;

    invoke-static {p2, p3, v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->access$000(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p2, p1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenTarget:Ljava/lang/Object;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenerMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$condition:Ljava/lang/String;

    invoke-static {p2, p3, v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->access$100(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/ActionExecutionService$ActionEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p2, p1, Lorg/squirrelframework/foundation/fsm/StateMachine$StartEvent;

    if-nez p2, :cond_4

    instance-of p2, p1, Lorg/squirrelframework/foundation/fsm/StateMachine$TerminateEvent;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    aget-object p0, p3, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to recognize argument type "

    invoke-static {p1, p0, v0}, Laz;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    check-cast p1, Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iget-object p3, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenTarget:Ljava/lang/Object;

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$listenerMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$condition:Ljava/lang/String;

    invoke-static {p2, p3, v0, p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->access$200(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/squirrelframework/foundation/fsm/StateMachine$StateMachineEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "equals"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    aget-object p1, p3, v1

    if-eq p0, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "hashCode"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "toString"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    iget-boolean p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$isAsync:Z

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "timeout"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$5;->val$timeout:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot invoke method "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
