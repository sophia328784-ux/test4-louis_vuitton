.class public final Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u00128\u0008\u0002\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "",
        "topWindowInsets",
        "Landroidx/compose/runtime/State;",
        "",
        "keyboardSignalState",
        "verticalMargin",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/IntRect;",
        "Lkotlin/ParameterName;",
        "name",
        "anchorBounds",
        "menuBounds",
        "onPositionCalculated",
        "<init>",
        "(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILkotlin/jvm/functions/Function2;)V",
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
.field public final a:Landroidx/compose/ui/unit/Density;

.field public final b:I

.field public final c:Landroidx/compose/runtime/State;

.field public final d:Lkotlin/jvm/functions/Function2;

.field public final e:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

.field public final f:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

.field public final g:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

.field public final h:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

.field public final i:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

.field public final j:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

.field public final k:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

.field public final l:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Landroidx/compose/runtime/State<",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->a:Landroidx/compose/ui/unit/Density;

    iput p2, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->b:I

    iput-object p3, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->c:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->d:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    sget-object p2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 p5, 0x0

    invoke-direct {p1, p3, p3, p5}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->e:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    new-instance p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {p1, p3, p3, p5}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->f:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    new-instance p1, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    sget-object p3, Landroidx/compose/ui/AbsoluteAlignment;->c:Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;

    invoke-direct {p1, p3, p5}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->g:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    new-instance p1, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    sget-object p3, Landroidx/compose/ui/AbsoluteAlignment;->d:Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;

    invoke-direct {p1, p3, p5}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;-><init>(Landroidx/compose/ui/Alignment$Horizontal;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->h:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    new-instance p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {p1, p3, v0, p5}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->i:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    new-instance p1, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0, p3, p5}, Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->j:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    new-instance p1, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p3, p4}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->k:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    new-instance p1, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0, p4}, Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;-><init>(Landroidx/compose/ui/Alignment$Vertical;I)V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->l:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 101
    sget p3, Landroidx/compose/material3/MenuKt;->a:F

    .line 102
    invoke-interface {p1, p3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p4

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 103
    new-instance p5, Lrq;

    const/16 p3, 0x11

    invoke-direct {p5, p3}, Lrq;-><init>(I)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    .line 104
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;-><init>(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/State;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v7, p5

    iget-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->c:Landroidx/compose/runtime/State;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    :cond_0
    const/16 v9, 0x20

    shr-long v1, p2, v9

    long-to-int v1, v1

    const-wide v10, 0xffffffffL

    and-long v2, p2, v10

    long-to-int v2, v2

    iget v3, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->b:I

    add-int/2addr v2, v3

    int-to-long v3, v1

    shl-long/2addr v3, v9

    int-to-long v1, v2

    and-long/2addr v1, v10

    or-long/2addr v3, v1

    sget-object v1, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/unit/IntRect;->a()J

    move-result-wide v1

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long/2addr v1, v9

    long-to-int v1, v1

    shr-long v5, v3, v9

    long-to-int v12, v5

    div-int/lit8 v2, v12, 0x2

    if-ge v1, v2, :cond_1

    iget-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->g:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->h:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal;

    :goto_0
    const/4 v13, 0x3

    new-array v2, v13, [Landroidx/compose/material3/internal/MenuPosition$Horizontal;

    const/4 v14, 0x0

    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->e:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    aput-object v5, v2, v14

    const/4 v15, 0x1

    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->f:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal;

    aput-object v5, v2, v15

    const/16 v16, 0x2

    aput-object v1, v2, v16

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v5, v14

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/material3/internal/MenuPosition$Horizontal;

    move/from16 v17, v9

    move-wide/from16 v18, v10

    shr-long v9, v7, v17

    long-to-int v9, v9

    move v10, v2

    move v11, v5

    move v5, v9

    move-object/from16 v2, p1

    move-object v9, v1

    move-object v1, v6

    move-object/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Landroidx/compose/material3/internal/MenuPosition$Horizontal;->a(Landroidx/compose/ui/unit/IntRect;JILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v15

    if-eq v11, v6, :cond_4

    if-ltz v1, :cond_2

    add-int/2addr v5, v1

    if-gt v5, v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v11, 0x1

    move-object v1, v9

    move v2, v10

    move/from16 v9, v17

    move-wide/from16 v10, v18

    goto :goto_1

    :cond_3
    move-object/from16 v2, p1

    move/from16 v17, v9

    move-wide/from16 v18, v10

    move v1, v14

    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntRect;->a()J

    move-result-wide v5

    and-long v5, v5, v18

    long-to-int v5, v5

    and-long v9, v3, v18

    long-to-int v6, v9

    div-int/lit8 v9, v6, 0x2

    if-ge v5, v9, :cond_5

    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->k:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    goto :goto_3

    :cond_5
    iget-object v5, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->l:Landroidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical;

    :goto_3
    new-array v9, v13, [Landroidx/compose/material3/internal/MenuPosition$Vertical;

    iget-object v10, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->i:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    aput-object v10, v9, v14

    iget-object v10, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->j:Landroidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical;

    aput-object v10, v9, v15

    aput-object v5, v9, v16

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move v10, v14

    :goto_4
    if-ge v10, v9, :cond_8

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/material3/internal/MenuPosition$Vertical;

    and-long v12, v7, v18

    long-to-int v12, v12

    invoke-interface {v11, v2, v3, v4, v12}, Landroidx/compose/material3/internal/MenuPosition$Vertical;->a(Landroidx/compose/ui/unit/IntRect;JI)I

    move-result v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v15

    if-eq v10, v13, :cond_7

    if-ltz v11, :cond_6

    add-int/2addr v12, v11

    if-gt v12, v6, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    move v14, v11

    :cond_8
    int-to-long v3, v1

    shl-long v3, v3, v17

    int-to-long v5, v14

    and-long v5, v5, v18

    or-long/2addr v3, v5

    iget-object v0, v0, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/unit/IntRectKt;->a(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v3
.end method
