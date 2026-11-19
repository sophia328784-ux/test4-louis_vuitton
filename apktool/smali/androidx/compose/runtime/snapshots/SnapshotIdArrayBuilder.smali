.class public final Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;",
        "",
        "",
        "Landroidx/compose/runtime/snapshots/SnapshotIdArray;",
        "array",
        "<init>",
        "([J)V",
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
.field public final a:Landroidx/collection/MutableLongList;


# direct methods
.method public constructor <init>([J)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    new-instance v2, Landroidx/collection/MutableLongList;

    array-length v3, p1

    invoke-direct {v2, v3}, Landroidx/collection/MutableLongList;-><init>(I)V

    iget v3, v2, Landroidx/collection/LongList;->b:I

    if-ltz v3, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/2addr v0, v3

    iget-object v4, v2, Landroidx/collection/LongList;->a:[J

    array-length v5, v4

    if-ge v5, v0, :cond_1

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, v2, Landroidx/collection/LongList;->a:[J

    :cond_1
    iget-object v0, v2, Landroidx/collection/LongList;->a:[J

    iget v4, v2, Landroidx/collection/LongList;->b:I

    if-eq v3, v4, :cond_2

    array-length v5, p1

    add-int/2addr v5, v3

    invoke-static {v5, v0, v3, v0, v4}, Lkotlin/collections/ArraysKt;->k(I[JI[JI)V

    :cond_2
    array-length v4, p1

    invoke-static {v3, p1, v1, v0, v4}, Lkotlin/collections/ArraysKt;->k(I[JI[JI)V

    iget v0, v2, Landroidx/collection/LongList;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, v2, Landroidx/collection/LongList;->b:I

    goto :goto_0

    :cond_3
    const-string p0, ""

    invoke-static {p0}, Laz;->v(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v2, Landroidx/collection/MutableLongList;

    const/4 p1, 0x1

    invoke-direct {v2, v1, p1, v0}, Landroidx/collection/MutableLongList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;->a:Landroidx/collection/MutableLongList;

    return-void
.end method
