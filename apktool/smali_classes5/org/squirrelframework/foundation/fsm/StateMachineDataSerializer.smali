.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateMachineDataSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


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
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract serialize(Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachineData$Reader<",
            "TT;TS;TE;TC;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
