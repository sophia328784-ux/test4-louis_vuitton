.class public final Lcoil3/transition/CrossfadeTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/transition/CrossfadeTransition$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB-\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcoil3/transition/CrossfadeTransition;",
        "Lcoil3/transition/Transition;",
        "Lcoil3/transition/TransitionTarget;",
        "target",
        "Lcoil3/request/ImageResult;",
        "result",
        "",
        "durationMillis",
        "",
        "preferExactIntrinsicSize",
        "<init>",
        "(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZ)V",
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

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)V
    .locals 7

    .line 22
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcoil3/transition/CrossfadeTransition;-><init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;I)V
    .locals 7

    .line 21
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcoil3/transition/CrossfadeTransition;-><init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/transition/CrossfadeTransition;->a:Lcoil3/transition/TransitionTarget;

    iput-object p2, p0, Lcoil3/transition/CrossfadeTransition;->b:Lcoil3/request/ImageResult;

    iput p3, p0, Lcoil3/transition/CrossfadeTransition;->c:I

    iput-boolean p4, p0, Lcoil3/transition/CrossfadeTransition;->d:Z

    if-lez p3, :cond_0

    return-void

    :cond_0
    const-string p0, "durationMillis must be > 0."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/16 p3, 0xc8

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil3/transition/CrossfadeTransition;-><init>(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZ)V

    return-void
.end method


# virtual methods
.method public final transition()V
    .locals 10

    new-instance v0, Lcoil3/transition/CrossfadeDrawable;

    iget-object v7, p0, Lcoil3/transition/CrossfadeTransition;->a:Lcoil3/transition/TransitionTarget;

    invoke-interface {v7}, Lcoil3/transition/TransitionTarget;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcoil3/transition/CrossfadeTransition;->b:Lcoil3/request/ImageResult;

    invoke-interface {v8}, Lcoil3/request/ImageResult;->O()Lcoil3/Image;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Lcoil3/transition/TransitionTarget;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v8}, Lcoil3/request/ImageResult;->a()Lcoil3/request/ImageRequest;

    move-result-object v3

    iget-object v3, v3, Lcoil3/request/ImageRequest;->v:Lcoil3/size/Scale;

    instance-of v9, v8, Lcoil3/request/SuccessResult;

    if-eqz v9, :cond_2

    move-object v4, v8

    check-cast v4, Lcoil3/request/SuccessResult;

    iget-boolean v4, v4, Lcoil3/request/SuccessResult;->g:Z

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v5, v4

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    :goto_3
    iget-boolean v6, p0, Lcoil3/transition/CrossfadeTransition;->d:Z

    iget v4, p0, Lcoil3/transition/CrossfadeTransition;->c:I

    invoke-direct/range {v0 .. v6}, Lcoil3/transition/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil3/size/Scale;IZZ)V

    if-eqz v9, :cond_3

    invoke-static {v0}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object p0

    invoke-interface {v7, p0}, Lcoil3/target/Target;->e(Lcoil3/Image;)V

    return-void

    :cond_3
    instance-of p0, v8, Lcoil3/request/ErrorResult;

    if-eqz p0, :cond_4

    invoke-static {v0}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object p0

    invoke-interface {v7, p0}, Lcoil3/target/Target;->b(Lcoil3/Image;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method
