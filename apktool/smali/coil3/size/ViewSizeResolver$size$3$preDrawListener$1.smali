.class public final Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "coil3/size/ViewSizeResolver$size$3$preDrawListener$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
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
.field public b:Z

.field public final synthetic c:Lcoil3/size/ViewSizeResolver;

.field public final synthetic d:Landroid/view/ViewTreeObserver;

.field public final synthetic e:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lcoil3/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->c:Lcoil3/size/ViewSizeResolver;

    iput-object p2, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->d:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->e:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->c:Lcoil3/size/ViewSizeResolver;

    invoke-interface {v0}, Lcoil3/size/ViewSizeResolver;->getSize()Lcoil3/size/Size;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->d:Landroid/view/ViewTreeObserver;

    invoke-interface {v0, v3, p0}, Lcoil3/size/ViewSizeResolver;->p(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v0, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->b:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->b:Z

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;->e:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-interface {p0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return v2
.end method
