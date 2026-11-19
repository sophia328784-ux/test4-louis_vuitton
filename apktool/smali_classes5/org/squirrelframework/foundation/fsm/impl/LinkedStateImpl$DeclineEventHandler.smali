.class Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeclineEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedListener<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# instance fields
.field private orgStateContext:Lorg/squirrelframework/foundation/fsm/StateContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;Lorg/squirrelframework/foundation/fsm/StateContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateContext<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;->this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;->orgStateContext:Lorg/squirrelframework/foundation/fsm/StateContext;

    return-void
.end method


# virtual methods
.method public transitionDeclined(Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine$TransitionDeclinedEvent<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;->this$0:Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl$DeclineEventHandler;->orgStateContext:Lorg/squirrelframework/foundation/fsm/StateContext;

    invoke-static {p1, p0}, Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;->access$001(Lorg/squirrelframework/foundation/fsm/impl/LinkedStateImpl;Lorg/squirrelframework/foundation/fsm/StateContext;)V

    return-void
.end method
