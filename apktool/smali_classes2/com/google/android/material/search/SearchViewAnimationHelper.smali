.class Lcom/google/android/material/search/SearchViewAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/search/SearchView;

.field public final b:Landroid/view/View;

.field public final c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field public final d:Landroid/widget/FrameLayout;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Lcom/google/android/material/appbar/MaterialToolbar;

.field public final g:Landroidx/appcompat/widget/Toolbar;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/EditText;

.field public final k:Landroid/widget/ImageButton;

.field public final l:Landroid/view/View;

.field public final m:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field public final n:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

.field public o:Landroid/animation/AnimatorSet;

.field public p:Lcom/google/android/material/search/SearchBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->b:Landroid/view/View;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->f:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->d:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->g:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->e:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->h:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->i:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->j:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->j:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->k:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->n:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->l:Landroid/view/View;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->o:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->m:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->k:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->h:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    invoke-direct {p1, v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->n:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    return-void
.end method

.method public static a(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->m:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    iget-boolean v0, v0, Lcom/google/android/material/search/SearchView;->y:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->a(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public static h(Landroid/view/View;IIZ)Landroid/animation/AnimatorSet;
    .locals 7

    int-to-float p1, p1

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    const/4 v3, 0x0

    aput v3, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v6, Lcom/google/android/material/internal/a;

    invoke-direct {v6, v2}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v5, v6, v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float p2, p2

    new-array v4, v0, [F

    aput p2, v4, v2

    aput v3, v4, p1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v2

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0xfa

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {p3, p1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/animation/AnimatorSet;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    iget-boolean v2, v2, Lcom/google/android/material/search/SearchView;->x:Z

    if-eqz v2, :cond_4

    instance-of v2, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lft;

    const/4 v8, 0x7

    invoke-direct {v7, v2, v8}, Lft;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v6, v2, v3

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    instance-of v2, v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v6, Lft;

    const/16 v7, 0x8

    invoke-direct {v6, v1, v7}, Lft;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-array p0, v5, [F

    fill-array-data p0, :array_2

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v1, Lft;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Lft;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :cond_4
    instance-of p0, v1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_5

    move-object p0, v1

    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    :cond_5
    instance-of p0, v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_6

    check-cast v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {v1, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->a(F)V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c(Z)Landroid/animation/AnimatorSet;
    .locals 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-static {v7}, Lcom/google/android/material/internal/ToolbarUtils;->b(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->j(Landroid/view/View;Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    new-array v8, v3, [F

    aput v7, v8, v5

    aput v6, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v4, [Landroid/view/View;

    aput-object v2, v8, v5

    new-instance v9, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v10, Lcom/google/android/material/internal/a;

    invoke-direct {v10, v5}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->f()I

    move-result v8

    int-to-float v8, v8

    new-array v9, v3, [F

    aput v8, v9, v5

    aput v6, v9, v4

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-array v9, v4, [Landroid/view/View;

    aput-object v2, v9, v5

    invoke-static {v9}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v7, v2, v5

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->a(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-static {v2}, Lcom/google/android/material/internal/ToolbarUtils;->a(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->j(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    new-array v7, v3, [F

    aput v2, v7, v5

    aput v6, v7, v4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v7, v4, [Landroid/view/View;

    aput-object v1, v7, v5

    new-instance v8, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v9, Lcom/google/android/material/internal/a;

    invoke-direct {v9, v5}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v8, v9, v7}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->f()I

    move-result p0

    int-to-float p0, p0

    new-array v7, v3, [F

    aput p0, v7, v5

    aput v6, v7, v4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v6, v4, [Landroid/view/View;

    aput-object v1, v6, v5

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object v2, v1, v5

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    if-eqz p1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0xfa

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public final d(Z)Landroid/animation/AnimatorSet;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->o:Landroid/animation/AnimatorSet;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->b(Landroid/animation/AnimatorSet;)V

    if-eqz v1, :cond_1

    const-wide/16 v11, 0x12c

    goto :goto_0

    :cond_1
    const-wide/16 v11, 0xfa

    :goto_0
    invoke-virtual {v3, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v11, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {v1, v11}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->c(Z)Landroid/animation/AnimatorSet;

    move-result-object v11

    new-array v12, v5, [Landroid/animation/Animator;

    aput-object v3, v12, v6

    aput-object v11, v12, v4

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    if-eqz v1, :cond_2

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->a:Landroid/view/animation/LinearInterpolator;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    :goto_2
    new-array v11, v5, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    if-eqz v1, :cond_3

    const-wide/16 v12, 0x12c

    goto :goto_3

    :cond_3
    const-wide/16 v12, 0xfa

    :goto_3
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    const-wide/16 v14, 0x64

    goto :goto_4

    :cond_4
    const-wide/16 v14, 0x0

    :goto_4
    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-static {v1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->b:Landroid/view/View;

    filled-new-array {v3}, [Landroid/view/View;

    move-result-object v3

    new-instance v14, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v15, Lcom/google/android/material/internal/a;

    const/4 v7, 0x3

    invoke-direct {v15, v7}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v14, v15, v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v11, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->n:Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    iget-object v8, v3, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->j:Landroid/graphics/Rect;

    iget-object v14, v3, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->k:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_5
    iget-object v9, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    if-eqz v14, :cond_6

    goto :goto_6

    :cond_6
    iget-object v10, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-static {v9, v10}, Lcom/google/android/material/internal/ViewUtils;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v14

    :goto_6
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v12}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v12

    invoke-virtual {v9}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadii()[F

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->b()[F

    move-result-object v3

    aget v13, v9, v6

    move/from16 v18, v6

    aget v6, v3, v18

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aget v13, v9, v4

    move/from16 v19, v7

    aget v7, v3, v4

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aget v13, v9, v5

    move/from16 v20, v4

    aget v4, v3, v5

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aget v13, v9, v19

    move/from16 v21, v5

    aget v5, v3, v19

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/16 v22, 0x4

    aget v13, v9, v22

    move-object/from16 v23, v3

    aget v3, v23, v22

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/16 v24, 0x5

    aget v13, v9, v24

    move/from16 v25, v3

    aget v3, v23, v24

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/16 v26, 0x6

    aget v13, v9, v26

    move/from16 v27, v3

    aget v3, v23, v26

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v13, 0x7

    aget v9, v9, v13

    move/from16 v28, v13

    aget v13, v23, v28

    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/16 v13, 0x8

    move/from16 v23, v3

    new-array v3, v13, [F

    aput v6, v3, v18

    aput v7, v3, v20

    aput v4, v3, v21

    aput v5, v3, v19

    aput v25, v3, v22

    aput v27, v3, v24

    aput v23, v3, v26

    aput v9, v3, v28

    new-instance v4, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v4, v10}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v14, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/google/android/material/search/c;

    invoke-direct {v5, v0, v12, v3, v10}, Lcom/google/android/material/search/c;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;F[FLandroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v1, :cond_7

    const-wide/16 v5, 0x12c

    goto :goto_7

    :cond_7
    const-wide/16 v5, 0xfa

    :goto_7
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {v1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v5, v21

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    if-eqz v1, :cond_8

    const-wide/16 v6, 0x32

    goto :goto_8

    :cond_8
    const-wide/16 v6, 0x2a

    :goto_8
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_9

    const-wide/16 v6, 0xfa

    goto :goto_9

    :cond_9
    const-wide/16 v6, 0x0

    :goto_9
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->a:Landroid/view/animation/LinearInterpolator;

    invoke-static {v1, v6}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v7, v20

    new-array v8, v7, [Landroid/view/View;

    iget-object v7, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->k:Landroid/widget/ImageButton;

    aput-object v7, v8, v18

    new-instance v7, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v9, Lcom/google/android/material/internal/a;

    move/from16 v10, v19

    invoke-direct {v9, v10}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v7, v9, v8}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_2

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-eqz v1, :cond_a

    const-wide/16 v9, 0x96

    goto :goto_a

    :cond_a
    const-wide/16 v9, 0x53

    :goto_a
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    const-wide/16 v9, 0x4b

    goto :goto_b

    :cond_b
    const-wide/16 v9, 0x0

    :goto_b
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-static {v1, v6}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v9, 0x2

    new-array v10, v9, [Landroid/view/View;

    iget-object v9, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->l:Landroid/view/View;

    aput-object v9, v10, v18

    iget-object v12, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->m:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    const/16 v20, 0x1

    aput-object v12, v10, v20

    new-instance v14, Lcom/google/android/material/internal/MultiViewUpdateListener;

    move/from16 v16, v13

    new-instance v13, Lcom/google/android/material/internal/a;

    move-object/from16 v17, v4

    const/4 v4, 0x3

    invoke-direct {v13, v4}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v14, v13, v10}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v8, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v10, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v4, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    const/4 v10, 0x2

    new-array v13, v10, [F

    aput v4, v13, v18

    const/4 v4, 0x0

    const/16 v20, 0x1

    aput v4, v13, v20

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz v1, :cond_c

    const-wide/16 v13, 0x12c

    goto :goto_c

    :cond_c
    const-wide/16 v13, 0xfa

    :goto_c
    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v9}, [Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_3

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    if-eqz v1, :cond_d

    const-wide/16 v13, 0x12c

    goto :goto_d

    :cond_d
    const-wide/16 v13, 0xfa

    :goto_d
    invoke-virtual {v9, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x1

    new-array v13, v10, [Landroid/view/View;

    aput-object v12, v13, v18

    new-instance v12, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v14, Lcom/google/android/material/internal/a;

    move/from16 v20, v10

    const/4 v10, 0x2

    invoke-direct {v14, v10}, Lcom/google/android/material/internal/a;-><init>(I)V

    invoke-direct {v12, v14, v13}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    invoke-virtual {v9, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v12, 0x3

    new-array v13, v12, [Landroid/animation/Animator;

    aput-object v8, v13, v18

    aput-object v4, v13, v20

    aput-object v9, v13, v10

    invoke-virtual {v7, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/search/SearchViewAnimationHelper;->e(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->f()I

    move-result v9

    invoke-static {v4, v8, v9, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->h(Landroid/view/View;IIZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v8}, Lcom/google/android/material/search/SearchViewAnimationHelper;->e(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->f()I

    move-result v12

    invoke-static {v8, v9, v12, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->h(Landroid/view/View;IIZ)Landroid/animation/AnimatorSet;

    move-result-object v9

    new-array v12, v10, [F

    fill-array-data v12, :array_4

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    if-eqz v1, :cond_e

    const-wide/16 v12, 0x12c

    goto :goto_e

    :cond_e
    const-wide/16 v12, 0xfa

    :goto_e
    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {v1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v3, v15, Lcom/google/android/material/search/SearchView;->y:Z

    if-eqz v3, :cond_f

    invoke-static {v8}, Lcom/google/android/material/internal/ToolbarUtils;->a(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v3

    iget-object v8, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-static {v8}, Lcom/google/android/material/internal/ToolbarUtils;->a(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v8

    new-instance v12, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    invoke-direct {v12, v3, v8}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v10, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_f
    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->i(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v8

    iget-object v12, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v12, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->i(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v14, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    if-eqz v14, :cond_10

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v15}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_10
    move-object/from16 v23, v3

    goto :goto_f

    :cond_11
    const/4 v14, 0x2

    new-array v15, v14, [F

    fill-array-data v15, :array_5

    invoke-static {v15}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v15, Lcom/google/android/material/search/d;

    invoke-direct {v15, v0}, Lcom/google/android/material/search/d;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v23, v3

    const/4 v15, 0x1

    new-array v3, v15, [Landroid/animation/Animator;

    aput-object v14, v3, v18

    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_f
    iget-object v3, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    if-eqz v3, :cond_12

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v14, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v14}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    move-object/from16 v25, v4

    goto :goto_10

    :cond_13
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v25, v4

    move/from16 v4, v18

    invoke-direct {v3, v4, v4, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v14, v0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v14}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v15

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v15, Lcom/google/android/material/search/b;

    invoke-direct {v15, v0, v3}, Lcom/google/android/material/search/b;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/graphics/Rect;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v15, 0x1

    new-array v3, v15, [Landroid/animation/Animator;

    aput-object v14, v3, v4

    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_10
    if-eqz v1, :cond_14

    const-wide/16 v3, 0x12c

    goto :goto_11

    :cond_14
    const-wide/16 v3, 0xfa

    :goto_11
    invoke-virtual {v13, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {v1, v6}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0xa

    new-array v3, v3, [Landroid/animation/Animator;

    const/16 v18, 0x0

    aput-object v11, v3, v18

    const/16 v20, 0x1

    aput-object v17, v3, v20

    const/16 v21, 0x2

    aput-object v5, v3, v21

    const/16 v19, 0x3

    aput-object v7, v3, v19

    aput-object v25, v3, v22

    aput-object v9, v3, v24

    aput-object v10, v3, v26

    aput-object v8, v3, v28

    aput-object v12, v3, v16

    const/16 v4, 0x9

    aput-object v13, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/google/android/material/search/SearchViewAnimationHelper$5;

    invoke-direct {v3, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final e(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->k(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sub-int/2addr v0, p1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public final f()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v1, v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v2

    sub-int/2addr p0, v0

    return p0
.end method

.method public final g(Z)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput v5, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-array v5, v2, [Landroid/view/View;

    aput-object v1, v5, v4

    invoke-static {v5}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->b(Landroid/animation/AnimatorSet;)V

    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->a(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x12c

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public final i(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getPlaceholderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->k(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->f()I

    move-result p0

    invoke-static {p1, v0, p0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->h(Landroid/view/View;IIZ)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final j(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->k(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    sub-int/2addr v1, p0

    return v1

    :cond_0
    sub-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->k(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->k(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final k(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq p1, v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final l()Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->p:Lcom/google/android/material/search/SearchBar;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->a:Lcom/google/android/material/search/SearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->f()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->d(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/search/SearchView;->f()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->g(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method
