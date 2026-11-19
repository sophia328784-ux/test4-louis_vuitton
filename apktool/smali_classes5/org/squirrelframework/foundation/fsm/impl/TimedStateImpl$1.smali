.class Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;
.super Lorg/squirrelframework/foundation/fsm/AnonymousAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;
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
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/AnonymousAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;TE;TC;TT;)V"
        }
    .end annotation

    new-instance v1, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;

    invoke-direct {v1, p0, p5}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1$1;-><init>(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;Lorg/squirrelframework/foundation/fsm/StateMachine;)V

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$200(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    if-gtz p1, :cond_0

    invoke-static {p2}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$400(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {p2}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$300(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)J

    move-result-wide p2

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$400(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$300(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)J

    move-result-wide v2

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {p1}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$200(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-static {p2}, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;->access$500(Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;)Ljava/util/Map;

    move-result-object p2

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl$1;->this$0:Lorg/squirrelframework/foundation/fsm/impl/TimedStateImpl;

    invoke-virtual {p0, p5}, Lorg/squirrelframework/foundation/fsm/impl/StateImpl;->getKey(Lorg/squirrelframework/foundation/fsm/StateMachine;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "__TIMED_STATE_ENTRY_ACTION"

    return-object p0
.end method

.method public weight()I
    .locals 0

    const p0, -0x7fffffff

    return p0
.end method
