.class public Lcom/batch/android/z/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/batch/android/j0/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/z/b$a;
    }
.end annotation


# static fields
.field private static final o:J = 0x1f4L

.field private static final p:J = 0xc8L

.field private static final q:F = 0.4f

.field private static final r:F = 2.0E-4f

.field private static final s:F = 0.6f

.field private static final t:F = 1500.0f

.field private static final u:F = 0.85f

.field private static final v:F = 0.96f

.field private static final w:F = 800.0f


# instance fields
.field private a:Lcom/batch/android/z/b$a;

.field private b:Landroid/view/GestureDetector;

.field private c:Landroid/view/View;

.field private d:Landroid/os/Vibrator;

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[Ljava/lang/Object;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/z/b;->f:F

    iput v0, p0, Lcom/batch/android/z/b;->g:F

    iput v0, p0, Lcom/batch/android/z/b;->h:F

    iput v0, p0, Lcom/batch/android/z/b;->i:F

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/batch/android/z/b;->b:Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/batch/android/z/b;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/z/b;->m:Z

    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/batch/android/z/b;->d:Landroid/os/Vibrator;

    :try_start_0
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->m:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget p1, Landroidx/dynamicanimation/animation/SpringAnimation;->x:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/batch/android/z/b;->e:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lcom/batch/android/z/b;->e:Z

    :goto_0
    iput-boolean p2, p0, Lcom/batch/android/z/b;->n:Z

    return-void
.end method

.method private a()V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/batch/android/z/b;->j:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 267
    instance-of v4, v3, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 268
    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    .line 269
    :cond_1
    iget-boolean v4, p0, Lcom/batch/android/z/b;->e:Z

    if-eqz v4, :cond_2

    instance-of v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz v4, :cond_2

    .line 270
    check-cast v3, Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/batch/android/z/b;->j:[Ljava/lang/Object;

    return-void
.end method

.method private a(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/batch/android/z/b;->m:Z

    .line 262
    iput p1, p0, Lcom/batch/android/z/b;->f:F

    .line 263
    iput p2, p0, Lcom/batch/android/z/b;->g:F

    .line 264
    invoke-direct {p0}, Lcom/batch/android/z/b;->a()V

    return-void
.end method

.method private b(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/batch/android/z/b;->l:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/batch/android/z/b;->m:Z

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/batch/android/z/b;->f()V

    return-void
.end method

.method private d()V
    .locals 8

    iget-boolean v0, p0, Lcom/batch/android/z/b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->a(F)V

    const/high16 v3, 0x44480000    # 800.0f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->b(F)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/SpringForce;->a(F)V

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->b(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->m:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v3, v6, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->n:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v3, v6, v7, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->o:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v6, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->h()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->p:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v6, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v4, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->h()V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/z/b;->j:[Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->h()V

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->h()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/z/b;->e()V

    return-void
.end method

.method private e()V
    .locals 8

    iget-object v0, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    const-string v5, "translationX"

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v5, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    new-array v6, v1, [F

    aput v5, v6, v3

    aput v4, v6, v0

    const-string v4, "translationY"

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v5, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    new-array v6, v1, [F

    aput v5, v6, v3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v6, v0

    const-string v7, "scaleX"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v7, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    new-array v1, v1, [F

    aput v7, v1, v3

    aput v5, v1, v0

    const-string v3, "scaleY"

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v3, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    filled-new-array {v2, v4, v6, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/z/b;->j:[Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .locals 3

    iget-object p0, p0, Lcom/batch/android/z/b;->d:Landroid/os/Vibrator;

    const-wide/16 v0, 0x19

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j0/b;Landroid/view/View;)V
    .locals 0

    .line 281
    invoke-interface {p1, p0}, Lcom/batch/android/j0/b;->setTouchEventDelegate(Lcom/batch/android/j0/b$a;)V

    .line 282
    iput-object p2, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/batch/android/z/b$a;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/batch/android/z/b;->a:Lcom/batch/android/z/b$a;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/batch/android/j0/b;)Z
    .locals 3

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/batch/android/z/b;->h:F

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/batch/android/z/b;->i:F

    .line 275
    :cond_2
    iget-boolean p2, p0, Lcom/batch/android/z/b;->k:Z

    if-eqz p2, :cond_3

    return v0

    .line 276
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v2, p0, Lcom/batch/android/z/b;->i:F

    invoke-direct {p0, p2, v2}, Lcom/batch/android/z/b;->b(FF)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 277
    iget p1, p0, Lcom/batch/android/z/b;->h:F

    iget p2, p0, Lcom/batch/android/z/b;->i:F

    invoke-direct {p0, p1, p2}, Lcom/batch/android/z/b;->a(FF)V

    return v0

    .line 278
    :cond_4
    iget-boolean p2, p0, Lcom/batch/android/z/b;->n:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/batch/android/z/b;->h:F

    invoke-direct {p0, p1, p2}, Lcom/batch/android/z/b;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 279
    iget p1, p0, Lcom/batch/android/z/b;->h:F

    iget p2, p0, Lcom/batch/android/z/b;->i:F

    invoke-direct {p0, p1, p2}, Lcom/batch/android/z/b;->a(FF)V

    return v0

    :cond_5
    :goto_0
    return v1

    .line 280
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/batch/android/z/b;->k:Z

    return v1
.end method

.method public a(Landroid/view/MotionEvent;Lcom/batch/android/j0/b;Z)Z
    .locals 7

    iget-boolean v0, p0, Lcom/batch/android/z/b;->k:Z

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/batch/android/j0/b;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-boolean v2, p0, Lcom/batch/android/z/b;->k:Z

    invoke-direct {p0}, Lcom/batch/android/z/b;->d()V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-boolean v5, p0, Lcom/batch/android/z/b;->k:Z

    if-nez v5, :cond_8

    iget v5, p0, Lcom/batch/android/z/b;->f:F

    invoke-direct {p0, v0, v5}, Lcom/batch/android/z/b;->b(FF)Z

    move-result v5

    iget v6, p0, Lcom/batch/android/z/b;->g:F

    invoke-direct {p0, v3, v6}, Lcom/batch/android/z/b;->b(FF)Z

    move-result v6

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    iput-boolean v1, p0, Lcom/batch/android/z/b;->k:Z

    if-eqz p3, :cond_4

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-interface {p2, p3}, Lcom/batch/android/j0/b;->a(Landroid/view/MotionEvent;)Z

    :cond_4
    if-eqz v5, :cond_6

    iget p2, p0, Lcom/batch/android/z/b;->f:F

    cmpg-float p3, v0, p2

    iget v0, p0, Lcom/batch/android/z/b;->l:I

    if-gez p3, :cond_5

    int-to-float p3, v0

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/batch/android/z/b;->f:F

    goto :goto_0

    :cond_5
    int-to-float p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/batch/android/z/b;->f:F

    :cond_6
    :goto_0
    if-eqz v6, :cond_8

    iget p2, p0, Lcom/batch/android/z/b;->g:F

    cmpg-float p3, v3, p2

    iget v0, p0, Lcom/batch/android/z/b;->l:I

    if-gez p3, :cond_7

    int-to-float p3, v0

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/batch/android/z/b;->g:F

    goto :goto_1

    :cond_7
    int-to-float p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/batch/android/z/b;->g:F

    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    iget-object p3, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget p3, p0, Lcom/batch/android/z/b;->f:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget v0, p0, Lcom/batch/android/z/b;->g:F

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    const v3, 0x3951b717    # 2.0E-4f

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    const v3, 0x3f75c28f    # 0.96f

    cmpg-float v3, v0, v3

    iget-boolean v4, p0, Lcom/batch/android/z/b;->m:Z

    if-gtz v3, :cond_a

    if-nez v4, :cond_b

    iput-boolean v1, p0, Lcom/batch/android/z/b;->m:Z

    invoke-direct {p0}, Lcom/batch/android/z/b;->c()V

    goto :goto_2

    :cond_a
    if-eqz v4, :cond_b

    iput-boolean v2, p0, Lcom/batch/android/z/b;->m:Z

    invoke-direct {p0}, Lcom/batch/android/z/b;->c()V

    :cond_b
    :goto_2
    iget-boolean v2, p0, Lcom/batch/android/z/b;->n:Z

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    mul-float/2addr p2, v3

    invoke-virtual {v2, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_c
    iget-object p2, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    mul-float/2addr p3, v3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/batch/android/z/b;->c:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_d
    iput-boolean v2, p0, Lcom/batch/android/z/b;->k:Z

    iget-boolean p2, p0, Lcom/batch/android/z/b;->m:Z

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/batch/android/z/b;->b()V

    goto :goto_3

    :cond_e
    invoke-direct {p0}, Lcom/batch/android/z/b;->d()V

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/batch/android/z/b;->a(FF)V

    :goto_3
    iget-object p0, p0, Lcom/batch/android/z/b;->b:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public b()V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/batch/android/z/b;->a:Lcom/batch/android/z/b$a;

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Lcom/batch/android/z/b$a;->e()V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x44bb8000    # 1500.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/z/b;->b()V

    :cond_0
    iget-boolean p1, p0, Lcom/batch/android/z/b;->n:Z

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/z/b;->b()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
