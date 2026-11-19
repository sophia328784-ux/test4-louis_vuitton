.class public abstract Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;",
        "",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/inputmethod/HandwritingGesture;->getFallbackText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x5

    return p0
.end method

.method public static b(JLandroidx/compose/ui/text/AnnotatedString;ZLxo0;)V
    .locals 6

    const-wide v0, 0xffffffffL

    if-eqz p3, :cond_7

    sget-object p3, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    const/16 p3, 0x20

    shr-long v2, p0, p3

    long-to-int p3, v2

    and-long v2, p0, v0

    long-to-int v2, v2

    const/16 v3, 0xa

    if-lez p3, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    :cond_1
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->i(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->h(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->g(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    sub-int/2addr p3, p0

    if-eqz p3, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->i(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_3
    invoke-static {p3, v2}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide p0

    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->i(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->h(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->g(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr v2, p0

    iget-object p0, p2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq v2, p0, :cond_6

    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->i(I)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_6
    invoke-static {p3, v2}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide p0

    :cond_7
    :goto_1
    new-instance p2, Landroidx/compose/ui/text/input/SetSelectionCommand;

    sget-object p3, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    and-long/2addr v0, p0

    long-to-int p3, v0

    invoke-direct {p2, p3, p3}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->d(J)I

    move-result p0

    new-instance p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroidx/compose/ui/text/input/EditCommand;

    aput-object p2, p0, p3

    const/4 p2, 0x1

    aput-object p1, p0, p2

    new-instance p1, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    invoke-virtual {p4, p1}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/HandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;Lxo0;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v6, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v6, :cond_1

    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    if-eqz v6, :cond_1

    iget-object v6, v6, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroidx/compose/ui/text/AnnotatedString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    const/4 v0, 0x3

    return v0

    :cond_2
    instance-of v6, v1, Landroid/view/inputmethod/SelectGesture;

    const-wide v8, 0xffffffffL

    const/16 v10, 0x20

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    check-cast v1, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v1}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    move-result v5

    invoke-static {v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result v5

    invoke-static {v0, v3, v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    shr-long v12, v5, v10

    long-to-int v1, v12

    and-long/2addr v5, v8

    long-to-int v3, v5

    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    invoke-virtual {v4, v0}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    return v11

    :cond_4
    instance-of v6, v1, Landroid/view/inputmethod/DeleteGesture;

    const/4 v12, 0x0

    if-eqz v6, :cond_7

    check-cast v1, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_5
    sget-object v0, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/TextGranularity;->b:I

    if-ne v2, v0, :cond_6

    move v12, v11

    :cond_6
    invoke-static {v6, v7, v5, v12, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->b(JLandroidx/compose/ui/text/AnnotatedString;ZLxo0;)V

    return v11

    :cond_7
    instance-of v6, v1, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v6, :cond_a

    check-cast v1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    move-result v6

    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result v6

    invoke-static {v0, v3, v5, v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_8
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    shr-long v12, v5, v10

    long-to-int v1, v12

    and-long/2addr v5, v8

    long-to-int v3, v5

    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    invoke-virtual {v4, v0}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    :cond_9
    return v11

    :cond_a
    instance-of v2, v1, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v2, :cond_d

    check-cast v1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    invoke-static {v0, v3, v6, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_b
    sget-object v0, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/TextGranularity;->b:I

    if-ne v2, v0, :cond_c

    move v12, v11

    :cond_c
    invoke-static {v6, v7, v5, v12, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->b(JLandroidx/compose/ui/text/AnnotatedString;ZLxo0;)V

    return v11

    :cond_d
    instance-of v2, v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    const/4 v6, 0x2

    const/4 v8, -0x1

    if-eqz v2, :cond_16

    check-cast v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    if-nez v3, :cond_e

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_e
    invoke-virtual {v1}, Landroid/view/inputmethod/JoinOrSplitGesture;->getJoinOrSplitPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    move-result-wide v13

    invoke-static {v0, v13, v14, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result v2

    if-eq v2, v8, :cond_15

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_f

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->c(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result v0

    if-ne v0, v11, :cond_f

    goto :goto_5

    :cond_f
    move v0, v2

    :goto_2
    if-lez v0, :cond_11

    invoke-static {v5, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->h(I)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_11
    :goto_3
    iget-object v1, v5, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_13

    invoke-static {v5, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->h(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_3

    :cond_13
    :goto_4
    invoke-static {v0, v2}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v2

    if-eqz v2, :cond_14

    shr-long/2addr v0, v10

    long-to-int v0, v0

    new-instance v1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v1, v0, v0}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    const-string v2, " "

    invoke-direct {v0, v2, v11}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    new-array v2, v6, [Landroidx/compose/ui/text/input/EditCommand;

    aput-object v1, v2, v12

    aput-object v0, v2, v11

    new-instance v0, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    invoke-direct {v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    invoke-virtual {v4, v0}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    :cond_14
    invoke-static {v0, v1, v5, v12, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->b(JLandroidx/compose/ui/text/AnnotatedString;ZLxo0;)V

    return v11

    :cond_15
    :goto_5
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_16
    instance-of v2, v1, Landroid/view/inputmethod/InsertGesture;

    if-eqz v2, :cond_1a

    check-cast v1, Landroid/view/inputmethod/InsertGesture;

    if-nez v3, :cond_17

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_17
    invoke-virtual {v1}, Landroid/view/inputmethod/InsertGesture;->getInsertionPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    move-result-wide v9

    invoke-static {v0, v9, v10, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result v2

    if-eq v2, v8, :cond_19

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_18

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->c(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result v0

    if-ne v0, v11, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {v1}, Landroid/view/inputmethod/InsertGesture;->getTextToInsert()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v1, v2, v2}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    new-instance v2, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-direct {v2, v0, v11}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    new-array v0, v6, [Landroidx/compose/ui/text/input/EditCommand;

    aput-object v1, v0, v12

    aput-object v2, v0, v11

    new-instance v1, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    invoke-virtual {v4, v1}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    :cond_19
    :goto_6
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_1a
    instance-of v2, v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    if-eqz v2, :cond_29

    check-cast v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v7, v2, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    :cond_1b
    invoke-virtual {v1}, Landroid/view/inputmethod/RemoveSpaceGesture;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    move-result-wide v13

    invoke-virtual {v1}, Landroid/view/inputmethod/RemoveSpaceGesture;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    move v9, v10

    move v15, v11

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->d(Landroid/graphics/PointF;)J

    move-result-wide v10

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v7, :cond_20

    iget-object v2, v7, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    if-nez v0, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-interface {v0, v13, v14}, Landroidx/compose/ui/layout/LayoutCoordinates;->f(J)J

    move-result-wide v13

    invoke-interface {v0, v10, v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->f(J)J

    move-result-wide v10

    invoke-static {v2, v13, v14, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->e(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result v0

    invoke-static {v2, v10, v11, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->e(Landroidx/compose/ui/text/MultiParagraph;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result v3

    if-ne v0, v8, :cond_1d

    if-ne v3, v8, :cond_1f

    sget-object v0, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/text/TextRange;->c:J

    goto :goto_9

    :cond_1d
    if-ne v3, v8, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_7
    move v3, v0

    :cond_1f
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    move-result v0

    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    move-result v3

    add-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    shr-long/2addr v13, v9

    long-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    shr-long/2addr v10, v9

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const v13, 0x3dcccccd    # 0.1f

    sub-float v14, v3, v13

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v3, v13

    invoke-direct {v0, v11, v14, v7, v3}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    sget-object v3, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->a:Lb21;

    invoke-virtual {v2, v0, v12, v3}, Landroidx/compose/ui/text/MultiParagraph;->h(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v2

    goto :goto_9

    :cond_20
    :goto_8
    sget-object v0, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/text/TextRange;->c:J

    :goto_9
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_21
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v10

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroidx/compose/ui/text/AnnotatedString;->f(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    new-instance v10, Lkotlin/text/Regex;

    const-string v11, "\\s+"

    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v5}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v10

    if-nez v10, :cond_22

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 p1, v9

    goto :goto_a

    :cond_22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move/from16 p1, v9

    move v14, v12

    :cond_23
    invoke-interface {v10}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v9

    iget v9, v9, Lkotlin/ranges/IntProgression;->b:I

    invoke-virtual {v13, v5, v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget v9, v0, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    if-ne v9, v8, :cond_24

    invoke-interface {v10}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v9

    iget v9, v9, Lkotlin/ranges/IntProgression;->b:I

    iput v9, v0, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    :cond_24
    invoke-interface {v10}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v9

    iget v9, v9, Lkotlin/ranges/IntProgression;->c:I

    add-int/2addr v9, v15

    iput v9, v7, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    const-string v9, ""

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    move-result-object v9

    iget v9, v9, Lkotlin/ranges/IntProgression;->c:I

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v10}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object v10

    if-ge v14, v11, :cond_25

    if-nez v10, :cond_23

    :cond_25
    if-ge v14, v11, :cond_26

    invoke-virtual {v13, v5, v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    if-eq v0, v8, :cond_28

    iget v9, v7, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    if-ne v9, v8, :cond_27

    goto :goto_b

    :cond_27
    shr-long v10, v2, p1

    long-to-int v1, v10

    add-int v8, v1, v0

    add-int/2addr v1, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->d(J)I

    move-result v2

    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v9, v2

    invoke-virtual {v5, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v2, v8, v1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    new-instance v1, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-direct {v1, v0, v15}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    new-array v0, v6, [Landroidx/compose/ui/text/input/EditCommand;

    aput-object v2, v0, v12

    aput-object v1, v0, v15

    new-instance v1, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt$compoundEditCommand$1;-><init>([Landroidx/compose/ui/text/input/EditCommand;)V

    invoke-virtual {v4, v1}, Lxo0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v15

    :cond_28
    :goto_b
    invoke-static {v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->a(Landroid/view/inputmethod/HandwritingGesture;Lxo0;)I

    move-result v0

    return v0

    :cond_29
    return v6
.end method

.method public static d(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroid/os/CancellationSignal;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/AnnotatedString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    instance-of v0, p1, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/inputmethod/SelectGesture;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result p1

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->t(J)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/inputmethod/DeleteGesture;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result p1

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(J)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->t(J)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v0, :cond_8

    check-cast p1, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->e(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(J)V

    :cond_6
    :goto_1
    const/4 p0, 0x1

    if-eqz p3, :cond_7

    new-instance p1, Lro;

    invoke-direct {p1, p2, p0}, Lro;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_7
    return p0

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static e(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    sget-object p0, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_0
    sget-object p0, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_1
    sget-object p0, Landroidx/compose/ui/text/TextGranularity;->a:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/text/TextGranularity;->b:I

    return p0
.end method
