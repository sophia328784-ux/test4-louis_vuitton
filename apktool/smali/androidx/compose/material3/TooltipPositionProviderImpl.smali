.class final Landroidx/compose/material3/TooltipPositionProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/material3/TooltipPositionProviderImpl;",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "Landroidx/compose/material3/TooltipAnchorPosition;",
        "type",
        "",
        "tooltipAnchorSpacing",
        "<init>",
        "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->a:I

    iput p2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 9

    sget-object v0, Landroidx/compose/material3/TooltipAnchorPosition;->a:Landroidx/compose/material3/TooltipAnchorPosition$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/TooltipAnchorPosition;->d:I

    iget v2, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->a:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, p1, p5, p6}, Landroidx/compose/material3/TooltipPositionProviderImpl;->c(Landroidx/compose/ui/unit/IntRect;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/TooltipAnchorPosition;->e:I

    if-ne v2, v1, :cond_1

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p2

    move-wide v5, p5

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/material3/TooltipPositionProviderImpl;->d(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    move-wide v7, p2

    move-wide p2, p5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Landroidx/compose/material3/TooltipAnchorPosition;->b:I

    if-ne v2, p5, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/material3/TooltipPositionProviderImpl;->b(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Landroidx/compose/material3/TooltipAnchorPosition;->c:I

    if-ne v2, p5, :cond_6

    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    move-result p5

    const/16 p6, 0x20

    shr-long v0, p2, p6

    long-to-int v0, v0

    const/4 v1, 0x2

    invoke-static {p5, v0, v1, p4}, La;->a(IIII)I

    move-result p4

    if-gez p4, :cond_3

    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    goto :goto_0

    :cond_3
    add-int p5, p4, v0

    shr-long v1, v7, p6

    long-to-int v1, v1

    if-le p5, v1, :cond_4

    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->c:I

    sub-int/2addr p4, v0

    :cond_4
    :goto_0
    iget p5, p1, Landroidx/compose/ui/unit/IntRect;->d:I

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->b:I

    add-int/2addr p5, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    long-to-int p2, p2

    add-int p3, p5, p2

    and-long v2, v7, v0

    long-to-int v2, v2

    if-le p3, v2, :cond_5

    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->b:I

    sub-int/2addr p1, p2

    sub-int p5, p1, p0

    :cond_5
    int-to-long p0, p4

    shl-long/2addr p0, p6

    int-to-long p2, p5

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    return-wide p0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Landroidx/compose/material3/TooltipAnchorPosition;->f:I

    if-ne v2, p5, :cond_8

    sget-object p5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p5, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TooltipPositionProviderImpl;->c(Landroidx/compose/ui/unit/IntRect;J)J

    move-result-wide p0

    goto :goto_1

    :cond_7
    move-wide p4, v7

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->d(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    :goto_1
    return-wide p0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p5, Landroidx/compose/material3/TooltipAnchorPosition;->g:I

    if-ne v2, p5, :cond_a

    sget-object p5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p5, :cond_9

    move-wide p4, v7

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->d(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/TooltipPositionProviderImpl;->c(Landroidx/compose/ui/unit/IntRect;J)J

    move-result-wide p0

    :goto_2
    return-wide p0

    :cond_a
    move-wide p4, v7

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/material3/TooltipPositionProviderImpl;->b(Landroidx/compose/ui/unit/IntRect;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 5

    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    move-result v1

    const/16 v2, 0x20

    shr-long v3, p2, v2

    long-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4, v0}, La;->a(IIII)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    goto :goto_0

    :cond_0
    add-int v1, v0, v3

    shr-long/2addr p4, v2

    long-to-int p4, p4

    if-le v1, p4, :cond_1

    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->c:I

    sub-int v0, p4, v3

    :cond_1
    :goto_0
    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->b:I

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p2, p2

    sub-int/2addr p4, p2

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->b:I

    sub-int/2addr p4, p0

    if-gez p4, :cond_2

    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->d:I

    add-int p4, p1, p0

    :cond_2
    int-to-long p0, v0

    shl-long/2addr p0, v2

    int-to-long p2, p4

    and-long/2addr p2, v3

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    return-wide p0
.end method

.method public final c(Landroidx/compose/ui/unit/IntRect;J)J
    .locals 4

    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->b:I

    add-int/2addr v2, p0

    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->c:I

    add-int/2addr v0, p0

    :cond_0
    iget p0, p1, Landroidx/compose/ui/unit/IntRect;->b:I

    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->d:I

    add-int/2addr p0, p1

    const-wide v2, 0xffffffffL

    and-long p1, p2, v2

    long-to-int p1, p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    int-to-long p1, v0

    shl-long/2addr p1, v1

    int-to-long v0, p0

    and-long/2addr v0, v2

    or-long p0, p1, v0

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    return-wide p0
.end method

.method public final d(Landroidx/compose/ui/unit/IntRect;JJ)J
    .locals 4

    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->c:I

    iget p0, p0, Landroidx/compose/material3/TooltipPositionProviderImpl;->b:I

    add-int/2addr v0, p0

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    add-int v3, v0, v2

    shr-long/2addr p4, v1

    long-to-int p4, p4

    if-le v3, p4, :cond_0

    iget p4, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    add-int/2addr v2, p0

    sub-int v0, p4, v2

    :cond_0
    iget p0, p1, Landroidx/compose/ui/unit/IntRect;->b:I

    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->d:I

    add-int/2addr p0, p1

    const-wide p4, 0xffffffffL

    and-long p1, p2, p4

    long-to-int p1, p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    int-to-long p1, v0

    shl-long/2addr p1, v1

    int-to-long v0, p0

    and-long p3, v0, p4

    or-long p0, p1, p3

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    return-wide p0
.end method
