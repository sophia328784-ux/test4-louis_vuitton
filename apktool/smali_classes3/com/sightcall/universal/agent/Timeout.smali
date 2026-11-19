.class public interface abstract annotation Lcom/sightcall/universal/agent/Timeout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sightcall/universal/agent/Timeout;
        connect = -0x1
        read = -0x1
        write = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Timeout$Connect;,
        Lcom/sightcall/universal/agent/Timeout$Read;,
        Lcom/sightcall/universal/agent/Timeout$Write;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0081\u0002\u0018\u00002\u00020\u0001:\u0003\n\u000b\u000cB8\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u00020\u0003B\u0004\u0008\u0003\u0010\u0001\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u00020\u0003B\u0004\u0008\u0003\u0010\u0001\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u00020\u0003B\u0004\u0008\u0003\u0010\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0008R\u000f\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0008R\u000f\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0008R\u000f\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/universal/agent/Timeout;",
        "",
        "connect",
        "",
        "write",
        "read",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "()I",
        "()Ljava/util/concurrent/TimeUnit;",
        "Read",
        "Write",
        "Connect",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
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
