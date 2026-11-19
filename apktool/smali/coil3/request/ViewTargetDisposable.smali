.class public final Lcoil3/request/ViewTargetDisposable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/request/Disposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/request/ViewTargetDisposable;",
        "Lcoil3/request/Disposable;",
        "Landroid/view/View;",
        "view",
        "Lkotlinx/coroutines/Deferred;",
        "Lcoil3/request/ImageResult;",
        "job",
        "<init>",
        "(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V",
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
.field public final a:Landroid/view/View;

.field public volatile b:Lkotlinx/coroutines/Deferred;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/Deferred<",
            "+",
            "Lcoil3/request/ImageResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/request/ViewTargetDisposable;->a:Landroid/view/View;

    iput-object p2, p0, Lcoil3/request/ViewTargetDisposable;->b:Lkotlinx/coroutines/Deferred;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/Deferred;
    .locals 0

    iget-object p0, p0, Lcoil3/request/ViewTargetDisposable;->b:Lkotlinx/coroutines/Deferred;

    return-object p0
.end method
