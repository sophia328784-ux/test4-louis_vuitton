.class public Lorg/squirrelframework/foundation/fsm/StateMachineContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static contextContainer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Lorg/squirrelframework/foundation/fsm/StateMachineContext;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final currentInstance:Ljava/lang/Object;

.field private final isTestEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext$1;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/StateMachineContext$1;-><init>()V

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->currentInstance:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->isTestEvent:Z

    return-void
.end method

.method public static currentInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;

    iget-object v0, v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->currentInstance:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isTestEvent()Z
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;

    iget-boolean v0, v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->isTestEvent:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static set(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->set(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static set(Ljava/lang/Object;Z)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineContext;->contextContainer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    new-instance v1, Lorg/squirrelframework/foundation/fsm/StateMachineContext;

    invoke-direct {v1, p0, p1}, Lorg/squirrelframework/foundation/fsm/StateMachineContext;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
