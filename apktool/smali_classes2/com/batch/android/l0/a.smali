.class public abstract Lcom/batch/android/l0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j0/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/l0/a$d;,
        Lcom/batch/android/l0/a$e;
    }
.end annotation


# static fields
.field protected static final n:I = 0x12c


# instance fields
.field protected a:Landroid/content/Context;

.field protected final b:Lcom/batch/android/v0/g;

.field protected final c:Lcom/batch/android/i;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Lcom/batch/android/l0/a$d;

.field protected f:Landroid/widget/RelativeLayout;

.field protected g:Lcom/batch/android/BatchMessage;

.field protected h:Lcom/batch/android/l0/a$e;

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/lang/Object;

.field protected l:Landroid/content/BroadcastReceiver;

.field protected m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/batch/android/v0/g;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/l0/a;->i:Z

    iput-boolean v0, p0, Lcom/batch/android/l0/a;->j:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/batch/android/l0/a;->k:Ljava/lang/Object;

    new-instance v0, Lcom/batch/android/l0/a$a;

    invoke-direct {v0, p0}, Lcom/batch/android/l0/a$a;-><init>(Lcom/batch/android/l0/a;)V

    iput-object v0, p0, Lcom/batch/android/l0/a;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/batch/android/l0/a;->m:Landroid/os/Handler;

    iput-object p4, p0, Lcom/batch/android/l0/a;->g:Lcom/batch/android/BatchMessage;

    iput-object p2, p0, Lcom/batch/android/l0/a;->b:Lcom/batch/android/v0/g;

    iput-object p3, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    const/4 p2, 0x0

    if-eqz p5, :cond_1

    instance-of p3, p1, Landroid/widget/FrameLayout;

    if-eqz p3, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/batch/android/l0/a;->d:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const-string p0, "Banners cannot be embedded in views that are not FrameLayouts"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/batch/android/l0/a;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/l0/a;->d:Landroid/view/ViewGroup;

    :goto_0
    iget-object p1, p0, Lcom/batch/android/l0/a;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    new-instance p1, Lcom/batch/android/l0/a$d;

    iget-object p2, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/batch/android/l0/a$d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    return-void

    :cond_2
    const-string p0, "Could not find any suitable view to attach the banner to"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic a(Lcom/batch/android/l0/a;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/batch/android/l0/a;->j()V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/l0/a;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/batch/android/l0/a;->c(Z)V

    return-void
.end method

.method private synthetic c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/batch/android/l0/a;->a(Z)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    const/4 p0, 0x0

    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_4

    .line 62
    invoke-static {p1}, Lcom/batch/android/e/f0;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    .line 64
    :cond_0
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_1

    .line 66
    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1

    .line 67
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 69
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object p1, p0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public a(Lcom/batch/android/j0/f;)V
    .locals 0

    .line 70
    iget-boolean p1, p0, Lcom/batch/android/l0/a;->i:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/batch/android/l0/a;->a(Z)V

    .line 72
    iget-object p0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/batch/android/l0/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/l0/a;->i:Z

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->m()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/batch/android/l0/a$c;

    invoke-direct {v0, p0}, Lcom/batch/android/l0/a$c;-><init>(Lcom/batch/android/l0/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/l0/a;->j()V

    :goto_0
    iget-object p1, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/l0/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/BroadcastReceiver;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/l0/a;->m:Landroid/os/Handler;

    new-instance v1, Lac;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Lac;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract c()Z
.end method

.method public abstract d()Lcom/batch/android/l0/a$e;
.end method

.method public abstract e()Landroid/widget/ScrollView;
.end method

.method public f()I
    .locals 1

    iget-object p0, p0, Lcom/batch/android/l0/a;->h:Lcom/batch/android/l0/a$e;

    sget-object v0, Lcom/batch/android/l0/a$e;->b:Lcom/batch/android/l0/a$e;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x30

    return p0

    :cond_0
    const/16 p0, 0x50

    return p0
.end method

.method public abstract g()Landroid/widget/RelativeLayout;
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->g()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->d()Lcom/batch/android/l0/a$e;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/l0/a;->h:Lcom/batch/android/l0/a$e;

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->e()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/j0/f;->setNestedScrollView(Landroid/widget/ScrollView;)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batch/android/j0/f;->setPannable(Z)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    iget-object v1, p0, Lcom/batch/android/l0/a;->h:Lcom/batch/android/l0/a$e;

    sget-object v2, Lcom/batch/android/l0/a$e;->b:Lcom/batch/android/l0/a$e;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/batch/android/j0/f$b;->b:Lcom/batch/android/j0/f$b;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/batch/android/j0/f$b;->c:Lcom/batch/android/j0/f$b;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/batch/android/j0/f;->setDismissDirection(Lcom/batch/android/j0/f$b;)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {v0, p0}, Lcom/batch/android/j0/f;->setDismissListener(Lcom/batch/android/j0/f$c;)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->f()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    iget-object p0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/l0/a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    iget-object p0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->a()V

    :cond_0
    return-void
.end method

.method public abstract k()V
.end method

.method public l()V
    .locals 4

    iget-boolean v0, p0, Lcom/batch/android/l0/a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/l0/a;->j:Z

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->f()I

    move-result v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/batch/android/l0/a;->d:Landroid/view/ViewGroup;

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/batch/android/e/f0;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/batch/android/l0/a;->h:Lcom/batch/android/l0/a$e;

    sget-object v3, Lcom/batch/android/l0/a$e;->b:Lcom/batch/android/l0/a$e;

    if-ne v1, v3, :cond_2

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :cond_2
    iput v0, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    iput v0, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->g:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    instance-of v1, v0, Lcom/batch/android/n0/a;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/batch/android/n0/a;

    invoke-virtual {v0}, Lcom/batch/android/n0/a;->h()V

    :cond_4
    iget-object v0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {v0}, Lcom/batch/android/i;->d()V

    iget-object v0, p0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/l0/a;->l:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.batch.android.messaging.DISMISS_BANNER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/batch/android/l0/a$b;

    invoke-direct {v1, p0}, Lcom/batch/android/l0/a$b;-><init>(Lcom/batch/android/l0/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->k()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/l0/a;->m:Landroid/os/Handler;

    iget-object p0, p0, Lcom/batch/android/l0/a;->k:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
