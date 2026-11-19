.class Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$2;
.super Lorg/squirrelframework/foundation/fsm/AnonymousAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/squirrelframework/foundation/fsm/AnonymousAction<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/AnonymousAction;-><init>()V

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

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->access$100(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$2;->this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;

    invoke-virtual {p0, p5}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getKey(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateMachine;

    if-eqz p0, :cond_0

    invoke-interface {p0, p4}, Lorg/squirrelframework/foundation/fsm/StateMachine;->terminate(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "__LINK_STATE_EXIT_ACTION"

    return-object p0
.end method
