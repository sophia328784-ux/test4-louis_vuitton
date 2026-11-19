.class Landroidx/transition/Transition$SeekController;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/TransitionSeekController;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekController"
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final f:Landroidx/transition/VelocityTracker1D;

.field public g:Ljava/lang/Runnable;

.field public final synthetic h:Landroidx/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 5

    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition$SeekController;->a:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/transition/Transition$SeekController;->d:I

    new-instance v0, Landroidx/transition/VelocityTracker1D;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    new-array v2, v1, [J

    iput-object v2, v0, Landroidx/transition/VelocityTracker1D;->a:[J

    new-array v1, v1, [F

    iput-object v1, v0, Landroidx/transition/VelocityTracker1D;->b:[F

    iput p1, v0, Landroidx/transition/VelocityTracker1D;->c:I

    const-wide/high16 v3, -0x8000000000000000L

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->f:Landroidx/transition/VelocityTracker1D;

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    iget-wide v0, p0, Landroidx/transition/Transition;->y:J

    return-wide v0
.end method

.method public final d()V
    .locals 5

    iget-boolean v0, p0, Landroidx/transition/Transition$SeekController;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/transition/Transition$SeekController;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->g:Ljava/lang/Runnable;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->m()V

    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    iget-wide v1, p0, Landroidx/transition/Transition;->y:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->f(F)V

    return-void
.end method

.method public final h(J)V
    .locals 6

    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->a:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroidx/transition/Transition$SeekController;->b:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Landroidx/transition/Transition$SeekController;->c:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    iget-object v5, p0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    if-nez v4, :cond_1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, v5, Landroidx/transition/Transition;->y:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const-wide/16 p1, 0x1

    add-long/2addr p1, v2

    :cond_2
    :goto_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    invoke-virtual {v5, p1, p2, v0, v1}, Landroidx/transition/TransitionSet;->M(JJ)V

    iput-wide p1, p0, Landroidx/transition/Transition$SeekController;->a:J

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    long-to-float p1, p1

    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->f:Landroidx/transition/VelocityTracker1D;

    iget p2, p0, Landroidx/transition/VelocityTracker1D;->c:I

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 p2, p2, 0x14

    iput p2, p0, Landroidx/transition/VelocityTracker1D;->c:I

    iget-object v2, p0, Landroidx/transition/VelocityTracker1D;->a:[J

    aput-wide v0, v2, p2

    iget-object p0, p0, Landroidx/transition/VelocityTracker1D;->b:[F

    aput p1, p0, p2

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p0, "setCurrentPlayTimeMillis() called after animation has been started"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final isReady()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/transition/Transition$SeekController;->b:Z

    return p0
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->g:Ljava/lang/Runnable;

    iget-boolean p1, p0, Landroidx/transition/Transition$SeekController;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Landroidx/transition/Transition$SeekController;->d:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->m()V

    iget-object p0, p0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->f(F)V

    return-void
.end method

.method public final k(Landroidx/transition/Transition;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/Transition$SeekController;->c:Z

    return-void
.end method

.method public final l(F)V
    .locals 5

    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    iget-wide v1, v0, Landroidx/transition/Transition;->y:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/transition/Transition$SeekController;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/TransitionSet;->M(JJ)V

    iput-wide v1, p0, Landroidx/transition/Transition$SeekController;->a:J

    return-void
.end method

.method public final m()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/transition/Transition$SeekController;->a:J

    long-to-float v3, v3

    iget-object v4, v0, Landroidx/transition/Transition$SeekController;->f:Landroidx/transition/VelocityTracker1D;

    iget v5, v4, Landroidx/transition/VelocityTracker1D;->c:I

    iget-object v6, v4, Landroidx/transition/VelocityTracker1D;->b:[F

    iget-object v7, v4, Landroidx/transition/VelocityTracker1D;->a:[J

    const/4 v8, 0x1

    add-int/2addr v5, v8

    const/16 v9, 0x14

    rem-int/2addr v5, v9

    iput v5, v4, Landroidx/transition/VelocityTracker1D;->c:I

    aput-wide v1, v7, v5

    aput v3, v6, v5

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v1, v0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->a(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->b(F)V

    iget-object v2, v0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v1, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v10, v0, Landroidx/transition/Transition$SeekController;->a:J

    long-to-float v1, v10

    iput v1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    iput-boolean v8, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->c:Z

    iget-object v1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->l:Ljava/util/ArrayList;

    iget-boolean v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    if-nez v2, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, v4, Landroidx/transition/VelocityTracker1D;->c:I

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v3, 0x0

    if-nez v2, :cond_2

    aget-wide v12, v7, v2

    cmp-long v5, v12, v10

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    aget-wide v12, v7, v2

    const/4 v5, 0x0

    move-wide v14, v12

    :goto_0
    aget-wide v16, v7, v2

    cmp-long v18, v16, v10

    if-nez v18, :cond_3

    goto :goto_1

    :cond_3
    sub-long v10, v12, v16

    long-to-float v10, v10

    sub-long v14, v16, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v10, v10, v14

    if-gtz v10, :cond_7

    const/high16 v10, 0x42200000    # 40.0f

    cmpl-float v10, v11, v10

    if-lez v10, :cond_4

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    move v2, v9

    :cond_5
    sub-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v9, :cond_6

    goto :goto_1

    :cond_6
    move-wide/from16 v14, v16

    const-wide/high16 v10, -0x8000000000000000L

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v2, 0x2

    if-ge v5, v2, :cond_8

    goto/16 :goto_5

    :cond_8
    iget v4, v4, Landroidx/transition/VelocityTracker1D;->c:I

    const/high16 v10, 0x447a0000    # 1000.0f

    if-ne v5, v2, :cond_b

    if-nez v4, :cond_9

    const/16 v2, 0x13

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v4, -0x1

    :goto_2
    aget-wide v8, v7, v4

    aget-wide v11, v7, v2

    sub-long/2addr v8, v11

    long-to-float v5, v8

    cmpl-float v7, v5, v3

    if-nez v7, :cond_a

    goto/16 :goto_5

    :cond_a
    aget v3, v6, v4

    aget v2, v6, v2

    sub-float/2addr v3, v2

    div-float/2addr v3, v5

    mul-float/2addr v3, v10

    goto/16 :goto_5

    :cond_b
    sub-int v2, v4, v5

    add-int/lit8 v2, v2, 0x15

    rem-int/2addr v2, v9

    add-int/lit8 v4, v4, 0x15

    rem-int/2addr v4, v9

    aget-wide v11, v7, v2

    aget v5, v6, v2

    add-int/2addr v2, v8

    rem-int/lit8 v8, v2, 0x14

    move v13, v3

    :goto_3
    const/high16 v14, 0x40000000    # 2.0f

    if-eq v8, v4, :cond_e

    aget-wide v15, v7, v8

    move/from16 v17, v3

    move/from16 v18, v4

    sub-long v3, v15, v11

    long-to-float v3, v3

    cmpl-float v4, v3, v17

    if-nez v4, :cond_c

    move/from16 v19, v9

    move/from16 v20, v10

    goto :goto_4

    :cond_c
    aget v4, v6, v8

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v14, v14, v19

    move/from16 v19, v9

    move/from16 v20, v10

    float-to-double v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-float v9, v9

    sub-float v5, v4, v5

    div-float/2addr v5, v3

    sub-float v3, v5, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v13

    if-ne v8, v2, :cond_d

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v5, v3

    :cond_d
    move v13, v5

    move v5, v4

    move-wide v11, v15

    :goto_4
    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v8, v8, 0x14

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v9, v19

    move/from16 v10, v20

    goto :goto_3

    :cond_e
    move/from16 v20, v10

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v14

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v2, v4

    mul-float v3, v2, v20

    :goto_5
    iput v3, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    iget-object v1, v0, Landroidx/transition/Transition$SeekController;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, v0, Landroidx/transition/Transition$SeekController;->h:Landroidx/transition/TransitionSet;

    iget-wide v2, v2, Landroidx/transition/Transition;->y:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-float v2, v2

    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->j:F

    new-instance v2, Landroidx/transition/a;

    invoke-direct {v2, v0}, Landroidx/transition/a;-><init>(Landroidx/transition/Transition$SeekController;)V

    iget-object v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    return-void

    :cond_10
    const-string v0, "Error: Update listeners must be added beforethe animation."

    invoke-static {v0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method
