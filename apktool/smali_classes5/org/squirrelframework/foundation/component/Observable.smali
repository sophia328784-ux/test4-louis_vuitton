.class public interface abstract Lorg/squirrelframework/foundation/component/Observable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation
.end method

.method public abstract fireEvent(Lorg/squirrelframework/foundation/event/SquirrelEvent;)V
.end method

.method public abstract getListenerSize()I
.end method

.method public abstract isNotifiable()Z
.end method

.method public abstract removeAllListeners()V
.end method

.method public abstract removeListener(Lcom/google/common/base/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Lorg/squirrelframework/foundation/event/ListenerMethod;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setNotifiable(Z)V
.end method
