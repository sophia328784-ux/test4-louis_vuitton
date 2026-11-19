.class Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$4;
.super Lorg/squirrelframework/foundation/fsm/AnonymousAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->installFinalStateActions()V
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
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;


# direct methods
.method public constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$4;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

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

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Final state cannot be exited anymore."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "__FINAL_STATE_ACTION_GUARD"

    return-object p0
.end method
