.class final Landroidx/compose/foundation/layout/FlowMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
.implements Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u00012\u00020\u0002BO\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FlowMeasurePolicy;",
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
        "",
        "isHorizontal",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "verticalArrangement",
        "Landroidx/compose/ui/unit/Dp;",
        "mainAxisSpacing",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "crossAxisAlignment",
        "crossAxisArrangementSpacing",
        "",
        "maxItemsInMainAxis",
        "maxLines",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
        "overflow",
        "<init>",
        "(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "foundation-layout"
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
.field public final a:Z

.field public final b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final d:F

.field public final e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput p4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    iput-object p5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iput p6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    iput p7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iput p8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    iput-object p9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object p1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    invoke-static {v2, v1, v0}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final j()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object p0
.end method

.method public final k(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 25

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v3, v3}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v0

    goto/16 :goto_12

    :cond_0
    const v2, 0x7fffffff

    invoke-static {v3, v1, v3, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v7

    new-instance v9, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    const/4 v12, 0x0

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object v4, v9

    move/from16 v9, p6

    invoke-direct/range {v4 .. v12}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v4

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object/from16 v5, p0

    iget-boolean v5, v5, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    invoke-interface {v4, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-interface {v4, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    invoke-interface {v4, v6}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v7

    goto :goto_1

    :cond_3
    invoke-interface {v4, v6}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v7

    goto :goto_1

    :cond_4
    move v7, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_5

    move v8, v10

    goto :goto_2

    :cond_5
    move v8, v10

    move v10, v3

    :goto_2
    invoke-static {v1, v2}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v12

    const/16 v20, 0x0

    if-nez v4, :cond_6

    move-object/from16 v14, v20

    goto :goto_3

    :cond_6
    invoke-static {v7, v6}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v14

    new-instance v11, Landroidx/collection/IntIntPair;

    invoke-direct {v11, v14, v15}, Landroidx/collection/IntIntPair;-><init>(J)V

    move-object v14, v11

    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->b(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v10

    iget-boolean v10, v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->b:Z

    const-wide v21, 0xffffffffL

    if-eqz v10, :cond_9

    if-eqz v4, :cond_7

    move v10, v8

    :goto_4
    move-object/from16 v6, p7

    goto :goto_5

    :cond_7
    move v10, v3

    goto :goto_4

    :goto_5
    invoke-virtual {v6, v3, v3, v10}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a(IIZ)Landroidx/collection/IntIntPair;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-wide v0, v0, Landroidx/collection/IntIntPair;->a:J

    and-long v0, v0, v21

    long-to-int v0, v0

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    invoke-static {v0, v3}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v0

    goto/16 :goto_12

    :cond_9
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move v13, v1

    move v11, v3

    move v14, v11

    move/from16 v23, v14

    move v12, v15

    move/from16 v10, v17

    :goto_7
    if-ge v11, v4, :cond_14

    sub-int v7, v13, v7

    add-int/lit8 v13, v11, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-static {v13, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_b

    if-eqz v5, :cond_a

    invoke-interface {v6, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v10

    goto :goto_8

    :cond_a
    invoke-interface {v6, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v10

    goto :goto_8

    :cond_b
    move v10, v3

    :goto_8
    if-eqz v6, :cond_d

    if-eqz v5, :cond_c

    invoke-interface {v6, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v14

    goto :goto_9

    :cond_c
    invoke-interface {v6, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v14

    :goto_9
    add-int v14, v14, p3

    goto :goto_a

    :cond_d
    move v14, v3

    :goto_a
    add-int/lit8 v11, v11, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_e

    move v11, v8

    goto :goto_b

    :cond_e
    move v11, v3

    :goto_b
    sub-int v15, v13, v23

    move/from16 v19, v11

    move/from16 v18, v13

    move v11, v15

    move v15, v12

    invoke-static {v7, v2}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v12

    if-nez v6, :cond_f

    move-object/from16 v8, v20

    :goto_c
    move/from16 v2, v18

    goto :goto_d

    :cond_f
    invoke-static {v14, v10}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v2

    new-instance v8, Landroidx/collection/IntIntPair;

    invoke-direct {v8, v2, v3}, Landroidx/collection/IntIntPair;-><init>(J)V

    goto :goto_c

    :goto_d
    const/16 v18, 0x0

    move v3, v10

    move/from16 v10, v19

    const/16 v19, 0x0

    move/from16 v24, v14

    move-object v14, v8

    move/from16 v8, v24

    invoke-virtual/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->b(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v10

    iget-boolean v12, v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->a:Z

    if-eqz v12, :cond_13

    add-int v17, v17, p4

    add-int v13, v17, v16

    move v12, v15

    move v15, v11

    if-eqz v6, :cond_10

    const/4 v11, 0x1

    :goto_e
    move v14, v7

    goto :goto_f

    :cond_10
    const/4 v11, 0x0

    goto :goto_e

    :goto_f
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->a(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v6

    move v15, v12

    sub-int v14, v8, p3

    add-int/lit8 v12, v15, 0x1

    iget-boolean v7, v10, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->b:Z

    if-eqz v7, :cond_12

    if-eqz v6, :cond_11

    iget-wide v0, v6, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->c:J

    iget-boolean v3, v6, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->d:Z

    if-nez v3, :cond_11

    and-long v0, v0, v21

    long-to-int v0, v0

    add-int v0, v0, p4

    add-int/2addr v13, v0

    :cond_11
    move/from16 v16, v13

    move v14, v2

    goto :goto_11

    :cond_12
    move/from16 v23, v2

    move/from16 v16, v13

    move v7, v14

    const/4 v10, 0x0

    move v13, v1

    goto :goto_10

    :cond_13
    move v14, v7

    move v7, v8

    move v13, v14

    move v12, v15

    move/from16 v10, v17

    :goto_10
    move v11, v2

    move v14, v11

    move v6, v3

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_14
    :goto_11
    sub-int v0, v16, p4

    invoke-static {v0, v14}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v0

    :goto_12
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final l(IILjava/util/List;)I
    .locals 10

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    iget-boolean v7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    if-eqz v7, :cond_0

    invoke-interface {v6, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result v6

    goto :goto_1

    :cond_0
    invoke-interface {v6, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->l(I)I

    move-result v6

    :goto_1
    add-int/2addr v6, p2

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v7, v4

    iget v9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    if-eq v8, v9, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v5, v6

    goto :goto_3

    :cond_2
    :goto_2
    add-int/2addr v5, v6

    sub-int/2addr v5, p2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v5, v1

    move v4, v2

    :goto_3
    move v2, v7

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final m(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 34

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v3, p5

    move/from16 v7, p6

    move-object/from16 v4, p7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    return v11

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v13, v5, [I

    move-object v14, v0

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v6

    move v8, v11

    :goto_0
    if-ge v8, v6, :cond_3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object/from16 v10, p0

    iget-boolean v15, v10, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    if-eqz v15, :cond_1

    invoke-interface {v9, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v16

    :goto_1
    move/from16 v17, v11

    move/from16 v11, v16

    goto :goto_2

    :cond_1
    invoke-interface {v9, v1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v16

    goto :goto_1

    :goto_2
    aput v11, v12, v8

    if-eqz v15, :cond_2

    invoke-interface {v9, v11}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result v9

    goto :goto_3

    :cond_2
    invoke-interface {v9, v11}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result v9

    :goto_3
    aput v9, v13, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v17

    goto :goto_0

    :cond_3
    move/from16 v17, v11

    const v11, 0x7fffffff

    if-eq v7, v11, :cond_4

    if-eq v3, v11, :cond_4

    mul-int v6, v3, v7

    goto :goto_4

    :cond_4
    move v6, v11

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v15, 0x1

    if-ge v6, v8, :cond_6

    iget-object v8, v4, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v9, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v8, v9, :cond_5

    sget-object v9, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v8, v9, :cond_6

    :cond_5
    :goto_5
    move v8, v15

    goto :goto_6

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_7

    iget v8, v4, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b:I

    if-lt v7, v8, :cond_7

    iget-object v8, v4, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v9, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v8, v9, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v8, v17

    :goto_6
    sub-int/2addr v6, v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v8, v17

    move v9, v8

    :goto_7
    if-ge v8, v2, :cond_8

    aget v10, v12, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v15

    mul-int v8, v8, p3

    add-int/2addr v8, v9

    if-eqz v5, :cond_25

    aget v9, v13, v17

    sub-int/2addr v5, v15

    if-gt v15, v5, :cond_a

    move v10, v15

    :goto_8
    aget v11, v13, v10

    if-ge v9, v11, :cond_9

    move v9, v11

    :cond_9
    if-eq v10, v5, :cond_a

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    if-eqz v2, :cond_24

    aget v5, v12, v17

    sub-int/2addr v2, v15

    if-gt v15, v2, :cond_c

    move v10, v15

    :goto_9
    aget v11, v12, v10

    if-ge v5, v11, :cond_b

    move v5, v11

    :cond_b
    if-eq v10, v2, :cond_c

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_c
    move v11, v5

    move v2, v8

    :goto_a
    if-gt v11, v2, :cond_23

    if-ne v9, v1, :cond_d

    goto/16 :goto_1f

    :cond_d
    add-int v5, v11, v2

    div-int/lit8 v5, v5, 0x2

    sget v8, Landroidx/compose/foundation/layout/FlowLayoutKt;->a:I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const-wide v18, 0xffffffffL

    if-eqz v8, :cond_e

    move/from16 v8, v17

    invoke-static {v8, v8}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v9

    move v15, v2

    move/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move v11, v5

    move v13, v6

    goto/16 :goto_1c

    :cond_e
    move v15, v5

    move v10, v6

    move/from16 v8, v17

    const v9, 0x7fffffff

    invoke-static {v8, v15, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v5

    new-instance v20, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    move v9, v10

    const/4 v10, 0x0

    move/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move v11, v15

    move v15, v2

    move v12, v8

    move v13, v9

    move-object/from16 v2, v20

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v2, :cond_f

    aget v17, v33, v12

    move/from16 v8, v17

    goto :goto_b

    :cond_f
    move v8, v12

    :goto_b
    if-eqz v2, :cond_10

    aget v3, v32, v12

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_11

    move/from16 v21, v6

    :goto_d
    const v9, 0x7fffffff

    goto :goto_e

    :cond_11
    const/16 v21, 0x0

    goto :goto_d

    :goto_e
    invoke-static {v11, v9}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v23

    if-nez v2, :cond_12

    const/16 v25, 0x0

    goto :goto_f

    :cond_12
    invoke-static {v3, v8}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v9

    new-instance v7, Landroidx/collection/IntIntPair;

    invoke-direct {v7, v9, v10}, Landroidx/collection/IntIntPair;-><init>(J)V

    move-object/from16 v25, v7

    :goto_f
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v20 .. v30}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->b(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->b:Z

    if-eqz v7, :cond_15

    if-eqz v2, :cond_13

    move v2, v6

    :goto_10
    const/4 v8, 0x0

    goto :goto_11

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    :goto_11
    invoke-virtual {v4, v8, v8, v2}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a(IIZ)Landroidx/collection/IntIntPair;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-wide v2, v2, Landroidx/collection/IntIntPair;->a:J

    and-long v2, v2, v18

    long-to-int v2, v2

    goto :goto_12

    :cond_14
    move v2, v8

    :goto_12
    invoke-static {v2, v8}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v9

    goto/16 :goto_1c

    :cond_15
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v2

    move v9, v8

    move v7, v11

    move/from16 v5, v28

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_13
    if-ge v8, v2, :cond_1e

    sub-int/2addr v7, v3

    add-int/lit8 v12, v8, 0x1

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v28

    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v3, :cond_16

    aget v5, v33, v12

    move v9, v5

    goto :goto_14

    :cond_16
    const/4 v9, 0x0

    :goto_14
    if-eqz v3, :cond_17

    aget v5, v32, v12

    add-int v5, v5, p3

    goto :goto_15

    :cond_17
    const/4 v5, 0x0

    :goto_15
    add-int/lit8 v8, v8, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v8, v6, :cond_18

    const/16 v21, 0x1

    goto :goto_16

    :cond_18
    const/16 v21, 0x0

    :goto_16
    sub-int v22, v12, v10

    const v6, 0x7fffffff

    invoke-static {v7, v6}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v23

    if-nez v3, :cond_19

    move/from16 p0, v7

    const/16 v25, 0x0

    goto :goto_17

    :cond_19
    move/from16 p0, v7

    invoke-static {v5, v9}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v6

    new-instance v8, Landroidx/collection/IntIntPair;

    invoke-direct {v8, v6, v7}, Landroidx/collection/IntIntPair;-><init>(J)V

    move-object/from16 v25, v8

    :goto_17
    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v20 .. v30}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->b(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v6

    iget-boolean v7, v6, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->a:Z

    if-eqz v7, :cond_1d

    add-int v28, v28, p4

    add-int v24, v28, v27

    move/from16 v23, v26

    move/from16 v26, v22

    if-eqz v3, :cond_1a

    const/16 v22, 0x1

    :goto_18
    move/from16 v25, p0

    move-object/from16 v21, v6

    goto :goto_19

    :cond_1a
    const/16 v22, 0x0

    goto :goto_18

    :goto_19
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->a(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v3

    move-object/from16 v6, v21

    move/from16 v26, v23

    sub-int v5, v5, p3

    add-int/lit8 v26, v26, 0x1

    iget-boolean v6, v6, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->b:Z

    if-eqz v6, :cond_1c

    if-eqz v3, :cond_1b

    iget-wide v5, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->c:J

    iget-boolean v2, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->d:Z

    if-nez v2, :cond_1b

    and-long v2, v5, v18

    long-to-int v2, v2

    add-int v2, v2, p4

    add-int v24, v2, v24

    :cond_1b
    move/from16 v27, v24

    goto :goto_1b

    :cond_1c
    move v3, v5

    move v7, v11

    move v10, v12

    move/from16 v27, v24

    const/4 v5, 0x0

    goto :goto_1a

    :cond_1d
    move/from16 v25, p0

    move v3, v5

    move/from16 v7, v25

    move/from16 v5, v28

    :goto_1a
    move v8, v12

    const/4 v6, 0x1

    goto/16 :goto_13

    :cond_1e
    :goto_1b
    sub-int v2, v27, p4

    invoke-static {v2, v12}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v9

    :goto_1c
    const/16 v2, 0x20

    shr-long v2, v9, v2

    long-to-int v2, v2

    and-long v5, v9, v18

    long-to-int v3, v5

    if-gt v2, v1, :cond_21

    if-ge v3, v13, :cond_1f

    goto :goto_1e

    :cond_1f
    if-ge v2, v1, :cond_20

    add-int/lit8 v3, v11, -0x1

    move/from16 v7, p6

    move v9, v2

    move v2, v3

    move v8, v11

    move v6, v13

    move/from16 v11, v31

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    const/4 v15, 0x1

    const/16 v17, 0x0

    :goto_1d
    move/from16 v3, p5

    goto/16 :goto_a

    :cond_20
    return v11

    :cond_21
    :goto_1e
    add-int/lit8 v3, v11, 0x1

    if-le v3, v15, :cond_22

    return v3

    :cond_22
    move/from16 v7, p6

    move v9, v2

    move v8, v11

    move v6, v13

    move v2, v15

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    const/4 v15, 0x1

    const/16 v17, 0x0

    move v11, v3

    goto :goto_1d

    :cond_23
    :goto_1f
    return v8

    :cond_24
    invoke-static {}, Lb21;->x()V

    const/16 v17, 0x0

    return v17

    :cond_25
    invoke-static {}, Lb21;->x()V

    return v17
.end method

.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 10

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    :cond_1
    move-object v4, v1

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-static {v1, p3, v1, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v6

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMeasurable;ZJ)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    if-eqz v0, :cond_3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    move-object v3, p2

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v5

    iget p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v6

    iget v7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget-object v9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move-object v2, p0

    move v4, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->k(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0

    :cond_3
    move-object v2, p0

    move v4, p3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p1

    invoke-virtual {v2, v4, p1, p0}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->l(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 10

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    :cond_1
    move-object v4, v1

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v6

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMeasurable;ZJ)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    if-eqz v0, :cond_3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p1

    invoke-virtual {p0, p3, p1, p2}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->l(IILjava/util/List;)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_4

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    move-object v3, p2

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v5

    iget p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v6

    iget v7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget-object v9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move-object v2, p0

    move v4, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->k(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 63

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    const/4 v13, 0x0

    if-eqz v5, :cond_35

    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    if-eqz v5, :cond_35

    move-object v5, v2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v5

    iget-object v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    if-nez v5, :cond_0

    iget-object v5, v6, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->a:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Visible:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v5, v7, :cond_0

    goto/16 :goto_2b

    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/16 v8, 0xa

    if-eqz v7, :cond_1

    new-instance v0, Ldy;

    invoke-direct {v0, v8}, Ldy;-><init>(I)V

    invoke-static {v1, v13, v13, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v14, 0x1

    invoke-static {v14, v2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    const/4 v10, 0x2

    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v15, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    if-eqz v15, :cond_4

    sget-object v10, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_2

    :cond_4
    sget-object v10, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    :goto_2
    invoke-static {v3, v4, v10}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->a(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v11

    invoke-static {v8, v11, v12}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->b(IJ)J

    move-result-wide v11

    invoke-static {v11, v12, v10}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->c(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v10

    if-eqz v7, :cond_5

    new-instance v8, Lpz;

    invoke-direct {v8, v6, v0, v13}, Lpz;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;I)V

    invoke-static {v7, v0, v10, v11, v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->c(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    iput-object v7, v6, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->d:Landroidx/compose/ui/layout/Measurable;

    :cond_5
    if-eqz v2, :cond_6

    new-instance v7, Lpz;

    invoke-direct {v7, v6, v0, v14}, Lpz;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;I)V

    invoke-static {v2, v0, v10, v11, v7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->c(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    iput-object v2, v6, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->f:Landroidx/compose/ui/layout/Measurable;

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v15, :cond_7

    sget-object v5, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_3

    :cond_7
    sget-object v5, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    :goto_3
    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->a(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v19

    sget v3, Landroidx/compose/foundation/layout/FlowLayoutKt;->a:I

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v4, 0x10

    new-array v4, v4, [Landroidx/compose/ui/layout/MeasureResult;

    invoke-direct {v3, v4, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v4

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v5

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v6

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->a()Landroidx/collection/MutableIntObjectMap;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v10, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    invoke-interface {v1, v10}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-int v10, v10

    iget v11, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    invoke-interface {v1, v11}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    float-to-int v11, v11

    move/from16 v22, v10

    invoke-static {v13, v4, v13, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    move-result-wide v9

    const/16 v12, 0xe

    move/from16 v29, v15

    invoke-static {v12, v9, v10}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->b(IJ)J

    move-result-wide v14

    if-eqz v29, :cond_8

    sget-object v12, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_4

    :cond_8
    sget-object v12, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    :goto_4
    invoke-static {v14, v15, v12}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->c(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v14

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    instance-of v13, v2, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    const/16 v32, 0x0

    if-eqz v13, :cond_9

    new-instance v31, Landroidx/compose/foundation/layout/FlowLineInfo;

    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v34

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v35

    const/16 v36, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v31 .. v36}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v13, v31

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_a

    move-object/from16 p3, v3

    :catch_0
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 p3, v3

    :try_start_0
    instance-of v3, v2, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    if-eqz v3, :cond_b

    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v13}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->a(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v3

    goto :goto_6

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    move/from16 p4, v5

    if-eqz v3, :cond_c

    new-instance v5, Lnz;

    move-wide/from16 v33, v9

    const/4 v9, 0x0

    invoke-direct {v5, v9, v12}, Lnz;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v3, v0, v14, v15, v5}, Landroidx/compose/foundation/layout/FlowLayoutKt;->c(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v9

    new-instance v5, Landroidx/collection/IntIntPair;

    invoke-direct {v5, v9, v10}, Landroidx/collection/IntIntPair;-><init>(J)V

    goto :goto_7

    :cond_c
    move-wide/from16 v33, v9

    const/4 v5, 0x0

    :goto_7
    const/16 v31, 0x20

    if-eqz v5, :cond_d

    iget-wide v9, v5, Landroidx/collection/IntIntPair;->a:J

    shr-long v9, v9, v31

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    const-wide v46, 0xffffffffL

    move-object/from16 v48, v9

    if-eqz v5, :cond_e

    iget-wide v9, v5, Landroidx/collection/IntIntPair;->a:J

    and-long v9, v9, v46

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    new-instance v10, Landroidx/collection/MutableIntList;

    move-object/from16 v49, v3

    move-object/from16 v40, v5

    move-object/from16 v16, v12

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    invoke-direct {v10, v3, v5, v12}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p2, v9

    new-instance v9, Landroidx/collection/MutableIntList;

    invoke-direct {v9, v3, v5, v12}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v16

    invoke-static {}, Landroidx/collection/IntSetKt;->a()Landroidx/collection/MutableIntSet;

    move-result-object v5

    new-instance v50, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    const/16 v24, 0x0

    iget v12, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    move/from16 v23, v11

    iget-object v11, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-object/from16 v18, v11

    iget v11, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move/from16 v21, v11

    move/from16 v17, v12

    move-object/from16 v16, v50

    invoke-direct/range {v16 .. v24}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v11, v17

    move/from16 v16, v22

    move/from16 v12, v23

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    invoke-static {v4, v6}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v38

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v37, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move/from16 v26, v4

    move-object/from16 v35, v50

    invoke-virtual/range {v35 .. v45}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->b(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v4

    move/from16 v17, v6

    iget-boolean v6, v4, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->b:Z

    if-eqz v6, :cond_10

    if-eqz v40, :cond_f

    const/16 v23, 0x1

    goto :goto_a

    :cond_f
    const/16 v23, 0x0

    :goto_a
    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v24, -0x1

    move-object/from16 v22, v4

    move-object/from16 v21, v50

    invoke-virtual/range {v21 .. v27}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->a(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v4

    :goto_b
    move/from16 v6, v26

    goto :goto_c

    :cond_10
    move-object/from16 v22, v4

    const/4 v4, 0x0

    goto :goto_b

    :goto_c
    move-object/from16 v61, v4

    move/from16 v21, v6

    move/from16 v27, v21

    move-object/from16 v25, v9

    move/from16 v23, v12

    move/from16 v6, v17

    move-object/from16 v12, v22

    move/from16 v53, v32

    move-object/from16 v4, v49

    const/4 v9, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v57, 0x0

    move-object/from16 v22, p2

    move-object/from16 p2, v10

    move/from16 v10, p4

    move-object/from16 p4, v5

    const/4 v5, 0x0

    :goto_d
    iget-boolean v12, v12, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->b:Z

    if-nez v12, :cond_24

    if-eqz v4, :cond_24

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v35, v12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v22, v10

    add-int v10, v24, v35

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v58

    sub-int v5, v21, v35

    add-int/lit8 v12, v9, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v4

    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v7, v9, v4}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v9, :cond_11

    check-cast v4, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_12

    iget-object v4, v4, Landroidx/compose/foundation/layout/RowColumnParentData;->d:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v4, :cond_12

    iget v4, v4, Landroidx/compose/foundation/layout/FlowLayoutData;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_13

    const/16 v32, 0x1

    :cond_13
    sub-int v4, v12, v26

    if-ge v4, v11, :cond_14

    const/4 v9, 0x1

    goto :goto_10

    :cond_14
    const/4 v9, 0x0

    :goto_10
    if-eqz v13, :cond_19

    if-eqz v9, :cond_16

    sub-int v21, v5, v16

    move/from16 v52, v4

    if-gez v21, :cond_15

    const/4 v4, 0x0

    goto :goto_11

    :cond_15
    move/from16 v4, v21

    goto :goto_11

    :cond_16
    move/from16 v52, v4

    move/from16 v4, v27

    :goto_11
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->k1(I)F

    if-eqz v9, :cond_17

    move v9, v6

    goto :goto_12

    :cond_17
    sub-int v4, v6, v58

    sub-int v9, v4, v23

    if-gez v9, :cond_18

    const/4 v9, 0x0

    :cond_18
    :goto_12
    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->k1(I)F

    goto :goto_13

    :cond_19
    move/from16 v52, v4

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v9, 0x0

    :goto_14
    const/4 v4, 0x0

    goto :goto_16

    :cond_1a
    :try_start_1
    instance-of v4, v2, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    if-eqz v4, :cond_1b

    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v13}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->a(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v4

    goto :goto_15

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_15

    :catch_1
    const/4 v4, 0x0

    :goto_15
    move-object v9, v4

    goto :goto_14

    :goto_16
    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v9, :cond_1c

    new-instance v4, Lnz;

    const/4 v1, 0x1

    invoke-direct {v4, v1, v3}, Lnz;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v24, v2

    invoke-static {v9, v0, v14, v15, v4}, Landroidx/compose/foundation/layout/FlowLayoutKt;->c(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v1

    new-instance v4, Landroidx/collection/IntIntPair;

    invoke-direct {v4, v1, v2}, Landroidx/collection/IntIntPair;-><init>(J)V

    goto :goto_17

    :cond_1c
    move-object/from16 v24, v2

    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_1d

    iget-wide v1, v4, Landroidx/collection/IntIntPair;->a:J

    shr-long v1, v1, v31

    long-to-int v1, v1

    add-int v1, v1, v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_18

    :cond_1d
    const/4 v1, 0x0

    :goto_18
    move-object v2, v1

    if-eqz v4, :cond_1e

    iget-wide v0, v4, Landroidx/collection/IntIntPair;->a:J

    and-long v0, v0, v46

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_19

    :cond_1e
    const/4 v0, 0x0

    :goto_19
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    move/from16 v56, v53

    invoke-static {v5, v6}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v53

    if-nez v4, :cond_1f

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    const/16 v55, 0x0

    goto :goto_1a

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v0

    move-object/from16 v36, v2

    new-instance v2, Landroidx/collection/IntIntPair;

    invoke-direct {v2, v0, v1}, Landroidx/collection/IntIntPair;-><init>(J)V

    move-object/from16 v55, v2

    :goto_1a
    const/16 v59, 0x0

    const/16 v60, 0x0

    invoke-virtual/range {v50 .. v60}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->b(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v0

    move/from16 v1, v58

    iget-boolean v2, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->a:Z

    if-eqz v2, :cond_23

    move/from16 v2, v22

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v6, v27

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v54, v57, v1

    move/from16 v53, v56

    move/from16 v56, v52

    if-eqz v4, :cond_20

    const/16 v52, 0x1

    :goto_1b
    move-object/from16 v51, v0

    move/from16 v55, v5

    goto :goto_1c

    :cond_20
    const/16 v52, 0x0

    goto :goto_1b

    :goto_1c
    invoke-virtual/range {v50 .. v56}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->a(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v0

    move-object/from16 v4, v25

    move/from16 v5, v53

    invoke-virtual {v4, v1}, Landroidx/collection/MutableIntList;->e(I)V

    move-object/from16 v1, p4

    if-eqz v32, :cond_21

    invoke-virtual {v1, v5}, Landroidx/collection/MutableIntSet;->d(I)I

    move-result v10

    move-object/from16 p4, v0

    iget-object v0, v1, Landroidx/collection/IntSet;->b:[I

    aput v5, v0, v10

    goto :goto_1d

    :cond_21
    move-object/from16 p4, v0

    :goto_1d
    sub-int v0, v17, v54

    sub-int v0, v0, v23

    move-object/from16 v10, p2

    invoke-virtual {v10, v12}, Landroidx/collection/MutableIntList;->e(I)V

    if-eqz v36, :cond_22

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v22

    sub-int v22, v22, v16

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_1e

    :cond_22
    const/16 v22, 0x0

    :goto_1e
    add-int/lit8 v53, v5, 0x1

    add-int v54, v54, v23

    move-object/from16 v61, p4

    move/from16 v27, v6

    move/from16 v55, v27

    move/from16 v26, v12

    move-object/from16 v48, v22

    move/from16 v57, v54

    const/4 v5, 0x0

    const/16 v32, 0x0

    move v6, v0

    move-object v0, v10

    move v10, v2

    const/4 v2, 0x0

    goto :goto_1f

    :cond_23
    move-object/from16 v51, v0

    move/from16 v58, v1

    move/from16 v55, v5

    move/from16 v2, v22

    move-object/from16 v4, v25

    move/from16 v5, v56

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v48, v10

    move v10, v2

    move/from16 v2, v48

    move/from16 v53, v5

    move-object/from16 v48, v36

    move/from16 v5, v58

    :goto_1f
    move-object/from16 p2, v24

    move/from16 v24, v2

    move-object/from16 v2, p2

    move-object/from16 p2, v0

    move-object/from16 p4, v1

    move-object/from16 v25, v4

    move-object v4, v9

    move v9, v12

    move-object/from16 v22, v35

    move-object/from16 v12, v51

    move/from16 v21, v55

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_d

    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move v2, v10

    move-object/from16 v4, v25

    move-object/from16 v3, v61

    if-eqz v3, :cond_26

    iget-wide v5, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->c:J

    iget-object v9, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->a:Landroidx/compose/ui/layout/Measurable;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v28, 0x1

    add-int/lit8 v9, v9, -0x1

    iget-object v10, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->b:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    iget v9, v0, Landroidx/collection/IntList;->b:I

    add-int/lit8 v9, v9, -0x1

    iget-boolean v3, v3, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->d:Z

    if-eqz v3, :cond_25

    invoke-virtual {v4, v9}, Landroidx/collection/IntList;->b(I)I

    move-result v3

    and-long v5, v5, v46

    long-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Landroidx/collection/MutableIntList;->h(II)V

    invoke-virtual {v0}, Landroidx/collection/IntList;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v9, v3}, Landroidx/collection/MutableIntList;->h(II)V

    goto :goto_20

    :cond_25
    and-long v5, v5, v46

    long-to-int v3, v5

    invoke-virtual {v4, v3}, Landroidx/collection/MutableIntList;->e(I)V

    invoke-virtual {v0}, Landroidx/collection/IntList;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/collection/MutableIntList;->e(I)V

    :cond_26
    :goto_20
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v5, v8

    new-array v8, v3, [Landroidx/compose/ui/layout/Placeable;

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v3, :cond_27

    invoke-virtual {v7, v9}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_27
    iget v13, v0, Landroidx/collection/IntList;->b:I

    new-array v11, v13, [I

    new-array v14, v13, [I

    iget-object v15, v0, Landroidx/collection/IntList;->a:[I

    move v10, v2

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_22
    if-ge v12, v13, :cond_2b

    move v2, v10

    aget v10, v15, v12

    invoke-virtual {v4, v12}, Landroidx/collection/IntList;->b(I)I

    move-result v0

    invoke-virtual {v1, v12}, Landroidx/collection/IntSet;->a(I)Z

    move-result v3

    if-eqz v3, :cond_28

    :goto_23
    move-object v3, v1

    move v1, v2

    goto :goto_24

    :cond_28
    invoke-static/range {v33 .. v34}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v0

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_29

    move v0, v3

    goto :goto_23

    :cond_29
    invoke-static/range {v33 .. v34}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v0

    sub-int v0, v0, v17

    goto :goto_23

    :goto_24
    invoke-static/range {v33 .. v34}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v2

    move-object v6, v3

    invoke-static/range {v33 .. v34}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v3

    move-object/from16 v25, v4

    move-object v7, v5

    move/from16 v18, v13

    move/from16 v5, v16

    move-object/from16 v13, p3

    move v4, v0

    move-object/from16 v16, v6

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;->a(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    move v3, v1

    move/from16 v22, v5

    move-object v1, v6

    move-object v5, v7

    if-eqz v29, :cond_2a

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v4

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v6

    goto :goto_25

    :cond_2a
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v4

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v6

    :goto_25
    aput v6, v14, v12

    add-int v17, v17, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move v9, v10

    move-object/from16 p3, v13

    move-object/from16 v1, v16

    move/from16 v13, v18

    move/from16 v16, v22

    move-object/from16 v4, v25

    move v10, v3

    goto :goto_22

    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p3

    move v3, v10

    iget v2, v13, Landroidx/compose/runtime/collection/MutableVector;->d:I

    if-nez v2, :cond_2c

    const/4 v6, 0x0

    const/16 v30, 0x0

    goto :goto_26

    :cond_2c
    move v6, v3

    move/from16 v30, v17

    :goto_26
    if-eqz v29, :cond_2f

    iget-object v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v2

    iget v3, v13, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/16 v28, 0x1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v2

    add-int v3, v3, v30

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v2

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v4

    if-ge v3, v2, :cond_2d

    move v3, v2

    :cond_2d
    if-le v3, v4, :cond_2e

    goto :goto_27

    :cond_2e
    move v4, v3

    :goto_27
    invoke-interface {v0, v1, v4, v14, v11}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->b(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_29

    :cond_2f
    iget-object v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v2

    iget v3, v13, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/16 v28, 0x1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v2

    add-int v3, v3, v30

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v2

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v4

    if-ge v3, v2, :cond_30

    move v3, v2

    :cond_30
    if-le v3, v4, :cond_31

    move v2, v4

    goto :goto_28

    :cond_31
    move v2, v3

    :goto_28
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    move-object v5, v11

    move-object v3, v14

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    move v4, v2

    :goto_29
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v0

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v2

    if-ge v6, v0, :cond_32

    move v6, v0

    :cond_32
    if-le v6, v2, :cond_33

    goto :goto_2a

    :cond_33
    move v2, v6

    :goto_2a
    if-eqz v29, :cond_34

    move/from16 v62, v4

    move v4, v2

    move/from16 v2, v62

    :cond_34
    new-instance v0, Lck;

    const/16 v3, 0x1b

    invoke-direct {v0, v13, v3}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v4, v2, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_35
    :goto_2b
    new-instance v0, Ldy;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ldy;-><init>(I)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    :cond_1
    move-object v4, v1

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-static {v1, p3, v1, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v6

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMeasurable;ZJ)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    if-eqz v0, :cond_3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    move-object v4, p2

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v6

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v7

    iget v8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget-object v10, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v3 .. v10}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->k(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0

    :cond_3
    move-object v0, p0

    move v5, p3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    move v2, v5

    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget-object v7, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->m(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    :cond_1
    move-object v4, v1

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v6

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->b(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMeasurable;ZJ)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    if-eqz v0, :cond_3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    move-object v4, p2

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v6

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v7

    iget v8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget-object v10, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v9, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v3 .. v10}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->m(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0

    :cond_3
    move-object v0, p0

    move v5, p3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    move v2, v5

    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    iget-object v7, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->k(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowMeasurePolicy(isHorizontal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verticalArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->c:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainAxisSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->d:F

    const-string v2, ", crossAxisAlignment="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->e:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crossAxisArrangementSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->f:F

    const-string v2, ", maxItemsInMainAxis="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overflow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->i:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
