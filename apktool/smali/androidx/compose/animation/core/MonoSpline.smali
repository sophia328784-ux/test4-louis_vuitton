.class public final Landroidx/compose/animation/core/MonoSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/animation/core/MonoSpline;",
        "",
        "",
        "time",
        "",
        "y",
        "",
        "periodicBias",
        "<init>",
        "([F[[FF)V",
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
.field public final a:[F

.field public final b:[[F

.field public final c:[[F

.field public final d:[F


# direct methods
.method public constructor <init>([F[[FF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    aget-object v5, v2, v4

    array-length v5, v5

    new-array v6, v5, [F

    iput-object v6, v0, Landroidx/compose/animation/core/MonoSpline;->d:[F

    add-int/lit8 v6, v3, -0x1

    new-array v7, v6, [[F

    move v8, v4

    :goto_0
    if-ge v8, v6, :cond_0

    new-array v9, v5, [F

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-array v8, v3, [[F

    move v9, v4

    :goto_1
    if-ge v9, v3, :cond_1

    new-array v10, v5, [F

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_2
    if-ge v9, v5, :cond_4

    move v10, v4

    :goto_3
    if-ge v10, v6, :cond_3

    add-int/lit8 v11, v10, 0x1

    aget v12, v1, v11

    aget v13, v1, v10

    sub-float/2addr v12, v13

    aget-object v13, v7, v10

    aget-object v14, v2, v11

    aget v14, v14, v9

    aget-object v15, v2, v10

    aget v15, v15, v9

    sub-float/2addr v14, v15

    div-float/2addr v14, v12

    aput v14, v13, v9

    if-nez v10, :cond_2

    aget-object v10, v8, v10

    aput v14, v10, v9

    goto :goto_4

    :cond_2
    aget-object v12, v8, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v7, v10

    aget v10, v10, v9

    add-float/2addr v10, v14

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v10, v13

    aput v10, v12, v9

    :goto_4
    move v10, v11

    goto :goto_3

    :cond_3
    aget-object v10, v8, v6

    add-int/lit8 v11, v3, -0x2

    aget-object v11, v7, v11

    aget v11, v11, v9

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v4

    :goto_5
    if-ge v9, v5, :cond_5

    add-int/lit8 v10, v3, -0x2

    aget-object v10, v7, v10

    aget v11, v10, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v12, p3

    mul-float/2addr v12, v11

    aget-object v11, v7, v4

    aget v13, v11, v9

    mul-float v13, v13, p3

    add-float/2addr v13, v12

    aput v13, v11, v9

    aput v13, v10, v9

    aget-object v10, v8, v6

    aput v13, v10, v9

    aget-object v10, v8, v4

    aput v13, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_6
    if-ge v3, v6, :cond_9

    move v9, v4

    :goto_7
    if-ge v9, v5, :cond_8

    aget-object v10, v7, v3

    aget v10, v10, v9

    const/4 v11, 0x0

    cmpg-float v12, v10, v11

    if-nez v12, :cond_6

    aget-object v10, v8, v3

    aput v11, v10, v9

    add-int/lit8 v10, v3, 0x1

    aget-object v10, v8, v10

    aput v11, v10, v9

    move/from16 v16, v5

    goto :goto_8

    :cond_6
    aget-object v11, v8, v3

    aget v11, v11, v9

    div-float/2addr v11, v10

    add-int/lit8 v12, v3, 0x1

    aget-object v13, v8, v12

    aget v13, v13, v9

    div-float/2addr v13, v10

    float-to-double v14, v11

    move/from16 v16, v5

    float-to-double v4, v13

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v14, v4

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    cmpl-double v5, v14, v17

    if-lez v5, :cond_7

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v5, v4

    aget-object v4, v8, v3

    mul-float/2addr v11, v5

    aget-object v14, v7, v3

    aget v15, v14, v9

    mul-float/2addr v11, v15

    aput v11, v4, v9

    aget-object v4, v8, v12

    mul-float/2addr v5, v13

    aget v11, v14, v9

    mul-float/2addr v5, v11

    aput v5, v4, v9

    :cond_7
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_7

    :cond_8
    move/from16 v16, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    iput-object v1, v0, Landroidx/compose/animation/core/MonoSpline;->a:[F

    iput-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->b:[[F

    iput-object v8, v0, Landroidx/compose/animation/core/MonoSpline;->c:[[F

    return-void
.end method
