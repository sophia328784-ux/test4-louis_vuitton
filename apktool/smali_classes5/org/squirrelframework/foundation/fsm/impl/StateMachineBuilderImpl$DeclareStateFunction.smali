.class Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeclareStateFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;


# direct methods
.method private constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;-><init>(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    const-class v1, Lorg/squirrelframework/foundation/fsm/annotation/State;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/squirrelframework/foundation/fsm/annotation/State;

    invoke-static {v0, v1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$1200(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/annotation/State;)V

    const-class v0, Lorg/squirrelframework/foundation/fsm/annotation/States;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/squirrelframework/foundation/fsm/annotation/States;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/States;->value()[Lorg/squirrelframework/foundation/fsm/annotation/State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/annotation/States;->value()[Lorg/squirrelframework/foundation/fsm/annotation/State;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;->this$0:Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;

    invoke-static {v3, v2}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;->access$1200(Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl;Lorg/squirrelframework/foundation/fsm/annotation/State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/squirrelframework/foundation/fsm/impl/StateMachineBuilderImpl$DeclareStateFunction;->apply(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
