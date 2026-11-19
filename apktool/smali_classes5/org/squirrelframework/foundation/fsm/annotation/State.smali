.class public interface abstract annotation Lorg/squirrelframework/foundation/fsm/annotation/State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/squirrelframework/foundation/fsm/annotation/State;
        alias = ""
        compositeType = .enum Lorg/squirrelframework/foundation/fsm/StateCompositeType;->SEQUENTIAL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;
        entryCallMethod = ""
        exitCallMethod = ""
        historyType = .enum Lorg/squirrelframework/foundation/fsm/HistoryType;->NONE:Lorg/squirrelframework/foundation/fsm/HistoryType;
        initialState = false
        isFinal = false
        parent = ""
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
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract compositeType()Lorg/squirrelframework/foundation/fsm/StateCompositeType;
.end method

.method public abstract entryCallMethod()Ljava/lang/String;
.end method

.method public abstract exitCallMethod()Ljava/lang/String;
.end method

.method public abstract historyType()Lorg/squirrelframework/foundation/fsm/HistoryType;
.end method

.method public abstract initialState()Z
.end method

.method public abstract isFinal()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract parent()Ljava/lang/String;
.end method
