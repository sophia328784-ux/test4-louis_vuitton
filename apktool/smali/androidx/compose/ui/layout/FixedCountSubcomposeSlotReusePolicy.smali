.class final Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "",
        "maxSlotsToRetainForReuse",
        "<init>",
        "(I)V",
        "ui"
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
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V
    .locals 6

    iget-object p1, p1, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->b:Landroidx/collection/MutableOrderedScatterSet;

    iget v0, p1, Landroidx/collection/OrderedScatterSet;->g:I

    iget p0, p0, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;->a:I

    if-le v0, p0, :cond_0

    iget-object v0, p1, Landroidx/collection/OrderedScatterSet;->c:[J

    iget v1, p1, Landroidx/collection/OrderedScatterSet;->d:I

    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v2, p1, Landroidx/collection/OrderedScatterSet;->g:I

    if-le v2, p0, :cond_0

    if-eqz v2, :cond_0

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p1, v1}, Landroidx/collection/MutableOrderedScatterSet;->j(I)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
