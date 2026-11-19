.class public final Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowPrefetchStrategy;
.super Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowPrefetchStrategy;",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
        "cacheWindow",
        "<init>",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V",
        "foundation"
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
.field public final p:Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowPrefetchStrategy;->p:Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V
    .locals 2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->b()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowPrefetchStrategy;->p:Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->a:Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->b:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;

    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    return-void
.end method

.method public final e(Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowPrefetchStrategy;->p:Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->a:Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->b:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    return-void
.end method
