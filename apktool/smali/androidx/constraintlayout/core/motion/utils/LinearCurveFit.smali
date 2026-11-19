.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "SourceFile"


# instance fields
.field public final a:[D

.field public final b:[[D

.field public final c:Z

.field public final d:[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 7

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->c:Z

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    new-array v2, v1, [D

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->d:[D

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->b:[[D

    const/4 p0, 0x2

    if-le v1, p0, :cond_1

    const-wide/16 v1, 0x0

    move p0, v0

    :goto_0
    move-wide v3, v1

    array-length v5, p1

    if-ge p0, v5, :cond_1

    aget-object v5, p2, p0

    aget-wide v5, v5, v0

    if-lez p0, :cond_0

    sub-double v1, v5, v1

    sub-double v3, v5, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    :cond_0
    add-int/lit8 p0, p0, 0x1

    move-wide v1, v5

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(D)D
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->c:Z

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->b:[[D

    if-eqz v2, :cond_1

    aget-wide v5, v0, v3

    cmpg-double v2, p1, v5

    if-gtz v2, :cond_0

    aget-object v0, v4, v3

    aget-wide v0, v0, v3

    sub-double/2addr p1, v5

    invoke-virtual {p0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->g(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    return-wide v2

    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget-wide v5, v0, v2

    cmpl-double v7, p1, v5

    if-ltz v7, :cond_3

    aget-object v0, v4, v2

    aget-wide v0, v0, v3

    sub-double/2addr p1, v5

    invoke-virtual {p0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->g(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    return-wide v2

    :cond_1
    aget-wide v5, v0, v3

    cmpg-double p0, p1, v5

    if-gtz p0, :cond_2

    aget-object p0, v4, v3

    aget-wide p0, p0, v3

    return-wide p0

    :cond_2
    add-int/lit8 p0, v1, -0x1

    aget-wide v5, v0, p0

    cmpl-double v2, p1, v5

    if-ltz v2, :cond_3

    aget-object p0, v4, p0

    aget-wide p0, p0, v3

    return-wide p0

    :cond_3
    move p0, v3

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge p0, v2, :cond_6

    aget-wide v5, v0, p0

    cmpl-double v2, p1, v5

    if-nez v2, :cond_4

    aget-object p0, v4, p0

    aget-wide p0, p0, v3

    return-wide p0

    :cond_4
    add-int/lit8 v2, p0, 0x1

    aget-wide v7, v0, v2

    cmpg-double v9, p1, v7

    if-gez v9, :cond_5

    sub-double/2addr v7, v5

    sub-double/2addr p1, v5

    div-double/2addr p1, v7

    aget-object p0, v4, p0

    aget-wide v0, p0, v3

    aget-object p0, v4, v2

    aget-wide v2, p0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p1

    mul-double/2addr v4, v0

    mul-double/2addr v2, p1

    add-double/2addr v2, v4

    return-wide v2

    :cond_5
    move p0, v2

    goto :goto_0

    :cond_6
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final c(D[D)V
    .locals 13

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->b:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v4, v4

    iget-boolean v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->c:Z

    if-eqz v5, :cond_1

    aget-wide v5, v0, v3

    cmpg-double v7, p1, v5

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->d:[D

    if-gtz v7, :cond_0

    invoke-virtual {p0, v5, v6, v8}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->e(D[D)V

    move p0, v3

    :goto_0
    if-ge p0, v4, :cond_6

    aget-object v1, v2, v3

    aget-wide v5, v1, p0

    aget-wide v9, v0, v3

    sub-double v9, p1, v9

    aget-wide v11, v8, p0

    mul-double/2addr v9, v11

    add-double/2addr v9, v5

    aput-wide v9, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v0, v5

    cmpl-double v9, p1, v6

    if-ltz v9, :cond_3

    invoke-virtual {p0, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->e(D[D)V

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object p0, v2, v5

    aget-wide v6, p0, v3

    aget-wide v9, v0, v5

    sub-double v9, p1, v9

    aget-wide v11, v8, v3

    mul-double/2addr v9, v11

    add-double/2addr v9, v6

    aput-wide v9, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget-wide v5, v0, v3

    cmpg-double p0, p1, v5

    if-gtz p0, :cond_2

    move p0, v3

    :goto_2
    if-ge p0, v4, :cond_6

    aget-object v0, v2, v3

    aget-wide v0, v0, p0

    aput-wide v0, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p0, v1, -0x1

    aget-wide v5, v0, p0

    cmpl-double v5, p1, v5

    if-ltz v5, :cond_3

    :goto_3
    if-ge v3, v4, :cond_6

    aget-object v0, v2, p0

    aget-wide v0, v0, v3

    aput-wide v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_4
    add-int/lit8 v5, v1, -0x1

    if-ge p0, v5, :cond_6

    aget-wide v5, v0, p0

    cmpl-double v5, p1, v5

    if-nez v5, :cond_4

    move v5, v3

    :goto_5
    if-ge v5, v4, :cond_4

    aget-object v6, v2, p0

    aget-wide v6, v6, v5

    aput-wide v6, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, p0, 0x1

    aget-wide v6, v0, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_5

    aget-wide v0, v0, p0

    sub-double/2addr v6, v0

    sub-double v0, p1, v0

    div-double/2addr v0, v6

    :goto_6
    if-ge v3, v4, :cond_6

    aget-object v6, v2, p0

    aget-wide v6, v6, v3

    aget-object v8, v2, v5

    aget-wide v8, v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v0

    mul-double/2addr v10, v6

    mul-double/2addr v8, v0

    add-double/2addr v8, v10

    aput-wide v8, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    move p0, v5

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final d(D[F)V
    .locals 13

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->b:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v4, v4

    iget-boolean v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->c:Z

    if-eqz v5, :cond_1

    aget-wide v5, v0, v3

    cmpg-double v7, p1, v5

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->d:[D

    if-gtz v7, :cond_0

    invoke-virtual {p0, v5, v6, v8}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->e(D[D)V

    move p0, v3

    :goto_0
    if-ge p0, v4, :cond_6

    aget-object v1, v2, v3

    aget-wide v5, v1, p0

    aget-wide v9, v0, v3

    sub-double v9, p1, v9

    aget-wide v11, v8, p0

    mul-double/2addr v9, v11

    add-double/2addr v9, v5

    double-to-float v1, v9

    aput v1, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v0, v5

    cmpl-double v9, p1, v6

    if-ltz v9, :cond_3

    invoke-virtual {p0, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->e(D[D)V

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object p0, v2, v5

    aget-wide v6, p0, v3

    aget-wide v9, v0, v5

    sub-double v9, p1, v9

    aget-wide v11, v8, v3

    mul-double/2addr v9, v11

    add-double/2addr v9, v6

    double-to-float p0, v9

    aput p0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget-wide v5, v0, v3

    cmpg-double p0, p1, v5

    if-gtz p0, :cond_2

    move p0, v3

    :goto_2
    if-ge p0, v4, :cond_6

    aget-object v0, v2, v3

    aget-wide v0, v0, p0

    double-to-float v0, v0

    aput v0, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p0, v1, -0x1

    aget-wide v5, v0, p0

    cmpl-double v5, p1, v5

    if-ltz v5, :cond_3

    :goto_3
    if-ge v3, v4, :cond_6

    aget-object v0, v2, p0

    aget-wide v0, v0, v3

    double-to-float v0, v0

    aput v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_4
    add-int/lit8 v5, v1, -0x1

    if-ge p0, v5, :cond_6

    aget-wide v5, v0, p0

    cmpl-double v5, p1, v5

    if-nez v5, :cond_4

    move v5, v3

    :goto_5
    if-ge v5, v4, :cond_4

    aget-object v6, v2, p0

    aget-wide v6, v6, v5

    double-to-float v6, v6

    aput v6, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, p0, 0x1

    aget-wide v6, v0, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_5

    aget-wide v0, v0, p0

    sub-double/2addr v6, v0

    sub-double v0, p1, v0

    div-double/2addr v0, v6

    :goto_6
    if-ge v3, v4, :cond_6

    aget-object v6, v2, p0

    aget-wide v6, v6, v3

    aget-object v8, v2, v5

    aget-wide v8, v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v0

    mul-double/2addr v10, v6

    mul-double/2addr v8, v0

    add-double/2addr v8, v10

    double-to-float v6, v8

    aput v6, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    move p0, v5

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final e(D[D)V
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->b:[[D

    const/4 v2, 0x0

    aget-object v3, p0, v2

    array-length v3, v3

    aget-wide v4, v0, v2

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_0

    :goto_0
    move-wide p1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v0, v4

    cmpl-double v6, p1, v4

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    move v4, v2

    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget-wide v6, v0, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_2

    aget-wide p1, v0, v4

    sub-double/2addr v6, p1

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object p1, p0, v4

    aget-wide p1, p1, v2

    aget-object v0, p0, v5

    aget-wide v0, v0, v2

    sub-double/2addr v0, p1

    div-double/2addr v0, v6

    aput-wide v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final f()[D
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    return-object p0
.end method

.method public final g(D)D
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->a:[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_0

    :goto_0
    move-wide p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v0, v3

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    move v3, v2

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, v0, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_2

    aget-wide p1, v0, v3

    sub-double/2addr v5, p1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->b:[[D

    aget-object p1, p0, v3

    aget-wide p1, p1, v2

    aget-object p0, p0, v4

    aget-wide v0, p0, v2

    sub-double/2addr v0, p1

    div-double/2addr v0, v5

    return-wide v0

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    const-wide/16 p0, 0x0

    return-wide p0
.end method
