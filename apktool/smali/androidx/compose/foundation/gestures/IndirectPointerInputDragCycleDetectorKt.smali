.class public abstract Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V
    .locals 13

    move-object/from16 v1, p4

    iget-object v2, v1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->b:Landroidx/collection/MutableObjectList;

    iget-wide v3, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-wide v6, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iput v7, v1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    invoke-virtual {v2}, Landroidx/collection/MutableObjectList;->k()V

    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v6

    const/4 v10, 0x0

    if-nez v6, :cond_5

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v6

    if-nez v6, :cond_5

    iget v3, v2, Landroidx/collection/ObjectList;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, v1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    invoke-virtual {v2, v3, p1}, Landroidx/collection/MutableObjectList;->p(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :goto_0
    iget v3, v1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    if-ne v3, v4, :cond_2

    iput v7, v1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    :cond_2
    iget-object v1, v2, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v3, v2, Landroidx/collection/ObjectList;->b:I

    move v4, v7

    move v6, v10

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v11, v1, v4

    check-cast v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    sget v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->c:I

    iget-wide v11, v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    shr-long/2addr v11, v5

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    add-float/2addr v6, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget v1, v2, Landroidx/collection/ObjectList;->b:I

    int-to-float v3, v1

    div-float v3, v6, v3

    iget-object v4, v2, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    move v6, v10

    :goto_2
    if-ge v7, v1, :cond_4

    aget-object v11, v4, v7

    check-cast v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    sget v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->c:I

    iget-wide v11, v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    and-long/2addr v11, v8

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    add-float/2addr v6, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget v1, v2, Landroidx/collection/ObjectList;->b:I

    int-to-float v1, v1

    div-float v4, v6, v1

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v1, v5

    and-long/2addr v3, v8

    or-long/2addr v1, v3

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    sget-object v3, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->c:I

    move-object/from16 v4, p3

    iget v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    if-ne v4, v3, :cond_7

    shr-long/2addr v1, v5

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    goto :goto_3

    :cond_7
    sget v3, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->d:I

    if-ne v4, v3, :cond_9

    and-long/2addr v1, v8

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    :goto_3
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, v2, :cond_8

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v0, v5

    and-long/2addr v2, v8

    or-long v1, v0, v2

    goto :goto_4

    :cond_8
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v2, v5

    and-long/2addr v0, v8

    or-long v1, v2, v0

    :cond_9
    :goto_4
    iget-wide v3, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    move-wide/from16 v5, p5

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;

    invoke-virtual {p0, v3, v4, v0, v1}, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->a(JJ)V

    return-void
.end method

.method public static final b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J
    .locals 9

    iget-wide v0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->g:J

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->c:I

    iget v3, p2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    if-ne v3, v2, :cond_1

    shr-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    :cond_1
    sget v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->d:I

    if-ne v3, v2, :cond_3

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :goto_0
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v0, v6

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    shl-long v0, v1, v6

    and-long v2, v7, v4

    or-long/2addr v0, v2

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    :cond_3
    :goto_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide p1

    if-nez p3, :cond_4

    iget-boolean p0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_4
    return-wide p1
.end method

.method public static final e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 6

    if-nez p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    return-wide p0

    :cond_0
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->b:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->c:I

    iget p2, p2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-ne p2, v0, :cond_1

    iget-wide v4, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    shr-long/2addr v4, v3

    long-to-int p0, v4

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->d:I

    if-ne p2, v0, :cond_3

    iget-wide v4, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    and-long/2addr v4, v1

    long-to-int p0, v4

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_0
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v4, p2

    shl-long/2addr p0, v3

    and-long v0, v4, v1

    or-long/2addr p0, v0

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v3

    and-long v0, v4, v1

    or-long/2addr p0, v0

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0

    :cond_3
    iget-wide p0, p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    return-wide p0
.end method
