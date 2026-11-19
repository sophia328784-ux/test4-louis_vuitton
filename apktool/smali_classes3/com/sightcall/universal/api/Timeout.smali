.class public interface abstract annotation Lcom/sightcall/universal/api/Timeout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sightcall/universal/api/Timeout;
        connect = -0x1
        read = -0x1
        write = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/Timeout$Connect;,
        Lcom/sightcall/universal/api/Timeout$Write;,
        Lcom/sightcall/universal/api/Timeout$Read;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract connect()I
.end method

.method public abstract read()I
.end method

.method public abstract unit()Ljava/util/concurrent/TimeUnit;
.end method

.method public abstract write()I
.end method
