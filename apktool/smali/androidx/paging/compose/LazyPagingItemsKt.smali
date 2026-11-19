.class public abstract Landroidx/paging/compose/LazyPagingItemsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "paging-compose_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/paging/LoadStates;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/paging/LoadState$NotLoading;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    new-instance v1, Landroidx/paging/LoadStates;

    sget-object v2, Landroidx/paging/LoadState$Loading;->b:Landroidx/paging/LoadState$Loading;

    invoke-direct {v1, v2, v0, v0}, Landroidx/paging/LoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V

    sput-object v1, Landroidx/paging/compose/LazyPagingItemsKt;->a:Landroidx/paging/LoadStates;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;)Landroidx/paging/compose/LazyPagingItems;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x172138fe

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->w(I)V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x3e5fc273

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Landroidx/paging/compose/LazyPagingItems;

    invoke-direct {v2, p0}, Landroidx/paging/compose/LazyPagingItems;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Landroidx/paging/compose/LazyPagingItems;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->J()V

    const p0, 0x3e5fc2c1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p0, v1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    if-nez p0, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    new-instance v1, Landroidx/paging/compose/LazyPagingItemsKt$collectAsLazyPagingItems$1$1;

    invoke-direct {v1, v0, v2, v4}, Landroidx/paging/compose/LazyPagingItemsKt$collectAsLazyPagingItems$1$1;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/compose/LazyPagingItems;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->J()V

    invoke-static {p1, v2, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const p0, 0x3e5fc3ce

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->w(I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p0, v1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p0, :cond_4

    if-ne v1, v3, :cond_5

    :cond_4
    new-instance v1, Landroidx/paging/compose/LazyPagingItemsKt$collectAsLazyPagingItems$2$1;

    invoke-direct {v1, v0, v2, v4}, Landroidx/paging/compose/LazyPagingItemsKt$collectAsLazyPagingItems$2$1;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/compose/LazyPagingItems;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->J()V

    invoke-static {p1, v2, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->J()V

    return-object v2
.end method
