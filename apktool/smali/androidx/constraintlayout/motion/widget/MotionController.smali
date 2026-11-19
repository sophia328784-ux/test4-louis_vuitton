.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field public B:I

.field public C:I

.field public D:Landroid/view/View;

.field public E:I

.field public F:F

.field public G:Landroid/view/animation/Interpolator;

.field public H:Z

.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/view/View;

.field public final c:I

.field public d:Z

.field public e:I

.field public final f:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final g:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public final h:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public final i:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

.field public l:F

.field public m:F

.field public n:F

.field public o:[I

.field public p:[D

.field public q:[D

.field public r:[Ljava/lang/String;

.field public s:[I

.field public final t:[F

.field public final u:Ljava/util/ArrayList;

.field public final v:[F

.field public final w:Ljava/util/ArrayList;

.field public x:Ljava/util/HashMap;

.field public y:Ljava/util/HashMap;

.field public z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->e:I

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->h:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->l:F

    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->t:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->v:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->B:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->C:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->E:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->F:F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->G:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->H:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static f(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p4, 0x4

    if-eq p2, p4, :cond_0

    return-void

    :cond_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p4

    div-int/2addr v0, v1

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, v1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    div-int/2addr p3, v1

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iget p4, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p4

    div-int/2addr v0, v1

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/2addr p3, v1

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    div-int/2addr p3, v1

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public final a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->n:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->m:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v4, 0x7fc00000    # Float.NaN

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v6, :cond_3

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    cmpg-float v8, v7, p1

    if-gez v8, :cond_4

    move-object v3, v6

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double p0, p1

    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v0

    if-eqz p2, :cond_7

    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->b(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p2, v1

    :cond_7
    return v4

    :cond_8
    return p1
.end method

.method public final b(D[F[F)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    const/4 v4, 0x4

    new-array v5, v4, [D

    new-array v6, v4, [D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->e(D[D)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move v14, v8

    move/from16 v19, v14

    :goto_0
    array-length v8, v9

    if-ge v14, v8, :cond_4

    move-object v8, v5

    aget-wide v4, v8, v14

    double-to-float v4, v4

    move v5, v4

    aget-wide v3, v6, v14

    double-to-float v3, v3

    aget v4, v9, v14

    move/from16 v21, v3

    const/4 v3, 0x1

    if-eq v4, v3, :cond_3

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    const/4 v3, 0x3

    if-eq v4, v3, :cond_1

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    move v13, v5

    move/from16 v18, v21

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    move v12, v5

    move/from16 v16, v21

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    move v11, v5

    move/from16 v7, v21

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    move v10, v5

    move/from16 v15, v21

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v4, v3

    move-object v5, v8

    move-object/from16 v3, p4

    goto :goto_0

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v16, v3

    add-float v16, v16, v15

    div-float v18, v18, v3

    add-float v18, v18, v7

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->n:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    new-array v5, v4, [F

    new-array v4, v4, [F

    invoke-virtual {v0, v1, v2, v5, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->b(D[F[F)V

    aget v0, v5, v19

    const/16 v20, 0x1

    aget v1, v5, v20

    aget v2, v4, v19

    aget v4, v4, v20

    float-to-double v5, v0

    float-to-double v8, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v8

    add-double v21, v21, v5

    div-float v0, v12, v3

    float-to-double v5, v0

    sub-double v5, v21, v5

    double-to-float v0, v5

    float-to-double v5, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v8

    sub-double v5, v5, v21

    div-float v1, v13, v3

    float-to-double v8, v1

    sub-double/2addr v5, v8

    double-to-float v1, v5

    float-to-double v5, v2

    float-to-double v8, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    add-double/2addr v14, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move/from16 p0, v3

    move/from16 p1, v4

    float-to-double v3, v7

    mul-double/2addr v5, v3

    add-double/2addr v5, v14

    double-to-float v2, v5

    move/from16 v5, p1

    float-to-double v5, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    sub-double/2addr v5, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v7, v5

    double-to-float v3, v7

    move v10, v0

    move v11, v1

    move/from16 v16, v2

    move/from16 v18, v3

    goto :goto_2

    :cond_5
    move/from16 p0, v3

    :goto_2
    div-float v12, v12, p0

    add-float/2addr v12, v10

    add-float v12, v12, v17

    aput v12, p3, v19

    div-float v13, v13, p0

    add-float/2addr v13, v11

    add-float v13, v13, v17

    const/16 v20, 0x1

    aput v13, p3, v20

    aput v16, p4, v19

    aput v18, p4, v20

    return-void
.end method

.method public final c()F
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v7, v1, [F

    const-wide/16 v2, 0x0

    move-wide v10, v2

    move-wide v12, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v14, v2, :cond_6

    int-to-float v2, v14

    const v3, 0x3c257eb5

    mul-float/2addr v2, v3

    float-to-double v3, v2

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/16 v17, 0x0

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    move/from16 v18, v2

    if-eqz v9, :cond_1

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    cmpg-float v19, v2, v18

    if-gez v19, :cond_0

    move/from16 v16, v2

    move-object v5, v9

    goto :goto_2

    :cond_0
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    move v8, v1

    :cond_1
    :goto_2
    move/from16 v2, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v2

    const/16 v17, 0x0

    if-eqz v5, :cond_4

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_3
    sub-float v2, v18, v16

    sub-float v8, v8, v16

    div-float/2addr v2, v8

    float-to-double v1, v2

    invoke-virtual {v5, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v8

    add-float v1, v1, v16

    float-to-double v3, v1

    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v17

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    const/4 v8, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->c(D[I[D[FI)V

    const/4 v1, 0x1

    if-lez v14, :cond_5

    aget v2, v7, v1

    float-to-double v2, v2

    sub-double/2addr v12, v2

    aget v2, v7, v17

    float-to-double v2, v2

    sub-double/2addr v10, v2

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v15, v2

    :cond_5
    aget v2, v7, v17

    float-to-double v10, v2

    aget v1, v7, v1

    float-to-double v12, v1

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_6
    return v15
.end method

.method public final d(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->a(F[F)F

    move-result v2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->E:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    int-to-float v3, v3

    div-float v3, v8, v3

    div-float v4, v2, v3

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->F:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->F:F

    add-float/2addr v2, v6

    rem-float/2addr v2, v8

    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->G:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_1

    invoke-interface {v6, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v10, v12

    if-lez v2, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewSpline;

    invoke-virtual {v4, v2, v5}, Landroidx/constraintlayout/motion/utils/ViewSpline;->e(FLandroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v1

    move v13, v10

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    instance-of v3, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    if-eqz v3, :cond_5

    move-object v12, v1

    check-cast v12, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    goto :goto_2

    :cond_5
    move-wide/from16 v3, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->f(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v1

    or-int/2addr v13, v1

    goto :goto_2

    :cond_6
    move-object v1, v12

    goto :goto_3

    :cond_7
    move v13, v10

    :goto_3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    if-eqz v3, :cond_26

    aget-object v3, v3, v10

    float-to-double v14, v2

    const/high16 p1, 0x3f000000    # 0.5f

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    invoke-virtual {v3, v14, v15, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->c(D[D)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v3, v3, v10

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    invoke-virtual {v3, v14, v15, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->e(D[D)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v3, :cond_8

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    const/16 v16, 0x0

    array-length v7, v4

    if-lez v7, :cond_9

    invoke-virtual {v3, v14, v15, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->c(D[D)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    invoke-virtual {v3, v14, v15, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->e(D[D)V

    goto :goto_4

    :cond_8
    const/16 v16, 0x0

    :cond_9
    :goto_4
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->H:Z

    if-nez v3, :cond_1c

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    const/high16 v17, 0x40000000    # 2.0f

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    move/from16 v18, v8

    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Z

    iget v9, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    move/from16 v19, v10

    iget v10, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v6, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    const/16 v20, 0x1

    iget v12, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move-object/from16 v21, v1

    array-length v1, v3

    if-eqz v1, :cond_a

    iget-object v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    array-length v1, v1

    move/from16 v22, v6

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget v6, v3, v6

    if-gt v1, v6, :cond_b

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [D

    iput-object v6, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    new-array v1, v1, [D

    iput-object v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->r:[D

    goto :goto_5

    :cond_a
    move/from16 v22, v6

    :cond_b
    :goto_5
    iget-object v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    move-object/from16 v23, v7

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    move/from16 v1, v19

    :goto_6
    array-length v6, v3

    if-ge v1, v6, :cond_c

    iget-object v6, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    aget v7, v3, v1

    aget-wide v24, v23, v1

    aput-wide v24, v6, v7

    iget-object v6, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->r:[D

    aget-wide v24, v4, v1

    aput-wide v24, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    const/high16 v1, 0x7fc00000    # Float.NaN

    move/from16 v25, v8

    move/from16 v6, v16

    move v7, v6

    move/from16 v23, v7

    move/from16 v24, v23

    move/from16 v3, v19

    :goto_7
    iget-object v8, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    move/from16 v26, v12

    array-length v12, v8

    move-object/from16 v27, v8

    if-ge v3, v12, :cond_14

    aget-wide v27, v27, v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_d

    move v12, v9

    goto :goto_a

    :cond_d
    iget-object v12, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    aget-wide v27, v12, v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    const-wide/16 v27, 0x0

    if-eqz v12, :cond_e

    :goto_8
    move v12, v9

    move-wide/from16 v8, v27

    goto :goto_9

    :cond_e
    iget-object v12, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    aget-wide v29, v12, v3

    add-double v27, v29, v27

    goto :goto_8

    :goto_9
    double-to-float v8, v8

    iget-object v9, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->r:[D

    move/from16 v27, v8

    aget-wide v8, v9, v3

    double-to-float v8, v8

    move/from16 v9, v20

    if-eq v3, v9, :cond_13

    const/4 v9, 0x2

    if-eq v3, v9, :cond_12

    const/4 v9, 0x3

    if-eq v3, v9, :cond_11

    const/4 v9, 0x4

    if-eq v3, v9, :cond_10

    const/4 v8, 0x5

    if-eq v3, v8, :cond_f

    :goto_a
    move v9, v12

    move/from16 v12, v26

    goto :goto_b

    :cond_f
    move v9, v12

    move/from16 v12, v26

    move/from16 v1, v27

    goto :goto_b

    :cond_10
    move/from16 v24, v8

    move v9, v12

    move/from16 v12, v27

    goto :goto_b

    :cond_11
    move/from16 v23, v8

    move v9, v12

    move/from16 v12, v26

    move/from16 v22, v27

    goto :goto_b

    :cond_12
    move v6, v8

    move v9, v12

    move/from16 v12, v26

    move/from16 v10, v27

    goto :goto_b

    :cond_13
    move v7, v8

    move/from16 v12, v26

    move/from16 v9, v27

    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/16 v20, 0x1

    goto :goto_7

    :cond_14
    move v12, v9

    iget-object v3, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->n:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v3, :cond_17

    const/4 v9, 0x2

    new-array v8, v9, [F

    move/from16 v27, v12

    new-array v12, v9, [F

    invoke-virtual {v3, v14, v15, v8, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->b(D[F[F)V

    aget v3, v8, v19

    const/16 v20, 0x1

    aget v8, v8, v20

    aget v9, v12, v19

    aget v12, v12, v20

    move/from16 v28, v13

    move-wide/from16 v30, v14

    float-to-double v13, v3

    move-wide/from16 v23, v13

    move/from16 v3, v27

    float-to-double v13, v3

    move-wide/from16 v32, v13

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v32

    add-double v34, v34, v23

    div-float v3, v22, v17

    move-wide/from16 v23, v13

    float-to-double v13, v3

    sub-double v13, v34, v13

    double-to-float v3, v13

    float-to-double v13, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v32

    sub-double v13, v13, v34

    div-float v8, v26, v17

    move-wide/from16 v34, v13

    float-to-double v13, v8

    sub-double v13, v34, v13

    double-to-float v10, v13

    float-to-double v8, v9

    float-to-double v13, v7

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    add-double v34, v34, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v32

    move-wide/from16 v36, v7

    float-to-double v6, v6

    mul-double v8, v36, v6

    add-double v8, v8, v34

    double-to-float v8, v8

    move-wide/from16 v34, v6

    float-to-double v6, v12

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v36, v36, v13

    sub-double v6, v6, v36

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v32

    mul-double v12, v12, v34

    add-double/2addr v12, v6

    double-to-float v6, v12

    array-length v7, v4

    const/4 v9, 0x2

    if-lt v7, v9, :cond_15

    float-to-double v12, v8

    aput-wide v12, v4, v19

    float-to-double v12, v6

    const/16 v20, 0x1

    aput-wide v12, v4, v20

    :cond_15
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_16

    float-to-double v12, v1

    float-to-double v6, v6

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    add-double/2addr v6, v12

    double-to-float v1, v6

    invoke-virtual {v5, v1}, Landroid/view/View;->setRotation(F)V

    :cond_16
    :goto_c
    move v9, v3

    goto :goto_d

    :cond_17
    move v3, v12

    move/from16 v28, v13

    move-wide/from16 v30, v14

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_16

    div-float v23, v23, v17

    add-float v4, v23, v7

    div-float v24, v24, v17

    add-float v6, v24, v6

    float-to-double v6, v6

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v1, v4

    add-float v1, v1, v16

    invoke-virtual {v5, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_c

    :goto_d
    instance-of v1, v5, Landroidx/constraintlayout/motion/widget/FloatLayout;

    if-eqz v1, :cond_18

    move-object v1, v5

    check-cast v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/FloatLayout;->a()V

    :goto_e
    move/from16 v1, v19

    goto :goto_10

    :cond_18
    add-float v9, v9, p1

    float-to-int v1, v9

    add-float v10, v10, p1

    float-to-int v3, v10

    add-float v9, v9, v22

    float-to-int v4, v9

    add-float v10, v10, v26

    float-to-int v6, v10

    sub-int v7, v4, v1

    sub-int v8, v6, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ne v7, v9, :cond_1a

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eq v8, v9, :cond_19

    goto :goto_f

    :cond_19
    if-eqz v25, :cond_1b

    :cond_1a
    :goto_f
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/view/View;->measure(II)V

    :cond_1b
    invoke-virtual {v5, v1, v3, v4, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_e

    :goto_10
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Z

    goto :goto_11

    :cond_1c
    move-object/from16 v21, v1

    move/from16 v18, v8

    move/from16 v28, v13

    move-wide/from16 v30, v14

    const/high16 v17, 0x40000000    # 2.0f

    :goto_11
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->C:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->C:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    :cond_1d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    div-float v1, v1, v17

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float v3, v3, v17

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v4, v6

    if-lez v4, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    if-lez v4, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    if-eqz v4, :cond_1f

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    array-length v6, v4

    const/4 v9, 0x1

    if-le v6, v9, :cond_1f

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    const/16 v19, 0x0

    aget-wide v6, v4, v19

    aget-wide v12, v4, v9

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->a(F)F

    move-result v3

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_12

    :cond_20
    if-eqz v21, :cond_21

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    const/16 v19, 0x0

    aget-wide v7, v1, v19

    const/16 v20, 0x1

    aget-wide v9, v1, v20

    move-wide/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v1, v21

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->d(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result v3

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->h:Z

    or-int v13, v28, v1

    goto :goto_13

    :cond_21
    move/from16 v13, v28

    :goto_13
    const/4 v9, 0x1

    :goto_14
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    array-length v3, v1

    if-ge v9, v3, :cond_22

    aget-object v1, v1, v9

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->t:[F

    move-wide/from16 v6, v30

    invoke-virtual {v1, v6, v7, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->d(D[F)V

    iget-object v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[Ljava/lang/String;

    add-int/lit8 v8, v9, -0x1

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-static {v1, v5, v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_22
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c:I

    if-nez v3, :cond_25

    cmpg-float v3, v2, v16

    if-gtz v3, :cond_23

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->d:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :cond_23
    cmpl-float v3, v2, v18

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    if-ltz v3, :cond_24

    iget v1, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->d:I

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :cond_24
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->d:I

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->d:I

    if-eq v3, v1, :cond_25

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    :goto_15
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->A:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    :goto_16
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->A:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v4, v3

    if-ge v1, v4, :cond_29

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v5}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->f(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    move/from16 v28, v13

    const/high16 p1, 0x3f000000    # 0.5f

    iget v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    invoke-static {v4, v1, v2, v1}, Ltr;->a(FFFF)F

    move-result v1

    iget v4, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    invoke-static {v6, v4, v2, v4}, Ltr;->a(FFFF)F

    move-result v4

    iget v6, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    invoke-static {v7, v6, v2, v6}, Ltr;->a(FFFF)F

    move-result v8

    iget v9, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    invoke-static {v3, v9, v2, v9}, Ltr;->a(FFFF)F

    move-result v10

    add-float v1, v1, p1

    float-to-int v11, v1

    add-float v4, v4, p1

    float-to-int v12, v4

    add-float/2addr v1, v8

    float-to-int v1, v1

    add-float/2addr v4, v10

    float-to-int v4, v4

    sub-int v8, v1, v11

    sub-int v10, v4, v12

    cmpl-float v6, v7, v6

    if-nez v6, :cond_27

    cmpl-float v3, v3, v9

    if-nez v3, :cond_27

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Z

    if-eqz v3, :cond_28

    :cond_27
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->d:Z

    :cond_28
    invoke-virtual {v5, v11, v12, v1, v4}, Landroid/view/View;->layout(IIII)V

    move/from16 v13, v28

    :cond_29
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    if-eqz v4, :cond_2a

    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    const/16 v19, 0x0

    aget-wide v6, v4, v19

    const/16 v20, 0x1

    aget-wide v8, v4, v20

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->a(F)F

    move-result v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_17

    :cond_2a
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual {v3, v2, v5}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->g(FLandroid/view/View;)V

    goto :goto_17

    :cond_2b
    return v13
.end method

.method public final e(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->d(FFFF)V

    return-void
.end method

.method public final g(IIJ)V
    .locals 51

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->B:I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->h:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->f:F

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->i:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->f:F

    invoke-static {v8, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v8

    const-string v10, "alpha"

    if-eqz v8, :cond_1

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->g:F

    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->g:F

    invoke-static {v8, v11}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v8

    const-string v11, "elevation"

    if-eqz v8, :cond_2

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->d:I

    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->d:I

    if-eq v8, v12, :cond_4

    iget v13, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c:I

    if-nez v13, :cond_4

    if-eqz v8, :cond_3

    if-nez v12, :cond_4

    :cond_3
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->h:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->h:F

    invoke-static {v8, v12}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v8

    const-string v12, "rotation"

    if-eqz v8, :cond_5

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->q:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-string v13, "transitionPathRotate"

    if-eqz v8, :cond_6

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->q:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->r:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-string v14, "progress"

    if-eqz v8, :cond_8

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->r:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->i:F

    iget v15, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->i:F

    invoke-static {v8, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v8

    const-string v15, "rotationX"

    if-eqz v8, :cond_a

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b:F

    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->b:F

    invoke-static {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v8, "rotationY"

    if-eqz v7, :cond_b

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->l:F

    move-object/from16 v16, v15

    iget v15, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->l:F

    invoke-static {v7, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v15, "transformPivotX"

    if-eqz v7, :cond_c

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->m:F

    move-object/from16 v17, v8

    iget v8, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->m:F

    invoke-static {v7, v8}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v8, "transformPivotY"

    if-eqz v7, :cond_d

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->j:F

    move-object/from16 v18, v14

    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->j:F

    invoke-static {v7, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v14, "scaleX"

    if-eqz v7, :cond_e

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->k:F

    move-object/from16 v19, v14

    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->k:F

    invoke-static {v7, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v14, "scaleY"

    if-eqz v7, :cond_f

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->n:F

    move-object/from16 v20, v14

    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->n:F

    invoke-static {v7, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v14, "translationX"

    if-eqz v7, :cond_10

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->o:F

    move-object/from16 v21, v14

    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->o:F

    invoke-static {v7, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v7

    const-string v14, "translationY"

    if-eqz v7, :cond_11

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->p:F

    move-object/from16 v22, v5

    iget v5, v9, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->p:F

    invoke-static {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->c(FF)Z

    move-result v5

    const-string v7, "translationZ"

    if-eqz v5, :cond_12

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v25, v9

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->u:Ljava/util/ArrayList;

    move-object/from16 v26, v14

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->w:Ljava/util/ArrayList;

    move-object/from16 v27, v14

    if-eqz v27, :cond_3b

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    const/16 v32, 0x0

    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_3a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v14, v33

    check-cast v14, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v33, v7

    instance-of v7, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v7, :cond_34

    check-cast v14, Landroidx/constraintlayout/motion/widget/KeyPosition;

    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object/from16 v34, v15

    const/4 v15, 0x0

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    const/high16 v15, 0x7fc00000    # Float.NaN

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->j:F

    const/4 v15, -0x1

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    const/high16 v15, 0x7fc00000    # Float.NaN

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->m:F

    const/4 v15, 0x0

    iput-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->n:Landroidx/constraintlayout/motion/widget/MotionController;

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    const/4 v15, 0x0

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    move-object/from16 v35, v8

    const/16 v15, 0x12

    new-array v8, v15, [D

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->q:[D

    new-array v8, v15, [D

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->r:[D

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    const/4 v15, -0x1

    const/high16 v36, 0x42c80000    # 100.0f

    if-eq v8, v15, :cond_1a

    iget v8, v14, Landroidx/constraintlayout/motion/widget/Key;->a:I

    int-to-float v8, v8

    div-float v8, v8, v36

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_13

    move v15, v8

    :goto_1
    move-object/from16 v37, v12

    goto :goto_2

    :cond_13
    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    goto :goto_1

    :goto_2
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_14

    move v12, v8

    :goto_3
    move-object/from16 v38, v11

    goto :goto_4

    :cond_14
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    goto :goto_3

    :goto_4
    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    move/from16 v36, v11

    iget v11, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    sub-float v36, v36, v11

    move/from16 v39, v11

    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move/from16 v40, v11

    iget v11, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    sub-float v40, v40, v11

    move/from16 v41, v11

    iget v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    mul-float v36, v36, v15

    add-float v11, v36, v39

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    mul-float v40, v40, v12

    add-float v11, v40, v41

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    move-object/from16 v39, v13

    iget v13, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    move/from16 v36, v13

    const/4 v13, 0x2

    if-eq v11, v13, :cond_17

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_15

    move v11, v8

    goto :goto_5

    :cond_15
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    :goto_5
    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v13, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    invoke-static {v12, v13, v11, v13}, Ltr;->a(FFFF)F

    move-result v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_6

    :cond_16
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    :goto_6
    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v12, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    invoke-static {v11, v12, v8, v12}, Ltr;->a(FFFF)F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    goto :goto_9

    :cond_17
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_18

    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v12, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    invoke-static {v11, v12, v8, v12}, Ltr;->a(FFFF)F

    move-result v11

    goto :goto_7

    :cond_18
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float/2addr v11, v12

    :goto_7
    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_19

    iget v11, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v12, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    invoke-static {v11, v12, v8, v12}, Ltr;->a(FFFF)F

    move-result v8

    goto :goto_8

    :cond_19
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    :goto_8
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    :goto_9
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    iget-object v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    goto/16 :goto_21

    :cond_1a
    move-object/from16 v38, v11

    move-object/from16 v37, v12

    move-object/from16 v39, v13

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->o:I

    iget v11, v14, Landroidx/constraintlayout/motion/widget/Key;->a:I

    const/4 v15, 0x1

    if-eq v8, v15, :cond_2f

    const/4 v15, 0x2

    if-eq v8, v15, :cond_2a

    const/4 v15, 0x3

    if-eq v8, v15, :cond_21

    int-to-float v8, v11

    div-float v8, v8, v36

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_1b

    move v11, v8

    goto :goto_a

    :cond_1b
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    :goto_a
    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_1c

    move v15, v8

    goto :goto_b

    :cond_1c
    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    :goto_b
    iget v12, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    const/high16 v41, 0x40000000    # 2.0f

    iget v13, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    sub-float v36, v12, v13

    move/from16 v42, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move/from16 v43, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    sub-float v44, v43, v8

    move/from16 v45, v8

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    div-float v46, v13, v41

    add-float v46, v46, v8

    move/from16 v47, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    div-float v48, v45, v41

    add-float v48, v48, v8

    move/from16 v49, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    div-float v12, v12, v41

    add-float/2addr v12, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    div-float v43, v43, v41

    add-float v43, v43, v8

    sub-float v12, v12, v46

    sub-float v43, v43, v48

    mul-float v8, v12, v42

    add-float v8, v8, v47

    mul-float v36, v36, v11

    div-float v11, v36, v41

    sub-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    mul-float v8, v43, v42

    add-float v8, v8, v49

    mul-float v44, v44, v15

    div-float v15, v44, v41

    sub-float/2addr v8, v15

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    add-float v13, v13, v36

    float-to-int v8, v13

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    add-float v8, v45, v44

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1d

    move/from16 v8, v42

    goto :goto_c

    :cond_1d
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    :goto_c
    iget v13, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_1e

    const/4 v13, 0x0

    :goto_d
    move/from16 v36, v8

    goto :goto_e

    :cond_1e
    iget v13, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    goto :goto_d

    :goto_e
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1f

    move/from16 v41, v42

    goto :goto_f

    :cond_1f
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    move/from16 v41, v8

    :goto_f
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_20

    const/16 v40, 0x0

    :goto_10
    const/4 v8, 0x0

    goto :goto_11

    :cond_20
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    move/from16 v40, v8

    goto :goto_10

    :goto_11
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    mul-float v36, v36, v12

    add-float v36, v36, v8

    mul-float v40, v40, v43

    add-float v40, v40, v36

    sub-float v8, v40, v11

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    mul-float/2addr v12, v13

    add-float/2addr v12, v8

    mul-float v43, v43, v41

    add-float v43, v43, v12

    sub-float v8, v43, v15

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget-object v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    goto/16 :goto_21

    :cond_21
    const/high16 v41, 0x40000000    # 2.0f

    int-to-float v8, v11

    div-float v8, v8, v36

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_22

    move v11, v8

    goto :goto_12

    :cond_22
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    :goto_12
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_23

    move v12, v8

    goto :goto_13

    :cond_23
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    :goto_13
    iget v13, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v15, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    sub-float v36, v13, v15

    move/from16 v42, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move/from16 v43, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    sub-float v44, v43, v8

    move/from16 v45, v8

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    div-float v46, v15, v41

    add-float v46, v46, v8

    move/from16 v47, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    div-float v48, v45, v41

    add-float v48, v48, v8

    move/from16 v49, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    div-float v13, v13, v41

    add-float/2addr v13, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    div-float v43, v43, v41

    add-float v43, v43, v8

    cmpl-float v8, v46, v13

    if-lez v8, :cond_24

    move/from16 v50, v46

    move/from16 v46, v13

    move/from16 v13, v50

    :cond_24
    cmpl-float v8, v48, v43

    if-lez v8, :cond_25

    goto :goto_14

    :cond_25
    move/from16 v50, v48

    move/from16 v48, v43

    move/from16 v43, v50

    :goto_14
    sub-float v13, v13, v46

    sub-float v48, v48, v43

    mul-float v8, v13, v42

    add-float v8, v8, v47

    mul-float v36, v36, v11

    div-float v11, v36, v41

    sub-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    mul-float v8, v48, v42

    add-float v8, v8, v49

    mul-float v44, v44, v12

    div-float v12, v44, v41

    sub-float/2addr v8, v12

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    add-float v15, v15, v36

    float-to-int v8, v15

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    add-float v8, v45, v44

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_26

    move/from16 v8, v42

    goto :goto_15

    :cond_26
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    :goto_15
    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_27

    const/4 v15, 0x0

    :goto_16
    move/from16 v36, v8

    goto :goto_17

    :cond_27
    iget v15, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->n:F

    goto :goto_16

    :goto_17
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_28

    move/from16 v41, v42

    goto :goto_18

    :cond_28
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    move/from16 v41, v8

    :goto_18
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v40, 0x0

    :goto_19
    const/4 v8, 0x0

    goto :goto_1a

    :cond_29
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->m:F

    move/from16 v40, v8

    goto :goto_19

    :goto_1a
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    mul-float v36, v36, v13

    add-float v36, v36, v8

    mul-float v40, v40, v48

    add-float v40, v40, v36

    sub-float v8, v40, v11

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    mul-float/2addr v13, v15

    add-float/2addr v13, v8

    mul-float v48, v48, v41

    add-float v48, v48, v13

    sub-float v8, v48, v12

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget-object v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    goto/16 :goto_21

    :cond_2a
    const/high16 v41, 0x40000000    # 2.0f

    int-to-float v8, v11

    div-float v8, v8, v36

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_2b

    move v11, v8

    goto :goto_1b

    :cond_2b
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    :goto_1b
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_2c

    move v12, v8

    goto :goto_1c

    :cond_2c
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    :goto_1c
    iget v13, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v15, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    sub-float v36, v13, v15

    move/from16 v40, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move/from16 v42, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    sub-float v43, v42, v8

    move/from16 v44, v8

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    div-float v45, v15, v41

    add-float v45, v45, v8

    move/from16 v46, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    div-float v47, v44, v41

    add-float v47, v47, v8

    move/from16 v48, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    div-float v13, v13, v41

    add-float/2addr v13, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    div-float v42, v42, v41

    add-float v42, v42, v8

    sub-float v13, v13, v45

    sub-float v42, v42, v47

    mul-float v13, v13, v40

    add-float v13, v13, v46

    mul-float v36, v36, v11

    div-float v8, v36, v41

    sub-float/2addr v13, v8

    float-to-int v8, v13

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    mul-float v42, v42, v40

    add-float v42, v42, v48

    mul-float v43, v43, v12

    div-float v8, v43, v41

    sub-float v8, v42, v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    add-float v15, v15, v36

    float-to-int v8, v15

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    add-float v8, v44, v43

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    const/4 v13, 0x2

    iput v13, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2d

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    float-to-int v8, v8

    sub-int v8, p1, v8

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    int-to-float v8, v8

    mul-float/2addr v11, v8

    float-to-int v8, v11

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    :cond_2d
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_2e

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    float-to-int v8, v8

    sub-int v8, p2, v8

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    int-to-float v8, v8

    mul-float/2addr v11, v8

    float-to-int v8, v11

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    :cond_2e
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    iget-object v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    goto/16 :goto_21

    :cond_2f
    const/high16 v41, 0x40000000    # 2.0f

    int-to-float v8, v11

    div-float v8, v8, v36

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->h:I

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->c:I

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_30

    move v11, v8

    goto :goto_1d

    :cond_30
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->i:F

    :goto_1d
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_31

    move v12, v8

    goto :goto_1e

    :cond_31
    iget v12, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->j:F

    :goto_1e
    iget v13, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v15, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    sub-float/2addr v13, v15

    iget v15, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    move/from16 v36, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    sub-float/2addr v15, v8

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_32

    goto :goto_1f

    :cond_32
    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->k:F

    move/from16 v36, v8

    :goto_1f
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    move/from16 v42, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    div-float v43, v8, v41

    add-float v43, v43, v42

    move/from16 v44, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    move/from16 v45, v8

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    div-float v46, v8, v41

    add-float v46, v46, v45

    move/from16 v47, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    move/from16 v48, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    div-float v8, v8, v41

    add-float v8, v8, v48

    move/from16 v48, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    move/from16 v49, v8

    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    div-float v8, v8, v41

    add-float v8, v8, v49

    sub-float v43, v48, v43

    sub-float v8, v8, v46

    mul-float v46, v43, v36

    add-float v42, v42, v46

    mul-float/2addr v13, v11

    div-float v11, v13, v41

    move/from16 v48, v11

    sub-float v11, v42, v48

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    mul-float v36, v36, v8

    add-float v11, v45, v36

    mul-float/2addr v15, v12

    div-float v12, v15, v41

    sub-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    add-float v11, v44, v13

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    add-float v11, v47, v15

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_33

    const/16 v40, 0x0

    goto :goto_20

    :cond_33
    iget v11, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->l:F

    move/from16 v40, v11

    :goto_20
    neg-float v8, v8

    mul-float v8, v8, v40

    mul-float v43, v43, v40

    const/4 v15, 0x1

    iput v15, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->p:I

    iget v11, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    add-float v11, v11, v46

    sub-float v11, v11, v48

    float-to-int v11, v11

    int-to-float v11, v11

    iget v13, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    add-float v13, v13, v36

    sub-float/2addr v13, v12

    float-to-int v12, v13

    int-to-float v12, v12

    add-float/2addr v11, v8

    iput v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    add-float v12, v12, v43

    iput v12, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->l:I

    iget-object v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->f:Ljava/lang/String;

    invoke-static {v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->b:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget v8, v14, Landroidx/constraintlayout/motion/widget/KeyPosition;->g:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    :goto_21
    invoke-static {v9, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v8

    neg-int v8, v8

    const/16 v30, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v9, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v7, v14, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->e:I

    const/4 v15, -0x1

    if-eq v7, v15, :cond_39

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:I

    goto :goto_23

    :cond_34
    move-object/from16 v35, v8

    move-object/from16 v38, v11

    move-object/from16 v37, v12

    move-object/from16 v39, v13

    move-object/from16 v34, v15

    instance-of v7, v14, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v7, :cond_35

    invoke-virtual {v14, v3}, Landroidx/constraintlayout/motion/widget/Key;->c(Ljava/util/HashSet;)V

    goto :goto_23

    :cond_35
    instance-of v7, v14, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v7, :cond_36

    invoke-virtual {v14, v1}, Landroidx/constraintlayout/motion/widget/Key;->c(Ljava/util/HashSet;)V

    goto :goto_23

    :cond_36
    instance-of v7, v14, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v7, :cond_38

    if-nez v32, :cond_37

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_22

    :cond_37
    move-object/from16 v7, v32

    :goto_22
    check-cast v14, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v7

    goto :goto_23

    :cond_38
    invoke-virtual {v14, v4}, Landroidx/constraintlayout/motion/widget/Key;->e(Ljava/util/HashMap;)V

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/motion/widget/Key;->c(Ljava/util/HashSet;)V

    :cond_39
    :goto_23
    move-object/from16 v7, v33

    move-object/from16 v15, v34

    move-object/from16 v8, v35

    move-object/from16 v12, v37

    move-object/from16 v11, v38

    move-object/from16 v13, v39

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v33, v7

    move-object/from16 v7, v32

    :goto_24
    move-object/from16 v35, v8

    move-object/from16 v38, v11

    move-object/from16 v37, v12

    move-object/from16 v39, v13

    move-object/from16 v34, v15

    goto :goto_25

    :cond_3b
    move-object/from16 v33, v7

    const/4 v7, 0x0

    goto :goto_24

    :goto_25
    if-eqz v7, :cond_3c

    const/4 v15, 0x0

    new-array v8, v15, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->A:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    :cond_3c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const-string v12, ","

    const-string v13, "CUSTOM,"

    if-nez v7, :cond_5a

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_42

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_40

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 p1, 0x4

    const/16 v30, 0x1

    aget-object v8, v31, v30

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_27
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3f

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v11, v32

    check-cast v11, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v32, v1

    iget-object v1, v11, Landroidx/constraintlayout/motion/widget/Key;->d:Ljava/util/HashMap;

    if-nez v1, :cond_3e

    :cond_3d
    :goto_28
    move-object/from16 v1, v32

    goto :goto_27

    :cond_3e
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v1, :cond_3d

    iget v11, v11, Landroidx/constraintlayout/motion/widget/Key;->a:I

    invoke-virtual {v15, v11, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_28

    :cond_3f
    move-object/from16 v32, v1

    new-instance v1, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v1, v14, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_29

    :cond_40
    move-object/from16 v32, v1

    const/16 p1, 0x4

    invoke-static {v14}, Landroidx/constraintlayout/motion/utils/ViewSpline;->d(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    move-result-object v1

    :goto_29
    if-nez v1, :cond_41

    :goto_2a
    move-object/from16 v1, v32

    goto :goto_26

    :cond_41
    iput-object v14, v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;->e:Ljava/lang/String;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    invoke-virtual {v8, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_42
    move-object/from16 v32, v1

    const/16 p1, 0x4

    if-eqz v27, :cond_57

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v8, :cond_56

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_56

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-nez v15, :cond_43

    goto :goto_2c

    :cond_43
    move-object/from16 v31, v1

    const-string v1, "CUSTOM"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    move/from16 v36, v1

    const/4 v1, 0x7

    if-eqz v36, :cond_45

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/Key;->d:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v1, :cond_44

    check-cast v15, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    iget v14, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget-object v15, v15, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->f:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_44
    move-object/from16 v1, v31

    goto :goto_2c

    :cond_45
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v36

    sparse-switch v36, :sswitch_data_0

    :goto_2d
    move-object/from16 v1, v16

    move-object/from16 v36, v20

    :goto_2e
    const/4 v14, -0x1

    goto/16 :goto_32

    :sswitch_0
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_2d

    :cond_46
    const/16 v1, 0xd

    move v14, v1

    goto :goto_2f

    :sswitch_1
    move-object/from16 v1, v39

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_47

    move-object/from16 v39, v1

    goto :goto_2d

    :cond_47
    const/16 v14, 0xc

    move-object/from16 v39, v1

    goto :goto_2f

    :sswitch_2
    move-object/from16 v1, v38

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_48

    move-object/from16 v38, v1

    goto :goto_2d

    :cond_48
    const/16 v14, 0xb

    move-object/from16 v38, v1

    goto :goto_2f

    :sswitch_3
    move-object/from16 v1, v37

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_49

    move-object/from16 v37, v1

    goto :goto_2d

    :cond_49
    const/16 v14, 0xa

    move-object/from16 v37, v1

    goto :goto_2f

    :sswitch_4
    move-object/from16 v1, v35

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4a

    move-object/from16 v35, v1

    goto :goto_2d

    :cond_4a
    const/16 v14, 0x9

    move-object/from16 v35, v1

    goto :goto_2f

    :sswitch_5
    move-object/from16 v1, v34

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4b

    move-object/from16 v34, v1

    goto :goto_2d

    :cond_4b
    const/16 v14, 0x8

    move-object/from16 v34, v1

    :goto_2f
    move-object/from16 v1, v16

    move-object/from16 v36, v20

    goto/16 :goto_32

    :sswitch_6
    move-object/from16 v50, v20

    move/from16 v20, v1

    move-object/from16 v1, v50

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    if-nez v14, :cond_4c

    goto :goto_2e

    :cond_4c
    move/from16 v14, v20

    goto/16 :goto_32

    :sswitch_7
    move-object/from16 v1, v19

    move-object/from16 v36, v20

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v1, v16

    if-nez v14, :cond_4d

    goto/16 :goto_2e

    :cond_4d
    const/4 v14, 0x6

    goto/16 :goto_32

    :sswitch_8
    move-object/from16 v1, v18

    move-object/from16 v36, v20

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4e

    move-object/from16 v18, v1

    goto :goto_30

    :cond_4e
    const/4 v14, 0x5

    move-object/from16 v18, v1

    goto :goto_31

    :sswitch_9
    move-object/from16 v36, v20

    move-object/from16 v1, v33

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4f

    move-object/from16 v33, v1

    :goto_30
    move-object/from16 v1, v16

    goto/16 :goto_2e

    :cond_4f
    move/from16 v14, p1

    move-object/from16 v33, v1

    :goto_31
    move-object/from16 v1, v16

    goto :goto_32

    :sswitch_a
    move-object/from16 v36, v20

    move-object/from16 v1, v26

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v1, v16

    if-nez v14, :cond_50

    goto/16 :goto_2e

    :cond_50
    const/4 v14, 0x3

    goto :goto_32

    :sswitch_b
    move-object/from16 v36, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v1, v16

    if-nez v14, :cond_51

    goto/16 :goto_2e

    :cond_51
    const/4 v14, 0x2

    goto :goto_32

    :sswitch_c
    move-object/from16 v1, v17

    move-object/from16 v36, v20

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v1, v16

    if-nez v14, :cond_52

    goto/16 :goto_2e

    :cond_52
    const/4 v14, 0x1

    goto :goto_32

    :sswitch_d
    move-object/from16 v1, v16

    move-object/from16 v36, v20

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_53

    goto/16 :goto_2e

    :cond_53
    const/4 v14, 0x0

    :goto_32
    packed-switch v14, :pswitch_data_0

    :cond_54
    move-object/from16 v16, v1

    goto/16 :goto_33

    :pswitch_0
    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->f:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_54

    iget v14, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->f:F

    invoke-virtual {v15, v1, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_1
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->m:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_2
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->g:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_3
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->h:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_4
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->l:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_5
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->k:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_6
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->o:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_7
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->n:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto/16 :goto_33

    :pswitch_8
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->s:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->s:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto :goto_33

    :pswitch_9
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->r:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->r:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto :goto_33

    :pswitch_a
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->q:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->q:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto :goto_33

    :pswitch_b
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->p:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto :goto_33

    :pswitch_c
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->j:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    goto :goto_33

    :pswitch_d
    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_55

    iget v1, v7, Landroidx/constraintlayout/motion/widget/Key;->a:I

    iget v14, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;->i:F

    invoke-virtual {v15, v14, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->b(FI)V

    :cond_55
    :goto_33
    move-object/from16 v1, v31

    move-object/from16 v20, v36

    goto/16 :goto_2c

    :cond_56
    move-object/from16 v31, v1

    move-object/from16 v36, v20

    move-object/from16 v1, v31

    move-object/from16 v20, v36

    goto/16 :goto_2b

    :cond_57
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    move-object/from16 v7, v22

    const/4 v15, 0x0

    invoke-virtual {v7, v1, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->a(Ljava/util/HashMap;I)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    const/16 v7, 0x64

    move-object/from16 v8, v25

    invoke-virtual {v8, v1, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->a(Ljava/util/HashMap;I)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_59

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_35

    :cond_59
    const/4 v8, 0x0

    :goto_35
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->y:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v7, :cond_58

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->c(I)V

    goto :goto_34

    :cond_5a
    move-object/from16 v32, v1

    const/16 p1, 0x4

    :cond_5b
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    if-nez v1, :cond_5c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    :cond_5c
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    goto :goto_36

    :cond_5d
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v30, 0x1

    aget-object v10, v10, v30

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5e
    :goto_37
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_60

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/motion/widget/Key;

    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->d:Ljava/util/HashMap;

    if-nez v15, :cond_5f

    goto :goto_37

    :cond_5f
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v15, :cond_5e

    iget v14, v14, Landroidx/constraintlayout/motion/widget/Key;->a:I

    invoke-virtual {v8, v14, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_37

    :cond_60
    new-instance v10, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    invoke-direct {v10, v7, v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v8, v10

    move-wide/from16 v10, p3

    goto :goto_38

    :cond_61
    move-wide/from16 v10, p3

    invoke-static {v10, v11, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->e(JLjava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    move-result-object v8

    :goto_38
    if-nez v8, :cond_62

    goto :goto_36

    :cond_62
    iput-object v7, v8, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->f:Ljava/lang/String;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v14, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_63
    if-eqz v27, :cond_65

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v8, :cond_64

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->f(Ljava/util/HashMap;)V

    goto :goto_39

    :cond_65
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3b

    :cond_66
    const/4 v8, 0x0

    :goto_3b
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->x:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->c(I)V

    goto :goto_3a

    :cond_67
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, v1, 0x2

    new-array v7, v4, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v15, 0x0

    aput-object v6, v7, v15

    const/16 v30, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object v5, v7, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_68

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_68

    iput v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:I

    :cond_68
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v10, v8, 0x1

    aput-object v9, v7, v8

    move v8, v10

    goto :goto_3c

    :cond_69
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6a
    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6a

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_6b
    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->s:[I

    const/4 v1, 0x0

    :goto_3e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[Ljava/lang/String;

    array-length v5, v2

    if-ge v1, v5, :cond_6e

    aget-object v2, v2, v1

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->s:[I

    const/16 v29, 0x0

    aput v29, v5, v1

    const/4 v5, 0x0

    :goto_3f
    if-ge v5, v4, :cond_6d

    aget-object v6, v7, v5

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    aget-object v6, v7, v5

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v6, :cond_6c

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->s:[I

    aget v5, v2, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v2, v1

    goto :goto_40

    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_6d
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_6e
    const/16 v29, 0x0

    aget-object v1, v7, v29

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    const/4 v15, -0x1

    if-eq v1, v15, :cond_6f

    const/4 v1, 0x1

    goto :goto_41

    :cond_6f
    const/4 v1, 0x0

    :goto_41
    array-length v2, v2

    const/16 v24, 0x12

    add-int v5, v24, v2

    new-array v2, v5, [Z

    const/4 v6, 0x1

    :goto_42
    if-ge v6, v4, :cond_70

    aget-object v8, v7, v6

    add-int/lit8 v9, v6, -0x1

    aget-object v9, v7, v9

    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    invoke-static {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b(FF)Z

    move-result v10

    iget v11, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b(FF)Z

    move-result v11

    const/16 v29, 0x0

    aget-boolean v12, v2, v29

    iget v13, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    iget v14, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    invoke-static {v13, v14}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b(FF)Z

    move-result v13

    or-int/2addr v12, v13

    aput-boolean v12, v2, v29

    const/16 v30, 0x1

    aget-boolean v12, v2, v30

    or-int/2addr v10, v11

    or-int/2addr v10, v1

    or-int v11, v12, v10

    aput-boolean v11, v2, v30

    const/16 v28, 0x2

    aget-boolean v11, v2, v28

    or-int/2addr v10, v11

    aput-boolean v10, v2, v28

    const/16 v23, 0x3

    aget-boolean v10, v2, v23

    iget v11, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b(FF)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v2, v23

    aget-boolean v10, v2, p1

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    invoke-static {v8, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->b(FF)Z

    move-result v8

    or-int/2addr v8, v10

    aput-boolean v8, v2, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_70
    const/4 v1, 0x0

    const/4 v6, 0x1

    :goto_43
    if-ge v6, v5, :cond_72

    aget-boolean v8, v2, v6

    if-eqz v8, :cond_71

    add-int/lit8 v1, v1, 0x1

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :cond_72
    new-array v6, v1, [I

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    const/4 v13, 0x2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v6, v1, [D

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->p:[D

    new-array v1, v1, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->q:[D

    const/4 v1, 0x0

    const/4 v6, 0x1

    :goto_44
    if-ge v6, v5, :cond_74

    aget-boolean v8, v2, v6

    if-eqz v8, :cond_73

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    add-int/lit8 v9, v1, 0x1

    aput v6, v8, v1

    move v1, v9

    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_74
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    array-length v1, v1

    const/4 v13, 0x2

    new-array v2, v13, [I

    const/16 v30, 0x1

    aput v1, v2, v30

    const/16 v29, 0x0

    aput v4, v2, v29

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    new-array v5, v4, [D

    const/4 v6, 0x0

    :goto_45
    if-ge v6, v4, :cond_77

    aget-object v8, v7, v6

    aget-object v9, v2, v6

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    iget v11, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->e:F

    iget v12, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    iget v13, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    iget v14, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->h:F

    iget v15, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->i:F

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->j:F

    move-object/from16 v16, v3

    move/from16 v17, v6

    const/4 v3, 0x6

    new-array v6, v3, [F

    const/16 v29, 0x0

    aput v11, v6, v29

    const/16 v30, 0x1

    aput v12, v6, v30

    const/16 v28, 0x2

    aput v13, v6, v28

    const/16 v23, 0x3

    aput v14, v6, v23

    aput v15, v6, p1

    const/4 v3, 0x5

    aput v8, v6, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_46
    array-length v11, v10

    if-ge v3, v11, :cond_76

    aget v11, v10, v3

    const/4 v12, 0x6

    if-ge v11, v12, :cond_75

    add-int/lit8 v12, v8, 0x1

    aget v11, v6, v11

    float-to-double v13, v11

    aput-wide v13, v9, v8

    move v8, v12

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_76
    aget-object v3, v7, v17

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    float-to-double v8, v3

    aput-wide v8, v5, v17

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v3, v16

    goto :goto_45

    :cond_77
    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_47
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    array-length v8, v6

    if-ge v3, v8, :cond_79

    aget v6, v6, v3

    const/4 v12, 0x6

    if-ge v6, v12, :cond_78

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->o:[I

    aget v8, v8, v3

    sget-object v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->s:[Ljava/lang/String;

    aget-object v8, v9, v8

    const-string v9, " ["

    invoke-static {v8, v9, v6}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :goto_48
    if-ge v8, v4, :cond_78

    invoke-static {v6}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v9, v2, v8

    aget-wide v9, v9, v3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_79
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[Ljava/lang/String;

    array-length v3, v3

    const/16 v30, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    :goto_49
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->r:[Ljava/lang/String;

    array-length v8, v6

    if-ge v3, v8, :cond_81

    aget-object v6, v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4a
    if-ge v8, v4, :cond_80

    aget-object v12, v7, v8

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7f

    if-nez v11, :cond_7b

    new-array v10, v4, [D

    aget-object v11, v7, v8

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v11, :cond_7a

    const/4 v11, 0x0

    :goto_4b
    const/4 v13, 0x2

    goto :goto_4c

    :cond_7a
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v11

    goto :goto_4b

    :goto_4c
    new-array v12, v13, [I

    const/16 v30, 0x1

    aput v11, v12, v30

    const/16 v29, 0x0

    aput v4, v12, v29

    invoke-static {v1, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    :cond_7b
    aget-object v12, v7, v8

    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    float-to-double v13, v13

    aput-wide v13, v10, v9

    aget-object v13, v11, v9

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v12, :cond_7c

    goto :goto_4d

    :cond_7c
    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7e

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a()F

    move-result v12

    float-to-double v14, v12

    const/16 v29, 0x0

    aput-wide v14, v13, v29

    :cond_7d
    :goto_4d
    move/from16 v19, v3

    move-object/from16 p1, v6

    move-object/from16 v20, v7

    goto :goto_4f

    :cond_7e
    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v14

    new-array v15, v14, [F

    invoke-virtual {v12, v15}, Landroidx/constraintlayout/widget/ConstraintAttribute;->b([F)V

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_4e
    if-ge v12, v14, :cond_7d

    add-int/lit8 v18, v17, 0x1

    move/from16 v19, v3

    aget v3, v15, v12

    move-object/from16 p1, v6

    move-object/from16 v20, v7

    float-to-double v6, v3

    aput-wide v6, v13, v17

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p1

    move/from16 v17, v18

    move/from16 v3, v19

    move-object/from16 v7, v20

    goto :goto_4e

    :goto_4f
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    :cond_7f
    move/from16 v19, v3

    move-object/from16 p1, v6

    move-object/from16 v20, v7

    :goto_50
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p1

    move/from16 v3, v19

    move-object/from16 v7, v20

    goto/16 :goto_4a

    :cond_80
    move/from16 v19, v3

    move-object/from16 v20, v7

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/lit8 v8, v19, 0x1

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:I

    invoke-static {v9, v3, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->a(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v3

    aput-object v3, v7, v8

    move v3, v8

    move-object/from16 v7, v20

    goto/16 :goto_49

    :cond_81
    move-object/from16 v20, v7

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->j:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->e:I

    invoke-static {v6, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->a(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v2

    const/16 v29, 0x0

    aput-object v2, v3, v29

    aget-object v2, v20, v29

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    const/4 v15, -0x1

    if-eq v2, v15, :cond_83

    new-array v2, v4, [I

    new-array v3, v4, [D

    const/4 v13, 0x2

    new-array v5, v13, [I

    const/16 v30, 0x1

    aput v13, v5, v30

    aput v4, v5, v29

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v15, 0x0

    :goto_51
    if-ge v15, v4, :cond_82

    aget-object v5, v20, v15

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->k:I

    aput v6, v2, v15

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->d:F

    float-to-double v6, v6

    aput-wide v6, v3, v15

    aget-object v6, v1, v15

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    float-to-double v7, v7

    const/16 v29, 0x0

    aput-wide v7, v6, v29

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    float-to-double v7, v5

    const/16 v30, 0x1

    aput-wide v7, v6, v30

    add-int/lit8 v15, v15, 0x1

    goto :goto_51

    :cond_82
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    invoke-direct {v4, v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->k:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    :cond_83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    if-eqz v27, :cond_89

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v5, 0x7fc00000    # Float.NaN

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->f(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-result-object v3

    if-nez v3, :cond_84

    goto :goto_52

    :cond_84
    iget v4, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->e:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_85

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->c()F

    move-result v4

    move v5, v4

    :cond_85
    iput-object v2, v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->b:Ljava/lang/String;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_86
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_87
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v3, :cond_87

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->f(Ljava/util/HashMap;)V

    goto :goto_53

    :cond_88
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->e()V

    goto :goto_54

    :cond_89
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->f:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->g:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->g:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
