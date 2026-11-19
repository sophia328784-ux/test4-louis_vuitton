.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateMachineData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;,
        Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    }
.end annotation

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
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract dump(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)V"
        }
    .end annotation
.end method

.method public abstract read()Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract write()Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Writer<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method
