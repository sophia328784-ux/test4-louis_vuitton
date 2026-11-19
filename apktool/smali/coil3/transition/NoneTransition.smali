.class public final Lcoil3/transition/NoneTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/transition/NoneTransition$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/transition/NoneTransition;",
        "Lcoil3/transition/Transition;",
        "Lcoil3/transition/TransitionTarget;",
        "target",
        "Lcoil3/request/ImageResult;",
        "result",
        "<init>",
        "(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)V",
        "Factory",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcoil3/transition/TransitionTarget;

.field public final b:Lcoil3/request/ImageResult;


# direct methods
.method public constructor <init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/transition/NoneTransition;->a:Lcoil3/transition/TransitionTarget;

    iput-object p2, p0, Lcoil3/transition/NoneTransition;->b:Lcoil3/request/ImageResult;

    return-void
.end method


# virtual methods
.method public final transition()V
    .locals 2

    iget-object v0, p0, Lcoil3/transition/NoneTransition;->b:Lcoil3/request/ImageResult;

    instance-of v1, v0, Lcoil3/request/SuccessResult;

    iget-object p0, p0, Lcoil3/transition/NoneTransition;->a:Lcoil3/transition/TransitionTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lcoil3/request/SuccessResult;

    iget-object v0, v0, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    invoke-interface {p0, v0}, Lcoil3/target/Target;->e(Lcoil3/Image;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcoil3/request/ErrorResult;

    if-eqz v1, :cond_1

    check-cast v0, Lcoil3/request/ErrorResult;

    iget-object v0, v0, Lcoil3/request/ErrorResult;->a:Lcoil3/Image;

    invoke-interface {p0, v0}, Lcoil3/target/Target;->b(Lcoil3/Image;)V

    return-void

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void
.end method
