.class public Lcom/batch/android/j0/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/j0/f$c;,
        Lcom/batch/android/j0/f$b;
    }
.end annotation


# static fields
.field private static final n:I = 0x5dc

.field private static final o:F = 0.5f


# instance fields
.field private a:Z

.field private b:Landroid/view/GestureDetector;

.field private c:Lcom/batch/android/j0/f$b;

.field private d:Lcom/batch/android/j0/f$c;

.field private e:Landroid/widget/ScrollView;

.field private f:Z

.field private g:F

.field private h:F

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/batch/android/j0/f;->g:F

    iput p1, p0, Lcom/batch/android/j0/f;->h:F

    invoke-virtual {p0}, Lcom/batch/android/j0/f;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/batch/android/j0/f;->g:F

    .line 14
    iput p1, p0, Lcom/batch/android/j0/f;->h:F

    .line 15
    invoke-virtual {p0}, Lcom/batch/android/j0/f;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/batch/android/j0/f;->g:F

    .line 18
    iput p1, p0, Lcom/batch/android/j0/f;->h:F

    .line 19
    invoke-virtual {p0}, Lcom/batch/android/j0/f;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/j0/f;)Lcom/batch/android/j0/f$c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/batch/android/j0/f;->d:Lcom/batch/android/j0/f$c;

    return-object p0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/j0/f;->i:Ljava/lang/Object;

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, p0, Lcom/batch/android/j0/f;->i:Ljava/lang/Object;

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/batch/android/j0/f;->a:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()V

    iput-object v2, p0, Lcom/batch/android/j0/f;->i:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private a(F)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/batch/android/j0/f;->g:F

    .line 33
    invoke-direct {p0}, Lcom/batch/android/j0/f;->a()V

    return-void
.end method

.method private a(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/batch/android/j0/f;->m:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d()V
    .locals 4

    iget-boolean v0, p0, Lcom/batch/android/j0/f;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->a(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->b(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->n:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, p0, v3, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->u:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->h()V

    iput-object v2, p0, Lcom/batch/android/j0/f;->i:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/j0/f;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/batch/android/j0/f;->k:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v1, p0, Lcom/batch/android/j0/f;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-direct {p0}, Lcom/batch/android/j0/f;->a()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/batch/android/j0/f;->c:Lcom/batch/android/j0/f$b;

    sget-object v2, Lcom/batch/android/j0/f$b;->b:Lcom/batch/android/j0/f$b;

    if-ne v1, v2, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    const-string v0, "translationY"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/batch/android/j0/f;->l:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/batch/android/j0/f$a;

    invoke-direct {v1, p0}, Lcom/batch/android/j0/f$a;-><init>(Lcom/batch/android/j0/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :try_start_0
    const-string p0, "android.animation.ValueAnimator"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "setDurationScale"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/batch/android/j0/f;->b:Landroid/view/GestureDetector;

    sget-object v0, Lcom/batch/android/j0/f$b;->b:Lcom/batch/android/j0/f$b;

    iput-object v0, p0, Lcom/batch/android/j0/f;->c:Lcom/batch/android/j0/f$b;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/batch/android/j0/f;->k:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/batch/android/j0/f;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/j0/f;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/batch/android/j0/f;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/batch/android/j0/f;->d:Lcom/batch/android/j0/f$c;

    :try_start_0
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->m:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget v1, Landroidx/dynamicanimation/animation/SpringAnimation;->x:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/j0/f;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-boolean v0, p0, Lcom/batch/android/j0/f;->a:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget-object p2, p0, Lcom/batch/android/j0/f;->c:Lcom/batch/android/j0/f$b;

    sget-object p3, Lcom/batch/android/j0/f$b;->b:Lcom/batch/android/j0/f$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_0

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/batch/android/j0/f$b;->c:Lcom/batch/android/j0/f$b;

    if-ne p2, v2, :cond_2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    if-ne p2, p3, :cond_3

    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p4, p1

    :cond_3
    const p1, 0x44bb8000    # 1500.0f

    cmpl-float p1, p4, p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/batch/android/j0/f;->b()V

    :cond_4
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/batch/android/j0/f;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/batch/android/j0/f;->h:F

    :cond_3
    iget-boolean v0, p0, Lcom/batch/android/j0/f;->j:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/batch/android/j0/f;->e:Landroid/widget/ScrollView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/batch/android/j0/f;->h:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/batch/android/j0/f;->e:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    cmpg-float v3, v0, v4

    if-gez v3, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    iget-object v3, p0, Lcom/batch/android/j0/f;->e:Landroid/widget/ScrollView;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/batch/android/j0/f;->h:F

    invoke-direct {p0, p1, v0}, Lcom/batch/android/j0/f;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/batch/android/j0/f;->h:F

    invoke-direct {p0, p1}, Lcom/batch/android/j0/f;->a(F)V

    return v1

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcom/batch/android/j0/f;->j:Z

    return v2
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/batch/android/j0/f;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/batch/android/j0/f;->j:Z

    invoke-direct {p0}, Lcom/batch/android/j0/f;->d()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-boolean v2, p0, Lcom/batch/android/j0/f;->j:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/batch/android/j0/f;->g:F

    invoke-direct {p0, v0, v2}, Lcom/batch/android/j0/f;->a(FF)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/batch/android/j0/f;->j:Z

    iget v2, p0, Lcom/batch/android/j0/f;->g:F

    cmpg-float v0, v0, v2

    iget v3, p0, Lcom/batch/android/j0/f;->m:I

    if-gez v0, :cond_4

    int-to-float v0, v3

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/batch/android/j0/f;->g:F

    goto :goto_0

    :cond_4
    int-to-float v0, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/batch/android/j0/f;->g:F

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/batch/android/j0/f;->g:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/batch/android/j0/f;->c:Lcom/batch/android/j0/f$b;

    sget-object v4, Lcom/batch/android/j0/f$b;->c:Lcom/batch/android/j0/f$b;

    if-ne v3, v4, :cond_6

    cmpg-float v4, v0, v2

    if-ltz v4, :cond_7

    :cond_6
    sget-object v4, Lcom/batch/android/j0/f$b;->b:Lcom/batch/android/j0/f$b;

    if-ne v3, v4, :cond_8

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    :cond_7
    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    :cond_8
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_9
    iput-boolean v2, p0, Lcom/batch/android/j0/f;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v2, p0, Lcom/batch/android/j0/f;->c:Lcom/batch/android/j0/f$b;

    sget-object v3, Lcom/batch/android/j0/f$b;->b:Lcom/batch/android/j0/f$b;

    if-ne v2, v3, :cond_a

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/batch/android/j0/f;->b()V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/batch/android/j0/f;->d()V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/batch/android/j0/f;->a(F)V

    :goto_1
    iget-object p0, p0, Lcom/batch/android/j0/f;->b:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public setDismissDirection(Lcom/batch/android/j0/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/j0/f;->c:Lcom/batch/android/j0/f$b;

    return-void
.end method

.method public setDismissListener(Lcom/batch/android/j0/f$c;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/j0/f;->d:Lcom/batch/android/j0/f$c;

    return-void
.end method

.method public setNestedScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/j0/f;->e:Landroid/widget/ScrollView;

    return-void
.end method

.method public setPannable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/batch/android/j0/f;->f:Z

    return-void
.end method
