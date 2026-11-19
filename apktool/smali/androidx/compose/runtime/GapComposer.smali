.class public final Landroidx/compose/runtime/GapComposer;
.super Landroidx/compose/runtime/InternalComposer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/GapComposer$CompositionContextHolder;,
        Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001:\u0002\u0014\u0015BQ\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/runtime/GapComposer;",
        "Landroidx/compose/runtime/InternalComposer;",
        "Landroidx/compose/runtime/Applier;",
        "applier",
        "Landroidx/compose/runtime/CompositionContext;",
        "parentContext",
        "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;",
        "slotTable",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "abandonSet",
        "Landroidx/compose/runtime/Changes;",
        "changes",
        "lateChanges",
        "Landroidx/compose/runtime/CompositionObserverHolder;",
        "observerHolder",
        "Landroidx/compose/runtime/CompositionImpl;",
        "composition",
        "<init>",
        "(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V",
        "CompositionContextHolder",
        "CompositionContextImpl",
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
.field public A:I

.field public B:I

.field public C:Z

.field public final D:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

.field public final E:Ljava/util/ArrayList;

.field public F:Z

.field public G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

.field public H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

.field public J:Z

.field public K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public L:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

.field public N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

.field public O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

.field public P:Landroidx/compose/runtime/ShouldPauseCallback;

.field public final Q:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

.field public final R:Lkotlin/coroutines/CoroutineContext;

.field public S:Z

.field public T:J

.field public U:Landroidx/compose/runtime/GapCompositionDataImpl;

.field public final a:Landroidx/compose/runtime/Applier;

.field public final b:Landroidx/compose/runtime/CompositionContext;

.field public final c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public final d:Ljava/util/Set;

.field public final e:Landroidx/compose/runtime/Changes;

.field public final f:Landroidx/compose/runtime/Changes;

.field public final g:Landroidx/compose/runtime/CompositionObserverHolder;

.field public final h:Landroidx/compose/runtime/CompositionImpl;

.field public final i:Ljava/util/ArrayList;

.field public j:Landroidx/compose/runtime/GapPending;

.field public k:I

.field public l:I

.field public m:I

.field public final n:Landroidx/compose/runtime/IntStack;

