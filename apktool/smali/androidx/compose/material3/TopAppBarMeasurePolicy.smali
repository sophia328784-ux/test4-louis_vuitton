.class final Landroidx/compose/material3/TopAppBarMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material3/TopAppBarMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "Landroidx/compose/material3/internal/FloatProducer;",
        "scrolledOffset",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "titleVerticalArrangement",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "titleHorizontalAlignment",
        "",
        "titleBottomPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "height",
        "<init>",
        "(Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Landroidx/compose/material3/internal/FloatProducer;

.field public final b:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final c:Landroidx/compose/ui/Alignment$Horizontal;

.field public final d:I

.field public final e:F


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->a:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p2, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p3, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->c:Landroidx/compose/ui/Alignment$Horizontal;

    iput p4, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->d:I

    iput p5, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->e:F

    return-void
.end method


# virtual methods
.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 5

    iget p0, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->e:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->l(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_2

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge p1, p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const-string v5, "Collection contains no element matching the predicate."

    if-ge v3, v1, :cond_b

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "navigationIcon"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v12

    invoke-interface {v6, v12, v13}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    move v9, v2

    :goto_1
    if-ge v9, v6, :cond_9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "actionIcons"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 v14, p3

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v11

    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v9

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v9

    :cond_0
    :goto_2
    move/from16 v17, v9

    goto :goto_3

    :cond_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v9

    iget v11, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr v9, v11

    iget v11, v6, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr v9, v11

    if-gez v9, :cond_0

    move v9, v2

    goto :goto_2

    :goto_3
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v9, v2

    :goto_4
    if-ge v9, v3, :cond_7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "title"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-wide/from16 v14, p3

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v3

    invoke-interface {v11, v3, v4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    sget-object v0, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-interface {v3, v0}, Landroidx/compose/ui/layout/Measured;->W(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    invoke-interface {v3, v0}, Landroidx/compose/ui/layout/Measured;->W(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    move v9, v0

    goto :goto_5

    :cond_2
    move v9, v2

    :goto_5
    iget-object v0, v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;->a:Landroidx/compose/material3/internal/FloatProducer;

    invoke-interface {v0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_6

    :cond_3
    invoke-static {v0}, Lkotlin/math/MathKt;->c(F)I

    move-result v0

    :goto_6
    iget v4, v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;->e:F

    invoke-interface {v7, v4}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    iget v5, v3, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v5

    if-ne v5, v10, :cond_4

    move v2, v4

    goto :goto_7

    :cond_4
    add-int/2addr v0, v4

    if-gez v0, :cond_5

    goto :goto_7

    :cond_5
    move v2, v0

    :goto_7
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v11

    new-instance v0, Landroidx/compose/material3/u;

    move v10, v4

    move-object v4, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/u;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/TopAppBarMeasurePolicy;II)V

    invoke-static {v7, v11, v2, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p0

    goto :goto_4

    :cond_7
    invoke-static {v5}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p0

    goto/16 :goto_1

    :cond_9
    invoke-static {v5}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, p0

    goto/16 :goto_0

    :cond_b
    invoke-static {v5}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v4
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 5

    iget p0, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy;->e:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_2

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge p1, p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v1, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
