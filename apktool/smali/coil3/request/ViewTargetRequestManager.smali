.class public final Lcoil3/request/ViewTargetRequestManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil3/request/ViewTargetRequestManager;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Landroid/view/View;)V",
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
.field public final b:Landroid/view/View;

.field public c:Lcoil3/request/ViewTargetDisposable;

.field public d:Lkotlinx/coroutines/Job;

.field public e:Lcoil3/request/ViewTargetRequestDelegate;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->e:Lcoil3/request/ViewTargetRequestDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcoil3/request/ViewTargetRequestManager;->f:Z

    iget-object p0, p1, Lcoil3/request/ViewTargetRequestDelegate;->b:Lcoil3/ImageLoader;

    iget-object p1, p1, Lcoil3/request/ViewTargetRequestDelegate;->c:Lcoil3/request/ImageRequest;

    invoke-interface {p0, p1}, Lcoil3/ImageLoader;->d(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcoil3/request/ViewTargetRequestManager;->e:Lcoil3/request/ViewTargetRequestDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestDelegate;->a()V

    :cond_0
    return-void
.end method
