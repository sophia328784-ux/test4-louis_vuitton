.class final Lcoil3/compose/internal/DeferredDispatchCoroutineContext;
.super Lcoil3/compose/internal/ForwardingCoroutineContext;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil3/compose/internal/DeferredDispatchCoroutineContext;",
        "Lcoil3/compose/internal/ForwardingCoroutineContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcoil3/compose/internal/ForwardingCoroutineContext;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/compose/internal/ForwardingCoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lcoil3/compose/internal/ForwardingCoroutineContext;
    .locals 2

    sget-object p0, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    sget-object p0, Lkotlin/coroutines/ContinuationInterceptor;->y0:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-virtual {p1, p0}, Lcoil3/compose/internal/ForwardingCoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    instance-of v0, p1, Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-interface {p2, p0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    instance-of p0, p1, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;

    if-eqz p0, :cond_2

    if-eq p1, v1, :cond_2

    check-cast p1, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;

    const/4 p0, 0x0

    iput p0, p1, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;->c:I

    :cond_2
    new-instance p0, Lcoil3/compose/internal/DeferredDispatchCoroutineContext;

    invoke-direct {p0, p2}, Lcoil3/compose/internal/DeferredDispatchCoroutineContext;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object p0
.end method
