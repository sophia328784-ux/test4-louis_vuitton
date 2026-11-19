.class public interface abstract annotation Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/squirrelframework/foundation/fsm/annotation/ContextEvent;
        finishEvent = ""
        startEvent = ""
        terminateEvent = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
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
.method public abstract finishEvent()Ljava/lang/String;
.end method

.method public abstract startEvent()Ljava/lang/String;
.end method

.method public abstract terminateEvent()Ljava/lang/String;
.end method
