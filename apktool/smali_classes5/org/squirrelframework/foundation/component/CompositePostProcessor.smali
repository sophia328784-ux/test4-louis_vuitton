.class public interface abstract Lorg/squirrelframework/foundation/component/CompositePostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract compose(Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract decompose(Lorg/squirrelframework/foundation/component/SquirrelPostProcessor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/component/SquirrelPostProcessor<",
            "-TT;>;)V"
        }
    .end annotation
.end method
