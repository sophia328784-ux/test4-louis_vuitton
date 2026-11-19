.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewNode$Request;,
        Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0012B9\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ContentInViewNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "orientation",
        "Landroidx/compose/foundation/gestures/ScrollingLogic;",
        "scrollingLogic",
        "",
        "reverseDirection",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "bringIntoViewSpec",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/geometry/Rect;",
        "getFocusedRect",
        "<init>",
        "(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/jvm/functions/Function0;)V",
        "Request",
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


# instance fields
.field public p:Landroidx/compose/foundation/gestures/Orientation;

.field public final q:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public r:Z

.field public s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final t:Lkotlin/jvm/functions/Function0;

.field public final u:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

.field public v:Z

.field public w:J

.field public x:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Z",
            "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->r:Z

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    invoke-direct {p1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    sget-wide p1, Landroidx/compose/foundation/gestures/ContentInViewNodeKt;->a:J

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    return-void
.end method

.method public static final h2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    iget-object v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    iget-object v4, v4, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v4, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget-object v4, v4, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    array-length v7, v4

    const/4 v9, 0x2

    const/4 v13, 0x0

    if-ge v5, v7, :cond_5

    move-object v7, v13

    :goto_0
    if-ltz v5, :cond_4

    aget-object v14, v4, v5

    check-cast v14, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v14, v14, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/geometry/Rect;

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->c()J

    move-result-wide v15

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->i2()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v17

    const/16 v19, 0x0

    iget-object v8, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v20, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v20, v8

    if-eq v8, v6, :cond_1

    if-ne v8, v9, :cond_0

    const/16 v8, 0x20

    const-wide v20, 0xffffffffL

    shr-long v10, v15, v8

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    shr-long v11, v17, v8

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return v19

    :cond_1
    const/16 v8, 0x20

    const-wide v20, 0xffffffffL

    and-long v10, v15, v20

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    and-long v11, v17, v20

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    :goto_1
    if-gtz v10, :cond_2

    move-object v7, v14

    goto :goto_2

    :cond_2
    if-nez v7, :cond_6

    move-object v7, v14

    goto :goto_3

    :cond_3
    const/16 v8, 0x20

    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    const/16 v8, 0x20

    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    goto :goto_3

    :cond_5
    const/16 v8, 0x20

    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    move-object v7, v13

    :cond_6
    :goto_3
    if-nez v7, :cond_9

    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroidx/compose/ui/geometry/Rect;

    :cond_7
    if-nez v13, :cond_8

    return v19

    :cond_8
    move-object v7, v13

    :cond_9
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v2

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v6, :cond_b

    if-ne v0, v9, :cond_a

    iget v0, v7, Landroidx/compose/ui/geometry/Rect;->a:F

    sget-object v4, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v4, p2, v8

    long-to-int v4, v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, v7, Landroidx/compose/ui/geometry/Rect;->c:F

    sub-float/2addr v5, v0

    shr-long/2addr v2, v8

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {v1, v4, v5, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a(FFF)F

    move-result v0

    return v0

    :cond_a
    invoke-static {}, Lv40;->g()V

    return v19

    :cond_b
    iget v0, v7, Landroidx/compose/ui/geometry/Rect;->b:F

    sget-object v4, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    and-long v4, p2, v20

    long-to-int v4, v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, v7, Landroidx/compose/ui/geometry/Rect;->d:F

    sub-float/2addr v5, v0

    and-long v2, v2, v20

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {v1, v4, v5, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a(FFF)F

    move-result v0

    return v0
.end method

.method public static j2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z
    .locals 6

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->i2()J

    move-result-wide p2

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p4, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->l2(Landroidx/compose/ui/geometry/Rect;JJ)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long p2, p0, p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_2

    const-wide p4, 0xffffffffL

    and-long/2addr p0, p4

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final W1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(J)V
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->i2()J

    move-result-wide v3

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    iget-object v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v6, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const-wide v6, 0xffffffffL

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-eq v5, v9, :cond_1

    const/4 v10, 0x2

    if-ne v5, v10, :cond_0

    shr-long v10, p1, v8

    long-to-int v5, v10

    shr-long v10, v3, v8

    long-to-int v10, v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    and-long v10, p1, v6

    long-to-int v5, v10

    and-long v10, v3, v6

    long-to-int v10, v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v5

    :goto_0
    if-ltz v5, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->r:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v10, :cond_3

    and-long v10, v3, v6

    long-to-int v5, v10

    and-long v1, p1, v6

    long-to-int v1, v1

    sub-int/2addr v5, v1

    int-to-long v1, v5

    and-long/2addr v1, v6

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    :goto_1
    move-wide v7, v1

    goto :goto_2

    :cond_3
    shr-long v5, v3, v8

    long-to-int v5, v5

    shr-long v1, p1, v8

    long-to-int v1, v1

    sub-int/2addr v5, v1

    int-to-long v1, v5

    shl-long/2addr v1, v8

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    goto :goto_1

    :cond_4
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    if-nez v2, :cond_5

    move-wide v2, v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->j2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v4, v7

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->j2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v9, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    invoke-virtual {p0, v4, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->k2(J)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final g1(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    sget-wide v2, Landroidx/compose/foundation/gestures/ContentInViewNodeKt;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->i2()J

    move-result-wide v3

    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->l2(Landroidx/compose/ui/geometry/Rect;JJ)J

    move-result-wide p0

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr p0, v0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2, p0, p1}, Landroidx/compose/ui/geometry/Rect;->i(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final i2()J
    .locals 4

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    sget-wide v2, Landroidx/compose/foundation/gestures/ContentInViewNodeKt;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public final k2(J)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_0
    move-object v4, v0

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    if-eqz v0, :cond_1

    const-string v0, "launchAnimation called when previous animation was running"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->b:Landroidx/compose/animation/core/SpringSpec;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v8, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {v0, p1, v8, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final l2(Landroidx/compose/ui/geometry/Rect;JJ)J
    .locals 6

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide p2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_0
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long/2addr p4, v5

    long-to-int p4, p4

    int-to-float p4, p4

    sub-float p4, p0, p4

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->c:F

    sub-float/2addr p1, p0

    shr-long/2addr p2, v5

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-interface {v0, p4, p1, p0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr p0, v5

    and-long/2addr p2, v3

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-nez v0, :cond_3

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    :cond_3
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->b:F

    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    and-long/2addr p4, v3

    long-to-int p4, p4

    int-to-float p4, p4

    sub-float p4, p0, p4

    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->d:F

    sub-float/2addr p1, p0

    and-long/2addr p2, v3

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-interface {v0, p4, p1, p0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a(FFF)F

    move-result p0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v5

    and-long p2, p3, v3

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0
.end method

.method public final v1(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    if-eqz v2, :cond_7

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->j2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p2, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-direct {p2, p1, p0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CancellableContinuation;)V

    iget-object p1, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    iget-object v2, p1, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, p2, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Rect;

    iget-object v4, p2, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->b:Lkotlinx/coroutines/CancellableContinuation;

    if-nez v3, :cond_0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance v5, Lvg;

    invoke-direct {v5, p1, p2, v0}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    iget p1, v2, Landroidx/compose/runtime/collection/MutableVector;->d:I

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    iget v5, p1, Lkotlin/ranges/IntProgression;->b:I

    iget p1, p1, Lkotlin/ranges/IntProgression;->c:I

    if-gt v5, p1, :cond_4

    :goto_0
    iget-object v6, v2, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    aget-object v6, v6, p1

    check-cast v6, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v6, v6, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/geometry/Rect;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v6}, Landroidx/compose/ui/geometry/Rect;->e(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->a(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v7, v6}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/concurrent/CancellationException;

    const-string v7, "bringIntoView call interrupted by a newer, non-overlapping call"

    invoke-direct {v6, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iget v7, v2, Landroidx/compose/runtime/collection/MutableVector;->d:I

    sub-int/2addr v7, v0

    if-gt v7, p1, :cond_3

    :goto_1
    iget-object v8, v2, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    aget-object v8, v8, p1

    check-cast v8, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v8, v8, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->b:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v8, v6}, Lkotlinx/coroutines/CancellableContinuation;->cancel(Ljava/lang/Throwable;)Z

    if-eq v7, p1, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eq p1, v5, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v4, p2}, Landroidx/compose/runtime/collection/MutableVector;->a(ILjava/lang/Object;)V

    :goto_3
    iget-boolean p1, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    if-nez p1, :cond_5

    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p1, 0x0

    invoke-virtual {v1, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->k2(J)V

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
