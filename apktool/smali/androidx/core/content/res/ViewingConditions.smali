.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 24

    invoke-static {}, Landroidx/core/content/res/CamUtils;->c()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    sget-object v1, Landroidx/core/content/res/CamUtils;->c:[F

    const/4 v4, 0x0

    aget v5, v1, v4

    sget-object v6, Landroidx/core/content/res/CamUtils;->a:[[F

    aget-object v7, v6, v4

    aget v8, v7, v4

    mul-float/2addr v8, v5

    const/4 v9, 0x1

    aget v10, v1, v9

    aget v11, v7, v9

    mul-float/2addr v11, v10

    add-float/2addr v11, v8

    const/4 v8, 0x2

    aget v12, v1, v8

    aget v7, v7, v8

    mul-float/2addr v7, v12

    add-float/2addr v7, v11

    aget-object v11, v6, v9

    aget v13, v11, v4

    mul-float/2addr v13, v5

    aget v14, v11, v9

    mul-float/2addr v14, v10

    add-float/2addr v14, v13

    aget v11, v11, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v14

    aget-object v6, v6, v8

    aget v13, v6, v4

    mul-float/2addr v5, v13

    aget v13, v6, v9

    mul-float/2addr v10, v13

    add-float/2addr v10, v5

    aget v5, v6, v8

    mul-float/2addr v12, v5

    add-float/2addr v12, v10

    neg-float v5, v0

    const/high16 v6, 0x42280000    # 42.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x42b80000    # 92.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3e8e38e4

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v10, v13}, Lpq0;->a(FFFF)F

    move-result v5

    float-to-double v14, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v14, v16

    if-lez v6, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0x0

    cmpg-double v6, v14, v16

    if-gez v6, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_0
    const/high16 v6, 0x42c80000    # 100.0f

    div-float v14, v6, v7

    mul-float/2addr v14, v5

    add-float/2addr v14, v10

    sub-float/2addr v14, v5

    div-float v15, v6, v11

    mul-float/2addr v15, v5

    add-float/2addr v15, v10

    sub-float/2addr v15, v5

    div-float/2addr v6, v12

    mul-float/2addr v6, v5

    add-float/2addr v6, v10

    sub-float/2addr v6, v5

    const/4 v5, 0x3

    move-wide/from16 v16, v2

    new-array v2, v5, [F

    aput v14, v2, v4

    aput v15, v2, v9

    aput v6, v2, v8

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v10

    div-float v3, v10, v3

    mul-float v6, v3, v3

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    sub-float/2addr v10, v6

    mul-float/2addr v6, v0

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v10

    mul-float/2addr v3, v10

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    move/from16 v18, v8

    move v10, v9

    float-to-double v8, v0

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    invoke-static {}, Landroidx/core/content/res/CamUtils;->c()F

    move-result v0

    aget v1, v1, v10

    div-float v14, v0, v1

    float-to-double v0, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    const v8, 0x3fbd70a4    # 1.48f

    add-float v23, v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f39999a    # 0.725f

    div-float/2addr v1, v0

    aget v0, v2, v4

    mul-float/2addr v0, v3

    mul-float/2addr v0, v7

    float-to-double v6, v0

    div-double v6, v6, v16

    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aget v6, v2, v10

    mul-float/2addr v6, v3

    mul-float/2addr v6, v11

    float-to-double v6, v6

    div-double v6, v6, v16

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    aget v7, v2, v18

    mul-float/2addr v7, v3

    mul-float/2addr v7, v12

    float-to-double v11, v7

    div-double v11, v11, v16

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    new-array v8, v5, [F

    aput v0, v8, v4

    aput v6, v8, v10

    aput v7, v8, v18

    aget v0, v8, v4

    const/high16 v6, 0x43c80000    # 400.0f

    mul-float v7, v0, v6

    const v9, 0x41d90a3d    # 27.13f

    add-float/2addr v0, v9

    div-float/2addr v7, v0

    aget v0, v8, v10

    mul-float v11, v0, v6

    add-float/2addr v0, v9

    div-float/2addr v11, v0

    aget v0, v8, v18

    mul-float/2addr v6, v0

    add-float/2addr v0, v9

    div-float/2addr v6, v0

    new-array v0, v5, [F

    aput v7, v0, v4

    aput v11, v0, v10

    aput v6, v0, v18

    const/high16 v5, 0x40000000    # 2.0f

    aget v4, v0, v4

    mul-float/2addr v4, v5

    aget v5, v0, v10

    add-float/2addr v4, v5

    const v5, 0x3d4ccccd    # 0.05f

    aget v0, v0, v18

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    mul-float v15, v0, v1

    move/from16 v19, v13

    new-instance v13, Landroidx/core/content/res/ViewingConditions;

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    const v18, 0x3f30a3d7    # 0.69f

    move/from16 v17, v1

    move/from16 v22, v0

    move/from16 v16, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    invoke-direct/range {v13 .. v23}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    sput-object v13, Landroidx/core/content/res/ViewingConditions;->k:Landroidx/core/content/res/ViewingConditions;

    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->f:F

    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->a:F

    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->b:F

    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->c:F

    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->d:F

    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->e:F

    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->g:[F

    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->h:F

    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->i:F

    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->j:F

    return-void
.end method
