.class public final Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
.super Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;",
        "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;",
        "Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;",
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
.field public final p:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->p:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V
    .locals 2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->b()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->b()I

    move-result p0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_1

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->p:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->a:Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->b:Landroidx/compose/foundation/lazy/LazyListPrefetchScope;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    return-void
.end method

.method public final c(Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->p:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->a:Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->b:Landroidx/compose/foundation/lazy/LazyListPrefetchScope;

    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    return-void
.end method
