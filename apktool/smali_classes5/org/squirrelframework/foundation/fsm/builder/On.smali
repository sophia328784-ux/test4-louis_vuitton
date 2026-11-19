.class public interface abstract Lorg/squirrelframework/foundation/fsm/builder/On;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/fsm/builder/When;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/squirrelframework/foundation/fsm/StateMachine<",
        "TT;TS;TE;TC;>;S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/fsm/builder/When<",
        "TT;TS;TE;TC;>;"
    }
.end annotation


# virtual methods
.method public abstract when(Lorg/squirrelframework/foundation/fsm/Condition;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Condition<",
            "TC;>;)",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract whenMvel(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/builder/When;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/builder/When<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method