.field public o:[I

.field public p:Landroidx/collection/MutableIntIntMap;

.field public q:Z

.field public r:Z

.field public final s:Ljava/util/ArrayList;

.field public final t:Landroidx/compose/runtime/IntStack;

.field public u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public v:Landroidx/collection/MutableIntObjectMap;

.field public w:Z

.field public final x:Landroidx/compose/runtime/IntStack;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Landroidx/compose/runtime/Changes;",
            "Landroidx/compose/runtime/Changes;",
            "Landroidx/compose/runtime/CompositionObserverHolder;",
            "Landroidx/compose/runtime/CompositionImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/InternalComposer;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    iput-object p2, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    iput-object p3, p0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iput-object p4, p0, Landroidx/compose/runtime/GapComposer;->d:Ljava/util/Set;

    iput-object p5, p0, Landroidx/compose/runtime/GapComposer;->e:Landroidx/compose/runtime/Changes;

    iput-object p6, p0, Landroidx/compose/runtime/GapComposer;->f:Landroidx/compose/runtime/Changes;

    iput-object p7, p0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    iput-object p8, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->t:Landroidx/compose/runtime/IntStack;

    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->a()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/GapComposer;->z:I

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->g()Z

    move-result p1

    const/4 p4, 0x0

    const/4 p6, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p6

    :goto_1
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    new-instance p1, Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/GapComposer;)V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->D:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-direct {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->g()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i()V

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->e()Z

    move-result p3

    const/4 p7, 0x0

    if-eqz p3, :cond_3

    new-instance p3, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {p3, p4, p6, p7}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->l:Landroidx/collection/MutableIntObjectMap;

    :cond_3
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->o()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    instance-of p3, p5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    if-eqz p3, :cond_4

    check-cast p5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    goto :goto_2

    :cond_4
    move-object p5, p7

    :goto_2
    if-eqz p5, :cond_6

    invoke-direct {p1, p0, p5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    iput-object p3, p0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    invoke-direct {p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    new-instance p1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;-><init>(Landroidx/compose/runtime/InternalComposer;)V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->Q:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->k()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->N()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    :goto_3
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->R:Lkotlin/coroutines/CoroutineContext;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw p0

    :cond_6
    const-string p0, "Inconsistent composition"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    throw p7
.end method

.method public static final s0(Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MovableContentStateReference;
    .locals 13

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v1, p1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x78cc281

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    instance-of v0, v1, Landroidx/compose/runtime/MovableContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/GapComposer;->t0(Landroidx/compose/runtime/GapComposer;Ljava/util/ArrayList;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object v12, v3

    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/MovableContent;

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v9

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v0

    add-int/2addr v0, p1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Invalidation;

    iget v4, v3, Landroidx/compose/runtime/Invalidation;->b:I

    if-ge v4, v0, :cond_2

    iget-object v4, v3, Landroidx/compose/runtime/Invalidation;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v3, v3, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v7, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    iget-object v8, p0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->V(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-direct/range {v4 .. v12}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotStorage;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/util/List;)V

    return-object v4

    :cond_3
    return-object v3
.end method

.method public static final t0(Landroidx/compose/runtime/GapComposer;Ljava/util/ArrayList;I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 p2, p2, 0x1

    :goto_0
    if-ge p2, v0, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->j(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Landroidx/compose/runtime/GapComposer;->s0(Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MovableContentStateReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/GapComposer;->t0(Landroidx/compose/runtime/GapComposer;Ljava/util/ArrayList;I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {p2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final u0(Landroidx/compose/runtime/GapComposer;IIZI)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->j(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_11

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result v5

    iget-object v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v4, v2, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v8

    const v9, 0x78cc281

    if-ne v5, v9, :cond_4

    instance-of v9, v8, Landroidx/compose/runtime/MovableContent;

    if-eqz v9, :cond_4

    invoke-static {v0, v2}, Landroidx/compose/runtime/GapComposer;->s0(Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MovableContentStateReference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/CompositionContext;->c(Landroidx/compose/runtime/MovableContentStateReference;)V

    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e()V

    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v11, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ReleaseMovableGroupAtCurrent;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ReleaseMovableGroupAtCurrent;

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {v8, v9, v10, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->c(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_3

    if-eq v2, v1, :cond_3

    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v4, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result v7

    :goto_0
    if-lez v7, :cond_2

    invoke-virtual {v0, v3, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f(II)V

    :cond_2
    return v6

    :cond_3
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result v0

    return v0

    :cond_4
    const/16 v1, 0xce

    if-ne v5, v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->e:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4, v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroidx/compose/runtime/RememberObserverHolder;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    goto :goto_1

    :cond_5
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserverHolder;->a()Landroidx/compose/runtime/RememberObserver;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v5

    :goto_2
    instance-of v3, v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    if-eqz v3, :cond_7

    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    :cond_7
    if-eqz v5, :cond_e

    iget-object v1, v5, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->b:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    iget-object v1, v1, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->f:Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_e

    move v8, v6

    :goto_3
    aget-wide v9, v1, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_d

    sub-int v11, v8, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v13, v6

    :goto_4
    if-ge v13, v11, :cond_c

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_b

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, Landroidx/compose/runtime/GapComposer;

    iget-object v15, v14, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    const/16 v16, 0x1

    iget v7, v15, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c:I

    if-lez v7, :cond_a

    iget-object v7, v15, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->b:[I

    aget v7, v7, v16

    const/high16 v15, 0x4000000

    and-int/2addr v7, v15

    if-eqz v7, :cond_a

    iget-object v7, v14, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    iget-object v15, v7, Landroidx/compose/runtime/CompositionImpl;->e:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/CompositionImpl;->G()V

    move/from16 p1, v12

    iget-object v12, v7, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/collection/MutableScatterMap;

    invoke-static {}, Landroidx/collection/ScatterMapKt;->b()Landroidx/collection/MutableScatterMap;

    move-result-object v6

    iput-object v6, v7, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/collection/MutableScatterMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v6, v7, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->D0(Landroidx/collection/MutableScatterMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v15

    new-instance v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-direct {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    iput-object v6, v14, Landroidx/compose/runtime/GapComposer;->L:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v7, v14, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v7

    :try_start_2
    iput-object v7, v14, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v12, v14, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v6, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->r0(I)V

    iget-object v6, v14, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    move-object/from16 p3, v1

    iget-boolean v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    move-object/from16 p4, v3

    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-boolean v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    iget-object v3, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v1, 0x0

    iput-boolean v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :cond_8
    move-object/from16 p4, v3

    :cond_9
    const/4 v1, 0x0

    :goto_5
    :try_start_4
    iput-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_5
    iput-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    iput-object v12, v7, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/collection/MutableScatterMap;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v15

    throw v0

    :cond_a
    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move v1, v6

    move/from16 p1, v12

    :goto_7
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    iget-object v6, v14, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/CompositionContext;->v(Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_8

    :cond_b
    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move v1, v6

    move/from16 p1, v12

    const/16 v16, 0x1

    :goto_8
    shr-long v9, v9, p1

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, p1

    move-object/from16 v3, p4

    move v6, v1

    move-object/from16 v1, p3

    goto/16 :goto_4

    :cond_c
    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move v1, v6

    move v3, v12

    const/16 v16, 0x1

    if-ne v11, v3, :cond_e

    goto :goto_9

    :cond_d
    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move v1, v6

    const/16 v16, 0x1

    :goto_9
    if-eq v8, v5, :cond_e

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p4

    move v6, v1

    move-object/from16 v1, p3

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result v0

    return v0

    :cond_f
    const/16 v16, 0x1

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_e

    :cond_10
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result v0

    return v0

    :cond_11
    move/from16 v17, v6

    const/16 v16, 0x1

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->d(I)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v2, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v6, v2, 0x1

    move/from16 v7, v17

    :goto_a
    if-ge v6, v5, :cond_17

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v9, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-nez v8, :cond_14

    if-eqz p3, :cond_13

    goto :goto_b

    :cond_13
    move/from16 v9, v17

    goto :goto_c

    :cond_14
    :goto_b
    move/from16 v9, v16

    :goto_c
    if-eqz v8, :cond_15

    move/from16 v10, v17

    goto :goto_d

    :cond_15
    add-int v10, v3, v7

    :goto_d
    invoke-static {v0, v1, v6, v9, v10}, Landroidx/compose/runtime/GapComposer;->u0(Landroidx/compose/runtime/GapComposer;IIZI)I

    move-result v9

    add-int/2addr v7, v9

    if-eqz v8, :cond_16

    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    :cond_16
    iget-object v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v6, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_a

    :cond_17
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_e

    :cond_18
    return v7

    :cond_19
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_e
    return v16

    :cond_1a
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final A0(Ljava/lang/Object;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x1

    aget p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Expected a node group"

    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->u()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    iget-object p2, p2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p2, p2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {p2, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->u()V

    return-void
.end method

.method public final B()V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/runtime/composer/GroupKind;->c:I

    const/4 v1, 0x0

    const/16 v2, 0x7d

    invoke-virtual {p0, v1, v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    return-void
.end method

.method public final B0()V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    sget-object v1, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v2, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionContext;->x()V

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionContext;->j()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    iget-boolean v6, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/IntStack;->c(I)V

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->q:Z

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionContext;->f()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->q:Z

    :cond_0
    iget-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionContext;->g()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    :cond_1
    iget-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/compose/runtime/StaticValueHolder;

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->N()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->l(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v4

    :cond_2
    iput-object v4, p0, Landroidx/compose/runtime/GapComposer;->u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget-object v5, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v4, v5}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->f0()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/CompositionContext;->s(Ljava/util/Set;)V

    :cond_3
    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionContext;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, v3, v2, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function0;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_1

    const-string v1, "createNode() can only be called when inserting"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->a:[I

    iget v1, v1, Landroidx/compose/runtime/IntStack;->b:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v2, v1

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v2

    iget v4, p0, Landroidx/compose/runtime/GapComposer;->l:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/compose/runtime/GapComposer;->l:I

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {v4, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget-object p1, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget-object v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v7, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    sub-int/2addr v7, v3

    aget-object v6, v6, v7

    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr v5, v6

    aput v1, p1, v5

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    sub-int/2addr v6, v3

    aget-object v3, v5, v6

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr v4, v3

    aput v1, p1, v4

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    return-void
.end method

.method public final C0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    if-lt v0, v1, :cond_6

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    add-int/2addr v1, v2

    neg-int v1, v1

    instance-of v4, p2, Landroidx/compose/runtime/DerivedState;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v3, p1, v0, p2}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Invalidation;

    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    if-nez p1, :cond_3

    iput-object p2, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    return v2

    :cond_3
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    return v2

    :cond_4
    sget-object v0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    return v2

    :cond_5
    iput-object v3, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    return v2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final D()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->l:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->g0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w0()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->n0()V

    :cond_4
    return-void
.end method

.method public final D0(Landroidx/collection/MutableScatterMap;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v2

    :goto_0
    const/4 v4, -0x1

    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Invalidation;

    iget-object v5, v4, Landroidx/compose/runtime/Invalidation;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v5, v5, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroidx/compose/runtime/Invalidation;->b:I

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a:I

    if-eq v5, v3, :cond_2

    iput v3, v4, Landroidx/compose/runtime/Invalidation;->b:I

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    iget-object v4, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterMap;->a:[J

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_8

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    aget-wide v8, v1, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_4
    if-ge v12, v10, :cond_6

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v14, v2, v13

    aget-object v13, v4, v13

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    if-eqz v15, :cond_5

    invoke-static {v15}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v15

    iget v15, v15, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a:I

    sget-object v3, Landroidx/compose/runtime/ScopeInvalidated;->a:Landroidx/compose/runtime/ScopeInvalidated;

    if-ne v13, v3, :cond_4

    const/4 v13, 0x0

    :cond_4
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v3, v14, v15, v13}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    if-ne v10, v11, :cond_8

    :cond_7
    if-eq v7, v5, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    sget-object v1, Landroidx/compose/runtime/GapComposerKt;->a:Landroidx/compose/runtime/c;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    return-void
.end method

.method public final E(Landroidx/compose/runtime/RecomposeScope;)V
    .locals 0

    instance-of p0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    or-int/lit8 p0, p0, 0x1

    iput p0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    :cond_1
    return-void
.end method

.method public final E0(II)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    const/4 v0, 0x0

    if-gez p1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/collection/MutableIntIntMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroidx/collection/MutableIntIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    :cond_0
    invoke-virtual {v1, p1, p2}, Landroidx/collection/MutableIntIntMap;->f(II)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x6

    invoke-static {v2, v0, v3, v1}, Lkotlin/collections/ArraysKt;->s(III[I)V

    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    :cond_2
    aput p2, v1, p1

    :cond_3
    return-void
.end method

.method public final F()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-void
.end method

.method public final F0(II)V
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3}, Landroidx/compose/runtime/GapComposer;->E0(II)V

    move v4, v1

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/GapPending;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1, v3}, Landroidx/compose/runtime/GapPending;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    if-gez p1, :cond_2

    iget p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final G0(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->U(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-boolean v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n:Z

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    iget-object v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-static {v0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->c(I[I)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iget v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    sub-int/2addr v0, v5

    if-gez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p0

    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {v0, v3, p1, v4, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget p1, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    sub-int/2addr v0, v4

    aget-object v0, v2, v0

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr p1, v0

    aput v1, p0, p1

    return-void

    :cond_1
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    iget-object p0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {p0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    sub-int/2addr p0, v4

    aget-object p0, v2, p0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr v0, p0

    aput v1, p1, v0

    return-void

    :cond_2
    iget p0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p0

    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {v0, v3, p0, v4, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final H()Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
    .locals 9

    const/16 v0, 0xce

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->e:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->z(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    new-instance v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    new-instance v2, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    iget-wide v4, p0, Landroidx/compose/runtime/GapComposer;->T:J

    iget-boolean v6, p0, Landroidx/compose/runtime/GapComposer;->q:Z

    iget-boolean v7, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    iget-object v8, v3, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/CompositionObserverHolder;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;-><init>(Landroidx/compose/runtime/GapComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V

    invoke-direct {v1, v2}, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;-><init>(Landroidx/compose/runtime/GapComposer$CompositionContextImpl;)V

    const/4 p0, -0x1

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserverHolder;->a()Landroidx/compose/runtime/RememberObserver;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->b:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->g:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-object p0
.end method

.method public final H0(I)I
    .locals 2

    if-gez p1, :cond_2

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->a(I)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->a(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Landroidx/collection/IntIntMap;->c:[I

    aget p0, p0, v1

    return p0

    :cond_0
    const-string p0, "Cannot find value for key "

    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    if-eqz v0, :cond_3

    aget v0, v0, p1

    if-ltz v0, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result p0

    return p0
.end method

.method public final I()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-void
.end method

.method public final J()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-void
.end method

.method public final K(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L(I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, p1, v2, v1}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    if-eqz v0, :cond_1

    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    iget-wide v3, p0, Landroidx/compose/runtime/GapComposer;->T:J

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    int-to-long v6, p1

    xor-long/2addr v3, v6

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    int-to-long v5, v0

    xor-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/compose/runtime/GapComposer;->T:J

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_2

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v0, v5, v5, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->d0(ZLandroidx/compose/runtime/GapPending;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    move-result v4

    if-ne v4, p1, :cond_4

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    if-ge v4, v6, :cond_3

    iget-object v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v4, v3

    aget v4, v6, v4

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->u()V

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->d0(ZLandroidx/compose/runtime/GapPending;)V

    return-void

    :cond_4
    :goto_0
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    if-ne v4, v6, :cond_6

    goto :goto_1

    :cond_6
    iget v6, p0, Landroidx/compose/runtime/GapComposer;->k:I

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->o0()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f(II)V

    iget-object v6, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    iget v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-static {v6, v4, v7}, Landroidx/compose/runtime/GapComposerKt;->a(Ljava/util/ArrayList;II)V

    :goto_1
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    iput-boolean v3, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->o()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->O()V

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->J:Z

    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->d()V

    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    invoke-virtual {v0, v5, v5, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->d0(ZLandroidx/compose/runtime/GapPending;)V

    return-void
.end method

.method public final M()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Cannot disable reuse from root if it was caused by other groups"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    return-void
.end method

.method public final N()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->Q:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final O()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    return p0
.end method

.method public final P()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->i()Landroidx/compose/runtime/Composition;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->g:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->e(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v2

    :try_start_0
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    const/4 v4, 0x0

    invoke-static {v2, p0, v4, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->b(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    if-eqz p0, :cond_2

    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->e(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->c(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->P()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw p0

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw p0
.end method

.method public final Q(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_9

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_2

    instance-of v6, v4, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v6, :cond_0

    check-cast v4, Landroidx/compose/runtime/RememberObserverHolder;

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroidx/compose/runtime/RememberObserverHolder;->a()Landroidx/compose/runtime/RememberObserver;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_2
    if-ne v4, p1, :cond_3

    :cond_2
    new-instance p1, Landroidx/compose/runtime/tooling/ObjectLocation;

    invoke-direct {p1, v3, v5}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    move-object v5, p1

    goto :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_3
    :try_start_1
    iget-object v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->c(I[I)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    iget v8, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    if-ge v7, v8, :cond_4

    mul-int/lit8 v8, v7, 0x5

    add-int/lit8 v8, v8, 0x4

    aget v4, v4, v8

    goto :goto_3

    :cond_4
    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->e:I

    :goto_3
    sub-int/2addr v4, v6

    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_a

    invoke-virtual {v1, v3, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, p1, :cond_8

    instance-of v9, v8, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v9, :cond_5

    check-cast v8, Landroidx/compose/runtime/RememberObserverHolder;

    goto :goto_5

    :cond_5
    move-object v8, v5

    :goto_5
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroidx/compose/runtime/RememberObserverHolder;->a()Landroidx/compose/runtime/RememberObserver;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object v8, v5

    :goto_6
    if-ne v8, p1, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    new-instance v5, Landroidx/compose/runtime/tooling/ObjectLocation;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v5, v3, p1}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    goto :goto_8

    :cond_a
    move v3, v7

    goto :goto_0

    :goto_8
    if-eqz v5, :cond_b

    iget p1, v5, Landroidx/compose/runtime/tooling/ObjectLocation;->a:I

    iget-object v1, v5, Landroidx/compose/runtime/tooling/ObjectLocation;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v0

    :try_start_2
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->c(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->P()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_9

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw p0

    :cond_b
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_9
    new-instance v0, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    invoke-direct {v0, p1, p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    return-object v0

    :goto_a
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw p0
.end method

.method public final R()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    return-void
.end method

.method public final S()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->T()V

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/runtime/IntStack;->b:I

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->t:Landroidx/compose/runtime/IntStack;

    iput v1, v0, Landroidx/compose/runtime/IntStack;->b:I

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    iput v1, v0, Landroidx/compose/runtime/IntStack;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    iput v1, p0, Landroidx/compose/runtime/GapComposer;->A:I

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-boolean v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->e0()V

    :cond_1
    return-void
.end method

.method public final T()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    iput v1, p0, Landroidx/compose/runtime/GapComposer;->l:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iput-boolean v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    iput v1, v3, Landroidx/compose/runtime/IntStack;->b:I

    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->g:I

    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, -0x1

    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->i:I

    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->j:I

    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->k:I

    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method public final U()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->V(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public final V(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    const/16 v1, 0xca

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->q(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    invoke-virtual {v2, v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->G(I[I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    if-lez v0, :cond_5

    :goto_1
    if-lez p1, :cond_5

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b(I[I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_3
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0

    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1
.end method

.method public final W()Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    invoke-static {v2, v1, v3, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-boolean v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f:Z

    iget-object v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    if-nez v2, :cond_2

    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V

    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iget v5, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    invoke-static {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->c(I[I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_0
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result v7

    iget-object v8, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->q(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object v8

    invoke-virtual {v2, v7, v6, v8, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->d(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_2
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->P()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    invoke-direct {v1, v0, p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    :cond_3
    return-object v1
.end method

.method public final X(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    .locals 7

    const-string v0, "Check failed"

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    iget-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    if-eqz v2, :cond_0

    const-string v2, "Reentrant composition is not supported"

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionObserverHolder;->a()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v2

    const-string v3, "Compose:recompose"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    iput v3, p0, Landroidx/compose/runtime/GapComposer;->B:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->D0(Landroidx/collection/MutableScatterMap;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/runtime/tooling/CompositionObserver;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->B0()V

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v5, p0, Landroidx/compose/runtime/GapComposer;->D:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->c()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    const/16 v5, 0xc8

    if-eqz p2, :cond_3

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->a(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_3
    iget-boolean p2, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    if-eqz p2, :cond_4

    if-eqz v4, :cond_4

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0, v5, p2}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->a(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->v0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    iget p2, v6, Landroidx/compose/runtime/collection/MutableVector;->d:I

    sub-int/2addr p2, v3

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/collection/MutableVector;->o(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->c0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v2}, Landroidx/compose/runtime/tooling/CompositionObserver;->a()V

    :cond_5
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-boolean p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    if-nez p1, :cond_6

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->e0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_5
    iget v4, v6, Landroidx/compose/runtime/collection/MutableVector;->d:I

    sub-int/2addr v4, v3

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/collection/MutableVector;->o(I)Ljava/lang/Object;

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    new-instance v3, Lt00;

    invoke-direct {v3, p0, p1}, Lt00;-><init>(Landroidx/compose/runtime/GapComposer;I)V

    invoke-static {p2, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz v2, :cond_7

    :try_start_7
    invoke-interface {v2}, Landroidx/compose/runtime/tooling/CompositionObserver;->a()V

    :cond_7
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->S()V

    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-boolean p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    if-nez p1, :cond_8

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->e0()V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final Y(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/GapComposer;->Y(II)V

    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final Z(Z)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->a:[I

    iget v3, v1, Landroidx/compose/runtime/IntStack;->b:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/16 v6, 0xcf

    const/4 v7, 0x3

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    move-result v4

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->q(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_1

    if-eqz v8, :cond_0

    if-ne v4, v6, :cond_0

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    int-to-long v8, v2

    xor-long/2addr v5, v8

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v8, v4

    xor-long v4, v5, v8

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    goto/16 :goto_4

    :cond_0
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    int-to-long v8, v2

    xor-long/2addr v5, v8

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v8, v4

    xor-long v4, v5, v8

    :goto_0
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    goto/16 :goto_4

    :cond_1
    instance-of v2, v9, Ljava/lang/Enum;

    if-eqz v2, :cond_2

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_1
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    int-to-long v8, v2

    xor-long/2addr v4, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result v4

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v9, v8, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v11, v10, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v10, v8, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b(I[I)Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_5

    if-eqz v8, :cond_4

    if-ne v4, v6, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    int-to-long v8, v2

    xor-long/2addr v5, v8

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v8, v4

    xor-long v4, v5, v8

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    goto :goto_4

    :cond_4
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    int-to-long v8, v2

    xor-long/2addr v5, v8

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v8, v4

    xor-long v4, v5, v8

    :goto_2
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    goto :goto_4

    :cond_5
    instance-of v2, v9, Ljava/lang/Enum;

    if-eqz v2, :cond_6

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_3
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    int-to-long v8, v2

    xor-long/2addr v4, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :goto_4
    iget v2, v0, Landroidx/compose/runtime/GapComposer;->l:I

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    if-eqz v4, :cond_22

    iget-object v9, v4, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    iget v10, v4, Landroidx/compose/runtime/GapPending;->b:I

    iget-object v11, v4, Landroidx/compose/runtime/GapPending;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_22

    iget-object v12, v4, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    new-instance v13, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_7

    const/16 v16, -0x1

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    const/16 v16, -0x1

    invoke-static {}, Landroidx/collection/ScatterSetKt;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v17, v3

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_6
    if-ge v3, v15, :cond_21

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v20, v1

    iget v1, v7, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v9, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/composer/GroupInfo;

    if-eqz v1, :cond_8

    iget v1, v1, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    move/from16 v21, v1

    goto :goto_7

    :cond_8
    move/from16 v21, v16

    :goto_7
    iget v1, v7, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    move/from16 v22, v3

    add-int v3, v21, v10

    iget v7, v7, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    invoke-virtual {v8, v3, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Landroidx/compose/runtime/GapPending;->a(II)Z

    iget v3, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    iget-object v7, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v7, v7, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    sub-int v7, v1, v7

    add-int/2addr v7, v3

    iput v7, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o0()V

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/GapComposerKt;->a(Ljava/util/ArrayList;II)V

    :goto_8
    add-int/lit8 v3, v22, 0x1

    :goto_9
    move-object/from16 v1, v20

    goto :goto_6

    :cond_9
    move-object/from16 v20, v1

    move/from16 v22, v3

    invoke-virtual {v6, v7}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v1, v18

    if-ge v1, v14, :cond_20

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    if-eq v3, v7, :cond_1e

    iget v7, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v9, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/composer/GroupInfo;

    if-eqz v7, :cond_b

    iget v7, v7, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    goto :goto_a

    :cond_b
    move/from16 v7, v16

    :goto_a
    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    move/from16 v18, v1

    move/from16 v1, v19

    move-object/from16 v19, v4

    if-eq v7, v1, :cond_1c

    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v9, v4}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/composer/GroupInfo;

    if-eqz v4, :cond_c

    iget v4, v4, Landroidx/compose/runtime/composer/GroupInfo;->c:I

    :goto_b
    move-object/from16 v21, v6

    goto :goto_c

    :cond_c
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    goto :goto_b

    :goto_c
    add-int v6, v7, v10

    move/from16 v23, v10

    add-int v10, v1, v23

    if-lez v4, :cond_f

    move-object/from16 v24, v11

    iget v11, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    if-lez v11, :cond_d

    move/from16 v25, v11

    iget v11, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->j:I

    move-object/from16 v26, v12

    sub-int v12, v6, v25

    if-ne v11, v12, :cond_e

    iget v11, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->k:I

    sub-int v12, v10, v25

    if-ne v11, v12, :cond_e

    add-int v11, v25, v4

    iput v11, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    goto :goto_d

    :cond_d
    move-object/from16 v26, v12

    :cond_e
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iput v6, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->j:I

    iput v10, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->k:I

    iput v4, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    goto :goto_d

    :cond_f
    move-object/from16 v24, v11

    move-object/from16 v26, v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    const-wide/16 v27, 0xff

    const-wide v29, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v7, v1, :cond_16

    const/16 v25, 0x7

    iget-object v6, v9, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    const-wide/16 v31, 0x80

    iget-object v10, v9, Landroidx/collection/IntObjectMap;->a:[J

    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_15

    move-object/from16 v34, v13

    move/from16 v35, v14

    const/4 v12, 0x0

    :goto_e
    const/16 v33, 0x8

    aget-wide v13, v10, v12

    move/from16 v37, v4

    move-object/from16 v36, v5

    not-long v4, v13

    shl-long v4, v4, v25

    and-long/2addr v4, v13

    and-long v4, v4, v29

    cmp-long v4, v4, v29

    if-eqz v4, :cond_14

    sub-int v4, v12, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_13

    and-long v38, v13, v27

    cmp-long v38, v38, v31

    if-gez v38, :cond_11

    shl-int/lit8 v38, v12, 0x3

    add-int v38, v38, v5

    aget-object v38, v6, v38

    move/from16 v39, v5

    move-object/from16 v5, v38

    check-cast v5, Landroidx/compose/runtime/composer/GroupInfo;

    move-object/from16 v38, v6

    iget v6, v5, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    move-object/from16 v40, v10

    if-gt v7, v6, :cond_10

    add-int v10, v7, v37

    if-ge v6, v10, :cond_10

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    iput v6, v5, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    goto :goto_10

    :cond_10
    if-gt v1, v6, :cond_12

    if-ge v6, v7, :cond_12

    add-int v6, v6, v37

    iput v6, v5, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    goto :goto_10

    :cond_11
    move/from16 v39, v5

    move-object/from16 v38, v6

    move-object/from16 v40, v10

    :cond_12
    :goto_10
    shr-long v13, v13, v33

    add-int/lit8 v5, v39, 0x1

    move-object/from16 v6, v38

    move-object/from16 v10, v40

    goto :goto_f

    :cond_13
    move-object/from16 v38, v6

    move-object/from16 v40, v10

    move/from16 v5, v33

    if-ne v4, v5, :cond_1d

    goto :goto_11

    :cond_14
    move-object/from16 v38, v6

    move-object/from16 v40, v10

    :goto_11
    if-eq v12, v11, :cond_1d

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v36

    move/from16 v4, v37

    move-object/from16 v6, v38

    move-object/from16 v10, v40

    goto :goto_e

    :cond_15
    move-object/from16 v36, v5

    goto/16 :goto_17

    :cond_16
    move/from16 v37, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v13

    move/from16 v35, v14

    const/16 v25, 0x7

    const-wide/16 v31, 0x80

    if-le v1, v7, :cond_1d

    iget-object v4, v9, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    iget-object v5, v9, Landroidx/collection/IntObjectMap;->a:[J

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_1d

    const/4 v10, 0x0

    :goto_12
    aget-wide v11, v5, v10

    not-long v13, v11

    shl-long v13, v13, v25

    and-long/2addr v13, v11

    and-long v13, v13, v29

    cmp-long v13, v13, v29

    if-eqz v13, :cond_1b

    sub-int v13, v10, v6

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v33, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v13, :cond_1a

    and-long v38, v11, v27

    cmp-long v38, v38, v31

    if-gez v38, :cond_19

    shl-int/lit8 v38, v10, 0x3

    add-int v38, v38, v14

    aget-object v38, v4, v38

    move-object/from16 v39, v4

    move-object/from16 v4, v38

    check-cast v4, Landroidx/compose/runtime/composer/GroupInfo;

    move-object/from16 v38, v5

    iget v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    move/from16 v40, v7

    if-gt v7, v5, :cond_17

    add-int v7, v40, v37

    if-ge v5, v7, :cond_17

    sub-int v5, v5, v40

    add-int/2addr v5, v1

    iput v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    goto :goto_14

    :cond_17
    add-int/lit8 v7, v40, 0x1

    if-gt v7, v5, :cond_18

    if-ge v5, v1, :cond_18

    sub-int v5, v5, v37

    iput v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    :cond_18
    :goto_14
    const/16 v5, 0x8

    goto :goto_15

    :cond_19
    move-object/from16 v39, v4

    move-object/from16 v38, v5

    move/from16 v40, v7

    goto :goto_14

    :goto_15
    shr-long/2addr v11, v5

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v38

    move-object/from16 v4, v39

    move/from16 v7, v40

    goto :goto_13

    :cond_1a
    move-object/from16 v39, v4

    move-object/from16 v38, v5

    move/from16 v40, v7

    const/16 v5, 0x8

    if-ne v13, v5, :cond_1d

    goto :goto_16

    :cond_1b
    move-object/from16 v39, v4

    move-object/from16 v38, v5

    move/from16 v40, v7

    const/16 v5, 0x8

    :goto_16
    if-eq v10, v6, :cond_1d

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v38

    move-object/from16 v4, v39

    move/from16 v7, v40

    goto :goto_12

    :cond_1c
    move-object/from16 v36, v5

    move-object/from16 v21, v6

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    :goto_17
    move-object/from16 v34, v13

    move/from16 v35, v14

    :cond_1d
    move/from16 v4, v22

    goto :goto_18

    :cond_1e
    move/from16 v18, v1

    move-object/from16 v36, v5

    move-object/from16 v21, v6

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move/from16 v1, v19

    move-object/from16 v19, v4

    add-int/lit8 v4, v22, 0x1

    :goto_18
    add-int/lit8 v18, v18, 0x1

    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v9, v5}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/composer/GroupInfo;

    if-eqz v5, :cond_1f

    iget v3, v5, Landroidx/compose/runtime/composer/GroupInfo;->c:I

    goto :goto_19

    :cond_1f
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    :goto_19
    add-int/2addr v1, v3

    move v3, v4

    move-object/from16 v4, v19

    move-object/from16 v6, v21

    move/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v26

    move-object/from16 v13, v34

    move/from16 v14, v35

    move-object/from16 v5, v36

    move/from16 v19, v1

    goto/16 :goto_9

    :cond_20
    move/from16 v18, v1

    move/from16 v1, v19

    move-object/from16 v1, v20

    move/from16 v3, v22

    goto/16 :goto_6

    :cond_21
    move-object/from16 v20, v1

    move-object/from16 v36, v5

    move-object/from16 v24, v11

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    iget v4, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    iget-object v5, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v5, v5, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    goto :goto_1a

    :cond_22
    move-object/from16 v20, v1

    move/from16 v17, v3

    move-object/from16 v36, v5

    const/16 v16, -0x1

    :cond_23
    :goto_1a
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_25

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m:I

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_25

    if-lez v4, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e()V

    iget-object v3, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-object v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget v6, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget-object v7, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v7, v3

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr v6, v3

    aput v4, v5, v6

    goto :goto_1b

    :cond_24
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_25
    :goto_1b
    iget v3, v0, Landroidx/compose/runtime/GapComposer;->k:I

    :goto_1c
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    if-lez v5, :cond_26

    goto :goto_1d

    :cond_26
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    if-ne v5, v4, :cond_34

    :goto_1d
    if-eqz v1, :cond_2d

    if-eqz p1, :cond_28

    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    if-eqz v4, :cond_27

    goto :goto_1e

    :cond_27
    const-string v4, "Cannot end node insertion, there are no pending operations that can be realized."

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_1e
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    aget-object v6, v4, v5

    const/4 v7, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    iget v9, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    iget v10, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->b:I

    sub-int/2addr v9, v10

    iget v11, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    sub-int v12, v11, v10

    sub-int/2addr v11, v12

    invoke-static {v4, v12, v5, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    sub-int v9, v5, v10

    invoke-static {v4, v9, v5, v7}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr v2, v6

    iget v7, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    sub-int v9, v7, v6

    invoke-static {v2, v9, v7, v4, v5}, Lkotlin/collections/ArraysKt;->i(III[I[I)V

    iget v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    sub-int/2addr v2, v10

    iput v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    iget v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    sub-int/2addr v2, v6

    iput v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    move/from16 v2, v17

    :cond_28
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    if-lez v4, :cond_29

    goto :goto_1f

    :cond_29
    const-string v4, "Unbalanced begin/end empty"

    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    :goto_1f
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j()V

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    if-lez v3, :cond_2a

    goto/16 :goto_22

    :cond_2a
    rsub-int/lit8 v3, v4, -0x2

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->k()V

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move/from16 v5, v17

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    move-result v5

    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    if-eqz v5, :cond_2b

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e()V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v7, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v8, 0x1

    invoke-static {v7, v5, v4, v8, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_20

    :cond_2b
    const/4 v5, 0x0

    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e()V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v5, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {v5, v4, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->c(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    invoke-direct {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;-><init>()V

    iput-object v4, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    const/4 v5, 0x0

    :goto_20
    iput-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c:I

    if-nez v4, :cond_2c

    goto :goto_22

    :cond_2c
    invoke-virtual {v0, v3, v5}, Landroidx/compose/runtime/GapComposer;->E0(II)V

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->F0(II)V

    goto :goto_22

    :cond_2d
    if-eqz p1, :cond_2e

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    :cond_2e
    iget-object v3, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v3, v3, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iget-object v4, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    move/from16 v6, v16

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/IntStack;->a(I)I

    move-result v5

    if-gt v5, v3, :cond_2f

    goto :goto_21

    :cond_2f
    const-string v5, "Missed recording an endGroup"

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_21
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/IntStack;->a(I)I

    move-result v5

    if-ne v5, v3, :cond_30

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v4}, Landroidx/compose/runtime/IntStack;->b()I

    iget-object v3, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    :cond_30
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v4

    if-eq v2, v4, :cond_31

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->F0(II)V

    :cond_31
    if-eqz p1, :cond_32

    const/4 v2, 0x1

    :cond_32
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->e()V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    :goto_22
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/GapPending;

    if-eqz v3, :cond_33

    if-nez v1, :cond_33

    iget v1, v3, Landroidx/compose/runtime/GapPending;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroidx/compose/runtime/GapPending;->c:I

    :cond_33
    iput-object v3, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/IntStack;->b()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/runtime/GapComposer;->k:I

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/IntStack;->b()I

    move-result v1

    iput v1, v0, Landroidx/compose/runtime/GapComposer;->m:I

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/IntStack;->b()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/runtime/GapComposer;->l:I

    return-void

    :cond_34
    move/from16 v6, v16

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o0()V

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f(II)V

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    move-object/from16 v9, v36

    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/GapComposerKt;->a(Ljava/util/ArrayList;II)V

    goto/16 :goto_1c
.end method

.method public final a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {p0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    invoke-static {p0, v2, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    invoke-static {p0, v3, p1, v2, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final a0()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->g0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    :cond_0
    return-void
.end method

.method public final b(Z)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final b0()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    iget v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionObserverHolder;->a()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroidx/compose/runtime/tooling/CompositionObserver;->c()V

    :cond_1
    iget v5, v0, Landroidx/compose/runtime/GapComposer;->B:I

    iget-object v6, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    if-eqz v6, :cond_6

    iget v7, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v6, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    iget-object v8, v6, Landroidx/collection/ObjectIntMap;->c:[I

    iget-object v9, v6, Landroidx/collection/ObjectIntMap;->a:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_6

    const/4 v11, 0x0

    :goto_1
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_4

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_3

    shl-int/lit8 v17, v11, 0x3

    add-int v17, v17, v4

    aget-object v18, v7, v17

    aget v2, v8, v17

    if-eq v2, v5, :cond_3

    new-instance v2, Lzd;

    const/16 v4, 0x9

    invoke-direct {v2, v1, v5, v6, v4}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto :goto_4

    :cond_3
    shr-long/2addr v12, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ne v14, v15, :cond_6

    :cond_5
    if-eq v11, v10, :cond_6

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v2, 0x0

    :goto_4
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    if-eqz v2, :cond_7

    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v3, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_7
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v5, v2, 0x200

    if-eqz v5, :cond_8

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    iget-object v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v7, 0x0

    invoke-static {v2, v7, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v4, v2, -0x81

    iput v4, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_8

    and-int/lit16 v2, v2, -0x481

    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    iget v2, v0, Landroidx/compose/runtime/GapComposer;->z:I

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    if-ne v2, v4, :cond_8

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->y:Z

    const/4 v2, -0x1

    iput v2, v0, Landroidx/compose/runtime/GapComposer;->z:I

    :cond_8
    if-eqz v1, :cond_d

    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->q:Z

    if-eqz v2, :cond_d

    :goto_5
    iget-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    if-nez v2, :cond_c

    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v2

    goto :goto_6

    :cond_b
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v2

    :goto_6
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    :cond_c
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    move-object v4, v1

    :goto_7
    const/4 v7, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v4, 0x0

    goto :goto_7

    :goto_9
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-object v4
.end method

.method public final c(F)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c0()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->d()V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-boolean v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iput-boolean v0, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    iget v1, v1, Landroidx/compose/runtime/IntStack;->b:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Missed recording an endGroup()"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Start/end imbalance"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->T()V

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->b()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    return-void
.end method

.method public final d(I)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final d0(ZLandroidx/compose/runtime/GapPending;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    iget p2, p0, Landroidx/compose/runtime/GapComposer;->l:I

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)V

    iget p2, p0, Landroidx/compose/runtime/GapComposer;->m:I

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)V

    iget p2, p0, Landroidx/compose/runtime/GapComposer;->k:I

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/compose/runtime/GapComposer;->k:I

    :cond_0
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->l:I

    iput p2, p0, Landroidx/compose/runtime/GapComposer;->m:I

    return-void
.end method

.method public final e(J)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final e0()V
    .locals 5

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i()V

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->l:Landroidx/collection/MutableIntObjectMap;

    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->o()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    return-void
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    return p0
.end method

.method public final f0()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->U:Landroidx/compose/runtime/GapCompositionDataImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/GapCompositionDataImpl;

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/GapCompositionDataImpl;-><init>(Landroidx/compose/runtime/Composition;)V

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->U:Landroidx/compose/runtime/GapCompositionDataImpl;

    :cond_0
    return-object v0
.end method

.method public final g(Z)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->l:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "No nodes can be emitted before calling deactivateToEndGroup"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w0()V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DeactivateCurrentGroup;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Landroidx/compose/runtime/GapComposerKt;->a(Ljava/util/ArrayList;II)V

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    :cond_2
    return-void
.end method

.method public final g0()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->A:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(I)Landroidx/compose/runtime/GapComposer;
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    iget v1, p0, Landroidx/compose/runtime/GapComposer;->B:I

    iput v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    iget v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->a()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionObserver;->e()V

    return-object p0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Invalidation;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_6

    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    and-int/lit8 p1, p1, -0x41

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move p1, v2

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v4

    :goto_4
    iget v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    if-eqz p1, :cond_7

    or-int/lit8 p1, v5, 0x8

    goto :goto_5

    :cond_7
    and-int/lit8 p1, v5, -0x9

    :goto_5
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/compose/runtime/GapComposer;->B:I

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->a()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroidx/compose/runtime/tooling/CompositionObserver;->e()V

    :cond_8
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_9

    and-int/lit16 p1, p1, -0x101

    or-int/lit16 p1, p1, 0x200

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {p1, v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-nez p1, :cond_9

    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    :cond_9
    return-object p0
.end method

.method public final h0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->g0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->g0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i0(Ljava/util/ArrayList;)V
    .locals 26

    move-object/from16 v1, p0

    iget-object v7, v1, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->f:Landroidx/compose/runtime/Changes;

    instance-of v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    goto :goto_0

    :cond_0
    move-object v0, v8

    :goto_0
    if-eqz v0, :cond_11

    iget-object v9, v1, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    :try_start_0
    iput-object v0, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_10

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    iget-object v2, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v2, v4, Landroidx/compose/runtime/MovableContentStateReference;->e:Landroidx/compose/runtime/Anchor;

    invoke-static {v2}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v2

    iget-object v3, v4, Landroidx/compose/runtime/MovableContentStateReference;->d:Landroidx/compose/runtime/SlotStorage;

    invoke-static {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->e(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v5

    new-instance v15, Landroidx/compose/runtime/internal/IntRef;

    const/4 v6, 0x1

    invoke-direct {v15, v12, v6, v8}, Landroidx/compose/runtime/internal/IntRef;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    iget-object v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v6, 0x1

    invoke-static {v8, v12, v15, v6, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    if-eq v3, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    if-nez v0, :cond_2

    const-string v0, "Check failed"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->e0()V

    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    iput v5, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-direct {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    new-instance v0, Lr0;

    const/16 v5, 0xb

    invoke-direct/range {v0 .. v5}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v8, v3

    move/from16 v17, v6

    move-object v6, v0

    move-object v0, v2

    :try_start_2
    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v18, v8

    move/from16 v8, v17

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/GapComposer;->m0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    iget-object v2, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {v2, v12, v0, v8, v15}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    move-object/from16 v20, v7

    move/from16 v16, v11

    move v0, v13

    const/16 v19, 0x0

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw v0

    :cond_4
    move v8, v6

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/CompositionContext;->q(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroidx/compose/runtime/MovableContentState;->a:Landroidx/compose/runtime/SlotStorage;

    if-eqz v6, :cond_5

    invoke-static {v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->e(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object v6

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_6

    iget-object v8, v0, Landroidx/compose/runtime/MovableContentStateReference;->d:Landroidx/compose/runtime/SlotStorage;

    invoke-static {v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->e(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object v8, v6

    :goto_6
    if-eqz v6, :cond_a

    iget-boolean v12, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h:Z

    if-eqz v12, :cond_7

    const-string v12, "use active SlotWriter to create an anchor location instead"

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_7
    iget v12, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c:I

    if-lez v12, :cond_8

    goto :goto_7

    :cond_8
    const-string v12, "Parameter index is out of range"

    invoke-static {v12}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    :goto_7
    iget-object v12, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->j:Ljava/util/ArrayList;

    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c:I

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-static {v12, v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->f(Ljava/util/ArrayList;II)I

    move-result v6

    if-gez v6, :cond_9

    move-object/from16 v20, v7

    new-instance v7, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-direct {v7, v5}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;-><init>(I)V

    add-int/lit8 v6, v6, 0x1

    neg-int v5, v6

    invoke-virtual {v12, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_9
    move-object/from16 v20, v7

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    :goto_8
    if-eqz v7, :cond_b

    goto :goto_9

    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v7

    :cond_b
    iget-object v7, v0, Landroidx/compose/runtime/MovableContentStateReference;->e:Landroidx/compose/runtime/Anchor;

    :goto_9
    invoke-static {v7}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v12

    invoke-static {v7, v6, v12}, Landroidx/compose/runtime/GapComposerKt;->b(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Ljava/util/ArrayList;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    :try_start_6
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    move-object/from16 v21, v5

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {v7, v12, v6, v5, v15}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_a

    :cond_c
    move-object/from16 v21, v5

    :goto_a
    iget-object v5, v1, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    if-eq v3, v5, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->E0(II)V

    goto :goto_b

    :cond_e
    move-object/from16 v21, v5

    :goto_b
    iget-object v2, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->b:I

    sub-int/2addr v3, v5

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    aput-object v19, v2, v3

    add-int/lit8 v5, v3, 0x1

    aput-object v20, v2, v5

    add-int/lit8 v5, v3, 0x3

    aput-object v4, v2, v5

    add-int/lit8 v3, v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->n()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v12, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->o:[I

    iget-object v3, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    const/4 v5, 0x0

    iput-object v5, v1, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v5, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    :try_start_8
    iput-object v7, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    iput v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    new-instance v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-direct {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    iget-object v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    :try_start_9
    iput-object v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    move/from16 v16, v11

    iget-boolean v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    move-object v5, v2

    :try_start_b
    iget-object v2, v0, Landroidx/compose/runtime/MovableContentStateReference;->c:Landroidx/compose/runtime/ControlledComposition;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v21, v3

    :try_start_c
    iget-object v3, v4, Landroidx/compose/runtime/MovableContentStateReference;->c:Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v22, v2

    iget v2, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Landroidx/compose/runtime/MovableContentStateReference;->f:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object/from16 v23, v6

    :try_start_d
    new-instance v6, Ldt;

    move-object/from16 v24, v0

    const/16 v0, 0x14

    invoke-direct {v6, v1, v4, v0}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v4, v2

    move-object/from16 v25, v7

    move v0, v13

    move-object/from16 v13, v21

    move-object/from16 v2, v22

    move-object/from16 v14, v23

    const/16 v19, 0x0

    move-object v7, v5

    move-object/from16 v5, v24

    :try_start_e
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/GapComposer;->m0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    iput-boolean v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    iput-object v14, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->b()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v14, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v5, v8, v6, v15}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :cond_f
    :try_start_11
    iput-object v12, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iput-object v7, v1, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    :goto_c
    iget-object v2, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    add-int/lit8 v13, v0, 0x1

    move/from16 v11, v16

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    const/4 v12, 0x0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v13, v21

    move-object/from16 v14, v23

    :goto_d
    move-object v7, v5

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v14, v6

    move-object/from16 v25, v7

    move-object/from16 v13, v21

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object v13, v3

    move-object v14, v6

    move-object/from16 v25, v7

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object v13, v3

    move-object v14, v6

    move-object/from16 v25, v7

    move-object v7, v2

    :goto_e
    :try_start_13
    iput-boolean v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_c
    move-exception v0

    move-object v13, v3

    move-object v14, v6

    move-object/from16 v25, v7

    move-object v7, v2

    :goto_f
    :try_start_14
    iput-object v14, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :catchall_d
    move-exception v0

    move-object v13, v3

    move-object/from16 v25, v7

    move-object v7, v2

    :goto_10
    :try_start_15
    iput-object v12, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iput-object v7, v1, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :catchall_e
    move-exception v0

    move-object/from16 v25, v7

    :goto_11
    :try_start_16
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw v0

    :catchall_f
    move-exception v0

    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    throw v0

    :cond_10
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    iget-object v0, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v5, 0x0

    iput v5, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    iput-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    return-void

    :goto_12
    iput-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    throw v0

    :cond_11
    const-string v0, "Inconsistent composition"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-void
.end method

.method public final j()Landroidx/compose/runtime/Applier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    return-object p0
.end method

.method public final j0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    const v2, 0x78cc281

    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->A(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    iget-wide v11, v1, Landroidx/compose/runtime/GapComposer;->T:J

    const-wide/32 v5, 0x78cc281

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    iput-wide v5, v1, Landroidx/compose/runtime/GapComposer;->T:J

    iget-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-static {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->z(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_2

    :cond_1
    move v2, v15

    goto :goto_1

    :cond_2
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v14

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p0(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_3
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xca

    invoke-virtual {v1, v5, v6, v0, v15}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    iput-boolean v14, v1, Landroidx/compose/runtime/GapComposer;->J:Z

    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    iget-object v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    invoke-virtual {v0, v2, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->G(I[I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v7

    new-instance v2, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v5, v1, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    iget-object v6, v1, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotStorage;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/util/List;)V

    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/CompositionContext;->n(Landroidx/compose/runtime/MovableContentStateReference;)V

    goto :goto_2

    :cond_4
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->w:Z

    iput-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->w:Z

    new-instance v2, Lrs;

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x3873acb

    invoke-direct {v3, v4, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->a(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    iput-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-wide v11, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-void

    :goto_3
    :try_start_1
    new-instance v2, Lt00;

    invoke-direct {v2, v1, v14}, Lt00;-><init>(Landroidx/compose/runtime/GapComposer;I)V

    invoke-static {v0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-wide v11, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    throw v0
.end method

.method public final k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    if-eqz p0, :cond_1

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    return-wide v0
.end method

.method public final l0(I)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final m()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->R:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final m0(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    iget v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/compose/runtime/GapComposer;->k:I

    move-object v3, p4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    iget-object v5, v4, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v4, v4, Lkotlin/Pair;->c:Ljava/lang/Object;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/GapComposer;->C0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/GapComposer;->C0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    :goto_2
    invoke-interface {p1, p2, p3, p5}, Landroidx/compose/runtime/ControlledComposition;->k(Landroidx/compose/runtime/ControlledComposition;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    iput v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    return-object p1

    :goto_3
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    iput v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    throw p1
.end method

.method public final n()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public final n0()V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v3

    add-int/2addr v3, v4

    iget v5, v0, Landroidx/compose/runtime/GapComposer;->k:I

    iget-wide v6, v0, Landroidx/compose/runtime/GapComposer;->T:J

    iget v8, v0, Landroidx/compose/runtime/GapComposer;->l:I

    iget v9, v0, Landroidx/compose/runtime/GapComposer;->m:I

    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v10, v10, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    move-result v10

    if-gez v10, :cond_0

    add-int/lit8 v10, v10, 0x1

    neg-int v10, v10

    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/Invalidation;

    iget v12, v10, Landroidx/compose/runtime/Invalidation;->b:I

    if-ge v12, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    move v15, v4

    const/4 v14, 0x0

    :goto_1
    if-eqz v10, :cond_26

    move/from16 v16, v2

    iget-object v2, v10, Landroidx/compose/runtime/Invalidation;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget v12, v10, Landroidx/compose/runtime/Invalidation;->b:I

    invoke-static {v12, v11}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    move-result v13

    if-ltz v13, :cond_2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/Invalidation;

    :cond_2
    iget-object v10, v10, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    if-nez v10, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v17, v5

    move/from16 v19, v8

    :goto_2
    move/from16 v21, v9

    :cond_3
    :goto_3
    move/from16 v5, v16

    goto/16 :goto_6

    :cond_4
    iget-object v13, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    if-nez v13, :cond_5

    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v17, v5

    move/from16 v19, v8

    goto :goto_2

    :cond_5
    move/from16 v17, v5

    instance-of v5, v10, Landroidx/compose/runtime/DerivedState;

    sget-object v18, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    if-eqz v5, :cond_7

    check-cast v10, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v10}, Landroidx/compose/runtime/DerivedState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    if-nez v5, :cond_6

    move-object/from16 v5, v18

    :cond_6
    move/from16 v19, v8

    invoke-interface {v10}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v8

    iget-object v8, v8, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-virtual {v13, v10}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v21, v9

    goto/16 :goto_6

    :cond_7
    move/from16 v19, v8

    instance-of v5, v10, Landroidx/collection/ScatterSet;

    if-eqz v5, :cond_f

    check-cast v10, Landroidx/collection/ScatterSet;

    invoke-virtual {v10}, Landroidx/collection/ScatterSet;->c()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v10, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v8, v10, Landroidx/collection/ScatterSet;->a:[J

    array-length v10, v8

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_d

    move-object/from16 v20, v5

    move-object/from16 v22, v8

    move/from16 v21, v9

    const/4 v5, 0x0

    :goto_4
    aget-wide v8, v22, v5

    move/from16 v23, v1

    move-object/from16 v24, v2

    not-long v1, v8

    const/16 v25, 0x7

    shl-long v1, v1, v25

    and-long/2addr v1, v8

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v1, v1, v25

    cmp-long v1, v1, v25

    if-eqz v1, :cond_c

    sub-int v1, v5, v10

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    move/from16 v25, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_b

    const-wide/16 v26, 0xff

    and-long v26, v8, v26

    const-wide/16 v28, 0x80

    cmp-long v26, v26, v28

    if-gez v26, :cond_9

    shl-int/lit8 v26, v5, 0x3

    add-int v26, v26, v2

    move/from16 v27, v2

    aget-object v2, v20, v26

    move-wide/from16 v28, v8

    instance-of v8, v2, Landroidx/compose/runtime/DerivedState;

    if-eqz v8, :cond_3

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState;->e()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v8

    if-nez v8, :cond_8

    move-object/from16 v8, v18

    :cond_8
    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState;->I()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v9

    iget-object v9, v9, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    invoke-virtual {v13, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8, v9, v2}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_3

    :cond_9
    move/from16 v27, v2

    move-wide/from16 v28, v8

    :cond_a
    shr-long v8, v28, v25

    add-int/lit8 v2, v27, 0x1

    goto :goto_5

    :cond_b
    move/from16 v2, v25

    if-ne v1, v2, :cond_e

    :cond_c
    if-eq v5, v10, :cond_e

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v23

    move-object/from16 v2, v24

    goto :goto_4

    :cond_d
    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v21, v9

    :cond_e
    const/4 v5, 0x0

    goto :goto_6

    :cond_f
    move/from16 v23, v1

    move-object/from16 v24, v2

    goto/16 :goto_2

    :goto_6
    if-eqz v5, :cond_22

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-virtual {v0, v15, v1, v4}, Landroidx/compose/runtime/GapComposer;->q0(III)V

    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    :goto_7
    if-eq v2, v4, :cond_10

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    goto :goto_7

    :cond_10
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    move/from16 v5, v17

    :goto_8
    if-ne v2, v1, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v8

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v5

    :cond_13
    if-ge v5, v8, :cond_15

    if-eq v2, v12, :cond_15

    add-int/lit8 v2, v2, 0x1

    :goto_9
    if-ge v2, v12, :cond_15

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v9, v9, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v2, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v9

    add-int/2addr v9, v2

    if-lt v12, v9, :cond_13

    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v10

    if-eqz v10, :cond_14

    move/from16 v2, v16

    goto :goto_a

    :cond_14
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v2

    :goto_a
    add-int/2addr v5, v2

    move v2, v9

    goto :goto_9

    :cond_15
    :goto_b
    iput v5, v0, Landroidx/compose/runtime/GapComposer;->k:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->l0(I)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/GapComposer;->m:I

    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    const/4 v5, 0x3

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_c
    if-ltz v2, :cond_1f

    if-ne v2, v4, :cond_16

    invoke-static {v6, v7, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    :goto_d
    xor-long/2addr v8, v12

    goto/16 :goto_12

    :cond_16
    iget-object v12, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    move-result v13

    iget-object v14, v12, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    if-eqz v13, :cond_1a

    invoke-virtual {v12, v2, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_19

    instance-of v13, v12, Ljava/lang/Enum;

    if-eqz v13, :cond_17

    check-cast v12, Ljava/lang/Enum;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    :goto_e
    const v13, 0x78cc281

    goto :goto_10

    :cond_17
    instance-of v13, v12, Landroidx/compose/runtime/MovableContent;

    if-eqz v13, :cond_18

    const v12, 0x78cc281

    goto :goto_e

    :cond_18
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    goto :goto_e

    :cond_19
    const/4 v12, 0x0

    goto :goto_e

    :cond_1a
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result v13

    const/16 v15, 0xcf

    if-ne v13, v15, :cond_1c

    invoke-virtual {v12, v2, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b(I[I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1c

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    goto :goto_e

    :cond_1c
    :goto_f
    move v12, v13

    goto :goto_e

    :goto_10
    if-ne v12, v13, :cond_1d

    int-to-long v12, v12

    invoke-static {v12, v13, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    goto :goto_d

    :cond_1d
    iget-object v13, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    move-result v13

    if-eqz v13, :cond_1e

    const/4 v13, 0x0

    goto :goto_11

    :cond_1e
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->l0(I)I

    move-result v13

    :goto_11
    int-to-long v14, v12

    invoke-static {v14, v15, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    xor-long/2addr v8, v14

    int-to-long v12, v13

    invoke-static {v12, v13, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    xor-long/2addr v8, v12

    add-int/lit8 v5, v5, 0x6

    rem-int/lit8 v5, v5, 0x40

    add-int/lit8 v10, v10, 0x6

    rem-int/lit8 v10, v10, 0x40

    iget-object v12, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    goto/16 :goto_c

    :cond_1f
    :goto_12
    iput-wide v8, v0, Landroidx/compose/runtime/GapComposer;->T:J

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-object/from16 v5, v24

    iget-object v5, v5, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v5, :cond_21

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v0, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v8, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-static {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v8

    add-int/2addr v8, v4

    iget v9, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    if-lt v9, v4, :cond_20

    if-gt v9, v8, :cond_20

    goto :goto_13

    :cond_20
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Index "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is not a parent of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_13
    iput v4, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iput v8, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    const/4 v8, 0x0

    iput v8, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    iput v8, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m:I

    move v15, v1

    move/from16 v14, v16

    goto :goto_15

    :cond_21
    const-string v0, "Invalid restart scope"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_22
    move-object/from16 v5, v24

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionObserverHolder;->a()Landroidx/compose/runtime/tooling/CompositionObserver;

    move-result-object v9

    if-eqz v9, :cond_23

    :try_start_0
    invoke-interface {v9}, Landroidx/compose/runtime/tooling/CompositionObserver;->e()V

    invoke-virtual {v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v9}, Landroidx/compose/runtime/tooling/CompositionObserver;->c()V

    goto :goto_14

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroidx/compose/runtime/tooling/CompositionObserver;->c()V

    throw v0

    :cond_23
    invoke-virtual {v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V

    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_15
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-static {v1, v11}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    move-result v1

    if-gez v1, :cond_24

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    :cond_24
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_25

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/Invalidation;

    iget v5, v1, Landroidx/compose/runtime/Invalidation;->b:I

    if-ge v5, v3, :cond_25

    move-object v10, v1

    goto :goto_16

    :cond_25
    move-object v10, v2

    :goto_16
    move/from16 v2, v16

    move/from16 v5, v17

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v1, v23

    goto/16 :goto_1

    :cond_26
    move/from16 v23, v1

    move/from16 v17, v5

    move/from16 v19, v8

    move/from16 v21, v9

    if-eqz v14, :cond_27

    invoke-virtual {v0, v15, v4, v4}, Landroidx/compose/runtime/GapComposer;->q0(III)V

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->H0(I)I

    move-result v1

    add-int v5, v17, v1

    iput v5, v0, Landroidx/compose/runtime/GapComposer;->k:I

    add-int v8, v19, v1

    iput v8, v0, Landroidx/compose/runtime/GapComposer;->l:I

    move/from16 v1, v21

    iput v1, v0, Landroidx/compose/runtime/GapComposer;->m:I

    goto :goto_17

    :cond_27
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->w0()V

    :goto_17
    iput-wide v6, v0, Landroidx/compose/runtime/GapComposer;->T:J

    move/from16 v1, v23

    iput-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    return-void
.end method

.method public final o()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_1

    const-string v0, "useNode() called while inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    iget-object p0, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    :cond_2
    return-void
.end method

.method public final o0()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->r0(I)V

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e()V

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v1, v1, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    return-void
.end method

.method public final p(IZ)Z
    .locals 3

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-nez p1, :cond_5

    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->g0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/ShouldPauseCallback;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_3

    return v0

    :cond_3
    or-int/lit8 v0, p1, 0x1

    iput v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    iget-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-eqz v2, :cond_4

    or-int/lit16 p1, p1, 0x81

    goto :goto_0

    :cond_4
    and-int/lit16 p1, v0, -0x81

    :goto_0
    or-int/lit16 p1, p1, 0x100

    iput p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/CompositionContext;->u(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return v1

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v0
.end method

.method public final p0(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/GapRememberObserverHolder;

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    iget v2, p0, Landroidx/compose/runtime/GapComposer;->m:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/GapRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    return-void
.end method

.method public final q0(III)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p3, :cond_9

    if-ne p2, p3, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v1

    if-ne v1, p2, :cond_2

    move p3, p2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    :goto_0
    move p3, p1

    goto :goto_6

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v1

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result p3

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    :goto_1
    if-lez v2, :cond_5

    if-eq v2, p3, :cond_5

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v2, p2

    move v4, v1

    :goto_2
    if-lez v2, :cond_6

    if-eq v2, p3, :cond_6

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    sub-int p3, v3, v4

    move v5, p1

    move v2, v1

    :goto_3
    if-ge v2, p3, :cond_7

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v4, v3

    move p3, p2

    :goto_4
    if-ge v1, v4, :cond_8

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, p3

    move p3, v5

    :goto_5
    if-eq p3, v1, :cond_9

    invoke-virtual {v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result p3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result v1

    goto :goto_5

    :cond_9
    :goto_6
    if-lez p1, :cond_b

    if-eq p1, p3, :cond_b

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    :cond_a
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    move-result p1

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/GapComposer;->Y(II)V

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-void
.end method

.method public final r0(I)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    iget-object v3, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p1, p1, v0, v2}, Landroidx/compose/runtime/GapComposer;->u0(Landroidx/compose/runtime/GapComposer;IIZI)I

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    :cond_1
    return-void
.end method

.method public final s(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/GapComposer;->j0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SideEffect;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SideEffect;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    return-void
.end method

.method public final u()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->g0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    return-object p0
.end method

.method public final v()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    iget v2, p0, Landroidx/compose/runtime/GapComposer;->z:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    return-void
.end method

.method public final v0()V
    .locals 15

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->l:I

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/GapComposer;->l:I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    move-result v1

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    move-result-object v4

    iget v6, p0, Landroidx/compose/runtime/GapComposer;->m:I

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/16 v8, 0xcf

    const/4 v9, 0x3

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    if-ne v1, v8, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iget-wide v11, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    int-to-long v12, v6

    xor-long/2addr v10, v12

    iput-wide v10, p0, Landroidx/compose/runtime/GapComposer;->T:J

    goto :goto_3

    :cond_2
    iget-wide v10, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    int-to-long v12, v1

    xor-long/2addr v10, v12

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    int-to-long v12, v6

    xor-long/2addr v10, v12

    :goto_1
    iput-wide v10, p0, Landroidx/compose/runtime/GapComposer;->T:J

    goto :goto_3

    :cond_3
    instance-of v10, v3, Ljava/lang/Enum;

    if-eqz v10, :cond_4

    move-object v10, v3

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_2
    iget-wide v11, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_2

    :goto_3
    iget v10, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    mul-int/lit8 v10, v10, 0x5

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aget v2, v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v2, v10

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {p0, v5, v11}, Landroidx/compose/runtime/GapComposer;->A0(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->n0()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->e()V

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    if-ne v1, v8, :cond_6

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->T:J

    int-to-long v3, v6

    xor-long/2addr v1, v3

    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    int-to-long v3, v0

    xor-long v0, v1, v3

    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    return-void

    :cond_6
    iget-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    int-to-long v4, v6

    xor-long/2addr v2, v4

    invoke-static {v2, v3, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    int-to-long v0, v1

    xor-long/2addr v0, v2

    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    return-void

    :cond_7
    instance-of v0, v3, Ljava/lang/Enum;

    if-eqz v0, :cond_8

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    int-to-long v3, v0

    xor-long v0, v1, v3

    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    return-void

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    int-to-long v3, v0

    xor-long v0, v1, v3

    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    return-void
.end method

.method public final w(I)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final w0()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    if-ltz v1, :cond_0

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v2, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->l:I

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    return-void
.end method

.method public final x()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    if-eqz p0, :cond_1

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    instance-of p0, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p0, :cond_3

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserverHolder;->a()Landroidx/compose/runtime/RememberObserver;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final x0(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->r:Z

    if-eqz v6, :cond_0

    const-string v6, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :cond_0
    iget v6, v0, Landroidx/compose/runtime/GapComposer;->m:I

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v9, 0x3

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    const/16 v10, 0xcf

    if-ne v2, v10, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    int-to-long v11, v6

    xor-long/2addr v9, v11

    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    goto :goto_2

    :cond_1
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    int-to-long v12, v2

    xor-long/2addr v10, v12

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    int-to-long v11, v6

    xor-long/2addr v9, v11

    :goto_0
    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    goto :goto_2

    :cond_2
    instance-of v6, v1, Ljava/lang/Enum;

    if-eqz v6, :cond_3

    move-object v6, v1

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    :goto_1
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    int-to-long v12, v6

    xor-long/2addr v10, v12

    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :goto_2
    const/4 v6, 0x1

    if-nez v1, :cond_4

    iget v9, v0, Landroidx/compose/runtime/GapComposer;->m:I

    add-int/2addr v9, v6

    iput v9, v0, Landroidx/compose/runtime/GapComposer;->m:I

    :cond_4
    sget-object v9, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    move v10, v6

    goto :goto_3

    :cond_5
    move v10, v9

    :goto_3
    iget-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_b

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    add-int/2addr v11, v6

    iput v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    if-eqz v10, :cond_6

    invoke-virtual {v4, v8, v8, v6, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    move-object v1, v8

    :cond_7
    invoke-virtual {v4, v1, v3, v9, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    move-object v1, v8

    :cond_9
    invoke-virtual {v4, v1, v8, v9, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    :goto_4
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    if-eqz v8, :cond_a

    new-instance v1, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    rsub-int/lit8 v4, v11, -0x2

    move-object v3, v5

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(ILjava/lang/Object;III)V

    iget v2, v0, Landroidx/compose/runtime/GapComposer;->k:I

    iget v3, v8, Landroidx/compose/runtime/GapPending;->b:I

    sub-int/2addr v2, v3

    iget-object v3, v8, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    new-instance v4, Landroidx/compose/runtime/composer/GroupInfo;

    invoke-direct {v4, v7, v2, v9}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v3, v2, v4}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    iget-object v2, v8, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v0, v10, v12}, Landroidx/compose/runtime/GapComposer;->d0(ZLandroidx/compose/runtime/GapPending;)V

    return-void

    :cond_b
    sget v11, Landroidx/compose/runtime/composer/GroupKind;->b:I

    if-eq v4, v11, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->y:Z

    if-eqz v4, :cond_d

    move v4, v6

    goto :goto_6

    :cond_d
    :goto_5
    move v4, v9

    :goto_6
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    if-nez v11, :cond_13

    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    move-result v11

    if-nez v4, :cond_f

    if-ne v11, v2, :cond_f

    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v13, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget v14, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    if-ge v13, v14, :cond_e

    iget-object v14, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v11, v13, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_7

    :cond_e
    move-object v11, v12

    :goto_7
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v0, v3, v10}, Landroidx/compose/runtime/GapComposer;->A0(Ljava/lang/Object;Z)V

    goto :goto_b

    :cond_f
    new-instance v11, Landroidx/compose/runtime/GapPending;

    iget-object v13, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v14, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget v7, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    if-lez v7, :cond_10

    goto :goto_a

    :cond_10
    iget v7, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    move/from16 v22, v9

    :goto_8
    iget v12, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    if-ge v7, v12, :cond_12

    new-instance v17, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    mul-int/lit8 v12, v7, 0x5

    aget v18, v14, v12

    invoke-virtual {v13, v7, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p(I[I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    aget v20, v14, v20

    const/high16 v21, 0x40000000    # 2.0f

    and-int v21, v20, v21

    if-eqz v21, :cond_11

    move/from16 v21, v6

    goto :goto_9

    :cond_11
    const v21, 0x3ffffff

    and-int v20, v20, v21

    move/from16 v21, v20

    :goto_9
    add-int/lit8 v23, v22, 0x1

    move/from16 v20, v7

    invoke-direct/range {v17 .. v22}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(ILjava/lang/Object;III)V

    move-object/from16 v7, v17

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x3

    aget v7, v14, v12

    add-int v7, v7, v20

    move/from16 v22, v23

    goto :goto_8

    :cond_12
    :goto_a
    iget v7, v0, Landroidx/compose/runtime/GapComposer;->k:I

    invoke-direct {v11, v15, v7}, Landroidx/compose/runtime/GapPending;-><init>(Ljava/util/List;I)V

    iput-object v11, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    :cond_13
    :goto_b
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    if-eqz v7, :cond_29

    iget-object v11, v7, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    iget-object v12, v7, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    iget v13, v7, Landroidx/compose/runtime/GapPending;->b:I

    if-eqz v1, :cond_14

    new-instance v14, Landroidx/compose/runtime/JoinedKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v14, v15, v1}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_c
    iget-object v15, v7, Landroidx/compose/runtime/GapPending;->f:Lkotlin/Lazy;

    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/collection/MultiValueMap;

    iget-object v15, v15, Landroidx/compose/runtime/collection/MultiValueMap;->a:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_15

    const/4 v6, 0x0

    goto :goto_d

    :cond_15
    instance-of v9, v6, Landroidx/collection/MutableObjectList;

    if-eqz v9, :cond_18

    check-cast v6, Landroidx/collection/MutableObjectList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual {v6}, Landroidx/collection/ObjectList;->d()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v15, v14}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v9, v6, Landroidx/collection/ObjectList;->b:I

    const/4 v1, 0x1

    if-ne v9, v1, :cond_17

    invoke-virtual {v6}, Landroidx/collection/ObjectList;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v6, v19

    goto :goto_d

    :cond_18
    invoke-virtual {v15, v14}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    check-cast v6, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    if-nez v4, :cond_2a

    if-eqz v6, :cond_2a

    iget v1, v6, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/GroupInfo;

    if-eqz v2, :cond_19

    iget v2, v2, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    goto :goto_e

    :cond_19
    const/4 v2, -0x1

    :goto_e
    add-int/2addr v2, v13

    iput v2, v0, Landroidx/compose/runtime/GapComposer;->k:I

    invoke-virtual {v12, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/GroupInfo;

    if-eqz v2, :cond_1a

    iget v2, v2, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    goto :goto_f

    :cond_1a
    const/4 v2, -0x1

    :goto_f
    iget v4, v7, Landroidx/compose/runtime/GapPending;->c:I

    sub-int v5, v2, v4

    const/16 v15, 0x8

    if-le v2, v4, :cond_21

    const-wide/16 p1, 0x80

    iget-object v6, v12, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    iget-object v7, v12, Landroidx/collection/IntObjectMap;->a:[J

    array-length v12, v7

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_20

    const/4 v8, 0x0

    const-wide/16 v19, 0xff

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :goto_10
    aget-wide v13, v7, v8

    move v9, v12

    const/16 p4, 0x7

    not-long v11, v13

    shl-long v11, v11, p4

    and-long/2addr v11, v13

    and-long v11, v11, v21

    cmp-long v11, v11, v21

    if-eqz v11, :cond_1f

    sub-int v11, v8, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v11, :cond_1e

    and-long v23, v13, v19

    cmp-long v16, v23, p1

    if-gez v16, :cond_1c

    shl-int/lit8 v16, v8, 0x3

    add-int v16, v16, v12

    aget-object v16, v6, v16

    move/from16 v23, v15

    move-object/from16 v15, v16

    check-cast v15, Landroidx/compose/runtime/composer/GroupInfo;

    move/from16 v16, v5

    iget v5, v15, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    if-ne v5, v2, :cond_1b

    iput v4, v15, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    goto :goto_12

    :cond_1b
    if-gt v4, v5, :cond_1d

    if-ge v5, v2, :cond_1d

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    goto :goto_12

    :cond_1c
    move/from16 v16, v5

    move/from16 v23, v15

    :cond_1d
    :goto_12
    shr-long v13, v13, v23

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    move/from16 v15, v23

    goto :goto_11

    :cond_1e
    move/from16 v16, v5

    move v5, v15

    if-ne v11, v5, :cond_27

    goto :goto_13

    :cond_1f
    move/from16 v16, v5

    :goto_13
    if-eq v8, v9, :cond_27

    add-int/lit8 v8, v8, 0x1

    move v12, v9

    move/from16 v5, v16

    const/16 v15, 0x8

    goto :goto_10

    :cond_20
    move/from16 v16, v5

    goto/16 :goto_1a

    :cond_21
    move/from16 v16, v5

    const-wide/16 p1, 0x80

    const/16 p4, 0x7

    const-wide/16 v19, 0xff

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v4, v2, :cond_27

    iget-object v5, v12, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    iget-object v6, v12, Landroidx/collection/IntObjectMap;->a:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_27

    const/4 v8, 0x0

    :goto_14
    aget-wide v11, v6, v8

    not-long v13, v11

    shl-long v13, v13, p4

    and-long/2addr v13, v11

    and-long v13, v13, v21

    cmp-long v9, v13, v21

    if-eqz v9, :cond_26

    sub-int v9, v8, v7

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v23, 0x8

    rsub-int/lit8 v15, v9, 0x8

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v15, :cond_25

    and-long v13, v11, v19

    cmp-long v13, v13, p1

    if-gez v13, :cond_24

    shl-int/lit8 v13, v8, 0x3

    add-int/2addr v13, v9

    aget-object v13, v5, v13

    check-cast v13, Landroidx/compose/runtime/composer/GroupInfo;

    iget v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    if-ne v14, v2, :cond_22

    iput v4, v13, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    goto :goto_17

    :cond_22
    move/from16 v24, v2

    add-int/lit8 v2, v24, 0x1

    if-gt v2, v14, :cond_23

    if-ge v14, v4, :cond_23

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    :cond_23
    :goto_16
    const/16 v2, 0x8

    goto :goto_18

    :cond_24
    :goto_17
    move/from16 v24, v2

    goto :goto_16

    :goto_18
    shr-long/2addr v11, v2

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v24

    goto :goto_15

    :cond_25
    move/from16 v24, v2

    const/16 v2, 0x8

    if-ne v15, v2, :cond_27

    goto :goto_19

    :cond_26
    move/from16 v24, v2

    const/16 v2, 0x8

    :goto_19
    if-eq v8, v7, :cond_27

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v24

    goto :goto_14

    :cond_27
    :goto_1a
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    iget-object v5, v5, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    sub-int v5, v1, v5

    add-int/2addr v5, v4

    iput v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    if-lez v16, :cond_28

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e()V

    iget-object v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    iget-object v5, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v5, v1

    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    sub-int/2addr v4, v1

    aput v16, v2, v4

    :cond_28
    invoke-virtual {v0, v3, v10}, Landroidx/compose/runtime/GapComposer;->A0(Ljava/lang/Object;Z)V

    :cond_29
    const/4 v1, 0x0

    goto/16 :goto_20

    :cond_2a
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    iput-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-boolean v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    if-eqz v4, :cond_2b

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->o()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->O()V

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->J:Z

    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_2b
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->d()V

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    if-eqz v10, :cond_2c

    const/4 v6, 0x1

    invoke-virtual {v1, v8, v8, v6, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto :goto_1e

    :cond_2c
    if-eqz v3, :cond_2e

    if-nez p1, :cond_2d

    :goto_1b
    const/4 v9, 0x0

    goto :goto_1c

    :cond_2d
    move-object/from16 v8, p1

    goto :goto_1b

    :goto_1c
    invoke-virtual {v1, v8, v3, v9, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto :goto_1e

    :cond_2e
    const/4 v9, 0x0

    if-nez p1, :cond_2f

    move-object v3, v8

    goto :goto_1d

    :cond_2f
    move-object/from16 v3, p1

    :goto_1d
    invoke-virtual {v1, v3, v8, v9, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->S(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    :goto_1e
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    new-instance v1, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    rsub-int/lit8 v4, v4, -0x2

    move-object v3, v5

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(ILjava/lang/Object;III)V

    iget v2, v0, Landroidx/compose/runtime/GapComposer;->k:I

    sub-int/2addr v2, v13

    new-instance v3, Landroidx/compose/runtime/composer/GroupInfo;

    const/4 v4, -0x1

    const/4 v9, 0x0

    invoke-direct {v3, v4, v2, v9}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    invoke-virtual {v12, v2, v3}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/compose/runtime/GapPending;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_30

    goto :goto_1f

    :cond_30
    iget v9, v0, Landroidx/compose/runtime/GapComposer;->k:I

    :goto_1f
    invoke-direct {v12, v1, v9}, Landroidx/compose/runtime/GapPending;-><init>(Ljava/util/List;I)V

    goto :goto_21

    :goto_20
    move-object v12, v1

    :goto_21
    invoke-virtual {v0, v10, v12}, Landroidx/compose/runtime/GapComposer;->d0(ZLandroidx/compose/runtime/GapPending;)V

    return-void
.end method

.method public final y(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y0()V
    .locals 3

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x7f

    invoke-virtual {p0, v1, v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    const/16 v1, 0xcf

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    :cond_0
    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public final z0(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method
