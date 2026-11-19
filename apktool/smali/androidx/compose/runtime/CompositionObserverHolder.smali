.class public final Landroidx/compose/runtime/CompositionObserverHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B%\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/runtime/CompositionObserverHolder;",
        "",
        "Landroidx/compose/runtime/tooling/CompositionObserver;",
        "observer",
        "",
        "root",
        "Landroidx/compose/runtime/CompositionContext;",
        "parent",
        "<init>",
        "(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;)V",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Landroidx/compose/runtime/tooling/CompositionObserver;

.field public final b:Z

.field public final c:Landroidx/compose/runtime/CompositionContext;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/compose/runtime/CompositionObserverHolder;->a:Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 16
    iput-boolean p2, p0, Landroidx/compose/runtime/CompositionObserverHolder;->b:Z

    .line 17
    iput-object p3, p0, Landroidx/compose/runtime/CompositionObserverHolder;->c:Landroidx/compose/runtime/CompositionContext;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionObserverHolder;-><init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/tooling/CompositionObserver;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->a:Landroidx/compose/runtime/tooling/CompositionObserver;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->c:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->l()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/runtime/CompositionObserverHolder;->a:Landroidx/compose/runtime/tooling/CompositionObserver;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionObserverHolder;->a:Landroidx/compose/runtime/tooling/CompositionObserver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->a:Landroidx/compose/runtime/tooling/CompositionObserver;

    :cond_2
    return-object v0
.end method
