.class public interface abstract Lorg/squirrelframework/foundation/fsm/StateMachineImporter;
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
.method public abstract importFromFile(Ljava/io/File;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract importFromInputStream(Ljava/io/InputStream;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract importFromString(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/StateMachineBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/squirrelframework/foundation/fsm/StateMachineBuilder<",
            "TT;TS;TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract registerReusableInstance(Ljava/lang/Object;)V
.end method

.method public abstract registerReusableInstance(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract unregisterReusableInstance(Ljava/lang/String;)V
.end method
