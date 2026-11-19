.class public final Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003BA\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;",
        "Landroidx/compose/animation/core/AnimationVector;",
        "V",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "Landroidx/collection/IntList;",
        "timestamps",
        "Landroidx/collection/IntObjectMap;",
        "Lkotlin/Pair;",
        "Landroidx/compose/animation/core/Easing;",
        "keyframes",
        "",
        "durationMillis",
        "delayMillis",
        "",
        "periodicBias",
        "<init>",
        "(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V",
        "animation-core"
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
.field public final a:Landroidx/collection/IntList;

.field public final b:Landroidx/collection/IntObjectMap;

.field public final c:I

.field public final d:I

.field public final e:F

.field public f:Landroidx/compose/animation/core/AnimationVector;

.field public g:Landroidx/compose/animation/core/AnimationVector;

.field public h:[F

.field public i:Landroidx/compose/animation/core/MonoSpline;

.field public j:[[F

.field public k:Landroidx/compose/animation/core/AnimationVector;

.field public l:Landroidx/compose/animation/core/AnimationVector;


# direct methods
.method public constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntList;",
            "Landroidx/collection/IntObjectMap<",
            "Lkotlin/Pair<",
            "TV;",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;IIF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->a:Landroidx/collection/IntList;

    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    iput p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->c:I

    iput p4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->d:I

    iput p5, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->e:F

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->d:I

    return p0
.end method

.method public final f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 13

    const-wide/32 v1, 0xf4240

    div-long v1, p1, v1

    invoke-static {p0, v1, v2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {p0, v2, v3, v4}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->i(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->a:Landroidx/collection/IntList;

    invoke-static {v2, v1}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result v2

    const/4 v3, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    :cond_0
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->g:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->i:Landroidx/compose/animation/core/MonoSpline;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->h(II)F

    move-result v0

    iget-object v1, v5, Landroidx/compose/animation/core/MonoSpline;->a:[F

    iget-object v6, v5, Landroidx/compose/animation/core/MonoSpline;->b:[[F

    iget-object v5, v5, Landroidx/compose/animation/core/MonoSpline;->c:[[F

    array-length v7, v1

    const/4 v8, 0x0

    aget-object v9, v6, v8

    array-length v9, v9

    aget v10, v1, v8

    cmpg-float v10, v0, v10

    if-gtz v10, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    add-int/lit8 v10, v7, -0x1

    aget v11, v1, v10

    cmpl-float v11, v0, v11

    if-ltz v11, :cond_2

    goto :goto_0

    :cond_2
    move v10, v3

    :goto_0
    if-eq v10, v3, :cond_4

    aget-object v0, v5, v10

    array-length v1, v0

    if-ge v1, v9, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    if-ge v8, v9, :cond_6

    aget v1, v0, v8

    invoke-virtual {v4, v1, v8}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ge v2, v7, :cond_6

    add-int/lit8 v3, v2, 0x1

    aget v10, v1, v3

    cmpg-float v11, v0, v10

    if-gtz v11, :cond_5

    aget v1, v1, v2

    sub-float/2addr v10, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v10

    :goto_3
    if-ge v8, v9, :cond_6

    aget-object v1, v6, v2

    aget v1, v1, v8

    aget-object v7, v6, v3

    aget v7, v7, v8

    aget-object v11, v5, v2

    aget v11, v11, v8

    aget-object v12, v5, v3

    aget v12, v12, v8

    move p1, v0

    move p2, v1

    move/from16 p3, v7

    move p0, v10

    move/from16 p4, v11

    move/from16 p5, v12

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/MonoSplineKt;->a(FFFFFF)F

    move-result v0

    move v1, p1

    div-float/2addr v0, v10

    invoke-virtual {v4, v0, v8}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v8, v8, 0x1

    move v0, v1

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    :goto_4
    return-object v4
.end method

.method public final g(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-wide/32 v3, 0xf4240

    div-long v3, p1, v3

    invoke-static {v0, v3, v4}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_0

    iget-object v0, v4, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    return-object v0

    :cond_0
    iget v4, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->c:I

    if-lt v3, v4, :cond_1

    return-object v2

    :cond_1
    if-gtz v3, :cond_2

    return-object v1

    :cond_2
    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v4}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->i(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->a:Landroidx/collection/IntList;

    invoke-static {v1, v3}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result v1

    const/4 v2, -0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    :cond_3
    iget-object v4, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->f:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->i:Landroidx/compose/animation/core/MonoSpline;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->h(II)F

    move-result v0

    iget-object v3, v5, Landroidx/compose/animation/core/MonoSpline;->c:[[F

    iget-object v6, v5, Landroidx/compose/animation/core/MonoSpline;->d:[F

    iget-object v7, v5, Landroidx/compose/animation/core/MonoSpline;->a:[F

    array-length v8, v7

    iget-object v5, v5, Landroidx/compose/animation/core/MonoSpline;->b:[[F

    const/4 v9, 0x0

    aget-object v10, v5, v9

    array-length v11, v10

    aget v12, v7, v9

    cmpg-float v13, v0, v12

    if-gtz v13, :cond_4

    move v13, v9

    goto :goto_0

    :cond_4
    add-int/lit8 v13, v8, -0x1

    aget v14, v7, v13

    cmpl-float v14, v0, v14

    if-ltz v14, :cond_5

    goto :goto_0

    :cond_5
    move v13, v2

    :goto_0
    if-eq v13, v2, :cond_b

    aget v1, v7, v13

    array-length v2, v10

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget v10, v7, v8

    cmpg-float v14, v1, v12

    if-gez v14, :cond_6

    goto :goto_1

    :cond_6
    move v12, v1

    :goto_1
    cmpl-float v1, v12, v10

    if-lez v1, :cond_7

    goto :goto_2

    :cond_7
    move v10, v12

    :goto_2
    array-length v1, v6

    if-ge v1, v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v9

    :goto_3
    if-ge v1, v8, :cond_a

    add-int/lit8 v12, v1, 0x1

    aget v14, v7, v12

    cmpg-float v15, v10, v14

    if-gtz v15, :cond_9

    aget v8, v7, v1

    sub-float/2addr v14, v8

    sub-float/2addr v10, v8

    div-float/2addr v10, v14

    move v8, v9

    :goto_4
    if-ge v8, v2, :cond_a

    aget-object v15, v5, v1

    aget v15, v15, v8

    aget-object v16, v5, v12

    aget v16, v16, v8

    aget-object v17, v3, v1

    aget v17, v17, v8

    aget-object v18, v3, v12

    aget v18, v18, v8

    move/from16 p1, v10

    move/from16 p0, v14

    move/from16 p2, v15

    move/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v18

    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/MonoSplineKt;->a(FFFFFF)F

    move-result v10

    move/from16 v15, p1

    div-float/2addr v10, v14

    aput v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    move v10, v15

    goto :goto_4

    :cond_9
    move v1, v12

    goto :goto_3

    :cond_a
    :goto_5
    if-ge v9, v11, :cond_e

    aget-object v1, v5, v13

    aget v1, v1, v9

    aget v2, v7, v13

    sub-float v2, v0, v2

    aget v3, v6, v9

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {v4, v2, v9}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v8, v8, -0x1

    :goto_6
    if-ge v1, v8, :cond_e

    aget v2, v7, v1

    cmpg-float v6, v0, v2

    if-nez v6, :cond_c

    :goto_7
    if-ge v9, v11, :cond_e

    aget-object v0, v5, v1

    aget v0, v0, v9

    invoke-virtual {v4, v0, v9}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v6, v1, 0x1

    aget v10, v7, v6

    cmpg-float v12, v0, v10

    if-gez v12, :cond_d

    sub-float/2addr v10, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v10

    :goto_8
    if-ge v9, v11, :cond_e

    aget-object v2, v5, v1

    aget v2, v2, v9

    aget-object v7, v5, v6

    aget v7, v7, v9

    aget-object v8, v3, v1

    aget v8, v8, v9

    aget-object v12, v3, v6

    aget v12, v12, v9

    mul-float v13, v0, v0

    mul-float v14, v13, v0

    mul-float/2addr v8, v10

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v16, v15, v13

    sub-float v16, v0, v16

    add-float v16, v16, v14

    mul-float v16, v16, v8

    mul-float/2addr v12, v10

    sub-float v8, v14, v13

    mul-float/2addr v8, v12

    add-float v8, v8, v16

    add-float/2addr v8, v2

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v12, v13

    mul-float/2addr v15, v14

    sub-float/2addr v12, v15

    sub-float/2addr v2, v7

    mul-float/2addr v2, v12

    sub-float/2addr v8, v2

    invoke-virtual {v4, v8, v9}, Landroidx/compose/animation/core/AnimationVector;->e(FI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    move v1, v6

    goto :goto_6

    :cond_e
    return-object v4
.end method

.method public final h(II)F
    .locals 4

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->a:Landroidx/collection/IntList;

    iget v1, v0, Landroidx/collection/IntList;->b:I

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x447a0000    # 1000.0f

    if-lt p1, v1, :cond_0

    int-to-float p0, p2

    :goto_0
    div-float/2addr p0, v2

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->b(I)I

    move-result v1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroidx/collection/IntList;->b(I)I

    move-result v3

    if-ne p2, v1, :cond_1

    int-to-float p0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v1

    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->b(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Easing;

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    :cond_3
    sub-int/2addr p2, v1

    int-to-float p1, p2

    int-to-float p2, v3

    div-float/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/compose/animation/core/Easing;->a(F)F

    move-result p0

    mul-float/2addr p0, p2

    int-to-float p1, v1

    add-float/2addr p0, p1

    goto :goto_0
.end method

.method public final i(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->f:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->a:Landroidx/collection/IntList;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->f:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->g:Landroidx/compose/animation/core/AnimationVector;

    iget p3, v1, Landroidx/collection/IntList;->b:I

    new-array v0, p3, [F

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/collection/IntList;->b(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->h:[F

    :cond_1
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->i:Landroidx/compose/animation/core/MonoSpline;

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->k:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->l:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->k:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->l:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->k:Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->l:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->j:[[F

    iget v5, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->c:I

    iget-object v6, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->b:Landroidx/collection/IntObjectMap;

    if-nez v4, :cond_9

    iget p3, v1, Landroidx/collection/IntList;->b:I

    new-array v4, p3, [[F

    move v0, v2

    :goto_2
    if-ge v0, p3, :cond_8

    invoke-virtual {v1, v0}, Landroidx/collection/IntList;->b(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/Pair;

    if-nez v7, :cond_4

    if-nez v8, :cond_4

    new-array v7, v3, [F

    move v8, v2

    :goto_3
    if-ge v8, v3, :cond_7

    invoke-virtual {p1, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-ne v7, v5, :cond_5

    if-nez v8, :cond_5

    new-array v7, v3, [F

    move v8, v2

    :goto_4
    if-ge v8, v3, :cond_7

    invoke-virtual {p2, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v8, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/animation/core/AnimationVector;

    new-array v8, v3, [F

    move v9, v2

    :goto_5
    if-ge v9, v3, :cond_6

    invoke-virtual {v7, v9}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    move-object v7, v8

    :cond_7
    aput-object v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iput-object v4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->j:[[F

    goto :goto_8

    :cond_9
    if-nez p3, :cond_b

    invoke-virtual {v6, v2}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-static {v1, v2}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result p3

    new-array v7, v3, [F

    move v8, v2

    :goto_6
    if-ge v8, v3, :cond_a

    invoke-virtual {p1, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    aput-object v7, v4, p3

    :cond_b
    if-nez v0, :cond_d

    invoke-virtual {v6, v5}, Landroidx/collection/IntObjectMap;->a(I)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {v1, v5}, Landroidx/collection/IntList;->a(Landroidx/collection/IntList;I)I

    move-result p1

    new-array p3, v3, [F

    :goto_7
    if-ge v2, v3, :cond_c

    invoke-virtual {p2, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    move-result v0

    aput v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    aput-object p3, v4, p1

    :cond_d
    :goto_8
    new-instance p1, Landroidx/compose/animation/core/MonoSpline;

    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->h:[F

    if-eqz p2, :cond_e

    iget p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->e:F

    invoke-direct {p1, p2, v4, p3}, Landroidx/compose/animation/core/MonoSpline;-><init>([F[[FF)V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->i:Landroidx/compose/animation/core/MonoSpline;

    return-void

    :cond_e
    const-string p0, "times"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
