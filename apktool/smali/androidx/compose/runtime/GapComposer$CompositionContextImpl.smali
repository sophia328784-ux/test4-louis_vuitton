.class public final Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
.super Landroidx/compose/runtime/CompositionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/GapComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CompositionContextImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0080\u0004\u0018\u00002\u00020\u0001B-\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/runtime/GapComposer$CompositionContextImpl;",
        "Landroidx/compose/runtime/CompositionContext;",
        "",
        "Landroidx/compose/runtime/CompositeKeyHashCode;",
        "compositeKeyHashCode",
        "",
        "collectingParameterInformation",
        "collectingSourceInformation",
        "Landroidx/compose/runtime/CompositionObserverHolder;",
        "observerHolder",
        "<init>",
        "(Landroidx/compose/runtime/GapComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V",
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
.field public final a:J

.field public final b:Z

.field public final c:Z

.field public final d:Landroidx/compose/runtime/CompositionObserverHolder;

.field public e:Ljava/util/HashSet;

.field public final f:Landroidx/collection/MutableScatterSet;

.field public final g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/GapComposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/GapComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Landroidx/compose/runtime/CompositionObserverHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    invoke-direct {p0}, Landroidx/compose/runtime/CompositionContext;-><init>()V

    iput-wide p2, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->a:J

    iput-boolean p4, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->b:Z

    iput-boolean p5, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->c:Z

    iput-object p6, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->d:Landroidx/compose/runtime/CompositionObserverHolder;

    invoke-static {}, Landroidx/collection/ScatterSetKt;->a()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->f:Landroidx/collection/MutableScatterSet;

    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->a()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    new-instance p2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p3, Landroidx/compose/runtime/ReferentialEqualityPolicy;->a:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    invoke-direct {p2, p1, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p2, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 15

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->e:Ljava/util/HashSet;

    if-eqz p0, :cond_3

    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_1

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v1, v11

    check-cast v11, Landroidx/compose/runtime/GapComposer;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->f0()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-ne v8, v9, :cond_3

    :cond_2
    if-eq v5, v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->f()V

    :cond_4
    return-void
.end method

.method public final a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/CompositionContext;->a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final b(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/ScatterSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->b(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/ScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->c(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->A:I

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->e()Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->b:Z

    return p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->c:Z

    return p0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->a:J

    return-wide v0
.end method

.method public final i()Landroidx/compose/runtime/Composition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    return-object p0
.end method

.method public final j()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->g:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p0
.end method

.method public final k()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->k()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final l()Landroidx/compose/runtime/CompositionObserverHolder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->d:Landroidx/compose/runtime/CompositionObserverHolder;

    return-object p0
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->m()Z

    move-result p0

    return p0
.end method

.method public final n(Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->n(Landroidx/compose/runtime/MovableContentStateReference;)V

    return-void
.end method

.method public final o(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/CompositionContext;->o(Landroidx/compose/runtime/ControlledComposition;)V

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->o(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public final p(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->p(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V

    return-void
.end method

.method public final q(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->q(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object p0

    return-object p0
.end method

.method public final r(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionContext;->r(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->e:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->e:Ljava/util/HashSet;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final t(Landroidx/compose/runtime/GapComposer;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    return-void
.end method

.method public final u(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->u(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    return-void
.end method

.method public final v(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->v(Landroidx/compose/runtime/ControlledComposition;)V

    return-void
.end method

.method public final w(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->w(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;

    move-result-object p0

    return-object p0
.end method

.method public final x()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget v0, p0, Landroidx/compose/runtime/GapComposer;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/GapComposer;->A:I

    return-void
.end method

.method public final y(Landroidx/compose/runtime/GapComposer;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->f0()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->m(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final z(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->h:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionContext;->z(Landroidx/compose/runtime/CompositionImpl;)V

    return-void
.end method
