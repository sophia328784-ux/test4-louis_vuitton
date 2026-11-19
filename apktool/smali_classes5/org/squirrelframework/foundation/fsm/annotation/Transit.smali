.class public interface abstract annotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/squirrelframework/foundation/fsm/annotation/Transit;
        callMethod = ""
        isTargetFinal = false
        priority = 0x1
        type = .enum Lorg/squirrelframework/foundation/fsm/TransitionType;->EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;
        when = Lorg/squirrelframework/foundation/fsm/Conditions$Always;
        whenMvel = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract callMethod()Ljava/lang/String;
.end method

.method public abstract from()Ljava/lang/String;
.end method

.method public abstract isTargetFinal()Z
.end method

.method public abstract on()Ljava/lang/String;
.end method

.method public abstract priority()I
.end method

.method public abstract to()Ljava/lang/String;
.end method

.method public abstract type()Lorg/squirrelframework/foundation/fsm/TransitionType;
.end method

.method public abstract when()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/squirrelframework/foundation/fsm/Condition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whenMvel()Ljava/lang/String;
.end method
