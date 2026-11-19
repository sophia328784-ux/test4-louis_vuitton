.class final Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;",
        "",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;",
        "table",
        "",
        "start",
        "end",
        "<init>",
        "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;II)V",
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
.field public final b:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public final c:I

.field public d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iput p3, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->c:I

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->d:I

    iget p2, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i:I

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->e:I

    iget-boolean p0, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->d:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i:I

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->e:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->g()V

    :cond_0
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->d:I

    iget-object v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->b:[I

    invoke-static {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->a(I[I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/GroupIterator;->d:I

    new-instance p0, Landroidx/compose/runtime/composer/gapbuffer/SlotTableGroup;

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableGroup;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;II)V

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
