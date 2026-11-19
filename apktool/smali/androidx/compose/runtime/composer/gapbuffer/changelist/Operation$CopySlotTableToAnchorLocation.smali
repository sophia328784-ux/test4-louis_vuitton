.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopySlotTableToAnchorLocation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;",
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;",
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


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 8

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/runtime/CompositionContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/MovableContentState;

    if-nez p1, :cond_1

    invoke-virtual {p5, p0}, Landroidx/compose/runtime/CompositionContext;->q(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Could not resolve state for movable content"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p1, Landroidx/compose/runtime/MovableContentState;->a:Landroidx/compose/runtime/SlotStorage;

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->e(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object p0

    iget p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n:I

    if-gtz p1, :cond_2

    iget p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    add-int/2addr p1, p4

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->u(I)I

    move-result p1

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Check failed"

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_1
    iget p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    iget p5, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    iget v0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->a(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->R()V

    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->d()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->o()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v2

    :try_start_0
    sget-object p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->y:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;->a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->k()V

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j()V

    iput p1, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    iput p5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    iput v0, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    sget-object p1, Landroidx/compose/runtime/RecomposeScopeImpl;->h:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    iget-object p2, p2, Landroidx/compose/runtime/MovableContentStateReference;->c:Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/compose/runtime/RecomposeScopeOwner;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0, p2}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    throw p0
.end method
