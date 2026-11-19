.class Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;->removeDeclarativeListener(Lorg/squirrelframework/foundation/component/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lorg/squirrelframework/foundation/event/ListenerMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

.field final synthetic val$listenTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;->this$0:Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine;

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;->val$listenTarget:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lorg/squirrelframework/foundation/event/ListenerMethod;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;->apply(Lorg/squirrelframework/foundation/event/ListenerMethod;)Z

    move-result p0

    return p0
.end method

.method public apply(Lorg/squirrelframework/foundation/event/ListenerMethod;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/event/ListenerMethod;->getTarget()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$DeclarativeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/event/ListenerMethod;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$DeclarativeListener;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$DeclarativeListener;->getListenTarget()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/AbstractStateMachine$7;->val$listenTarget:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
