.class public final synthetic Landroidx/media3/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/d;->b:I

    iput-object p1, p0, Landroidx/media3/ui/d;->c:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Landroidx/media3/ui/d;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object p0, p0, Landroidx/media3/ui/d;->c:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->v:Landroidx/media3/ui/d;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e(JLjava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->s:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->l:Landroid/view/View;

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g:Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    if-nez v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v8, v5

    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-le v5, v1, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    move v9, v2

    :goto_1
    if-ge v9, v5, :cond_3

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result v10

    add-int/2addr v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v8, :cond_7

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result p0

    add-int/2addr v3, p0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_6

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v3, v9

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v3, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7, v2, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_5
    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k:Landroid/view/View;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f:Landroid/view/ViewGroup;

    const/4 v4, 0x4

    if-eqz v3, :cond_a

    iget-boolean v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_6

    :cond_9
    move v5, v4

    :goto_6
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v0, :cond_12

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0700e9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_c

    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-eqz v6, :cond_b

    move v3, v2

    :cond_b
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    instance-of v3, v0, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v3, :cond_12

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v3, v0, Landroidx/media3/ui/DefaultTimeBar;->b:Landroid/graphics/Rect;

    iget-object v5, v0, Landroidx/media3/ui/DefaultTimeBar;->F:Landroid/animation/ValueAnimator;

    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iput-boolean v1, v0, Landroidx/media3/ui/DefaultTimeBar;->H:Z

    iput v7, v0, Landroidx/media3/ui/DefaultTimeBar;->G:F

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_e
    iget v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    if-ne v6, v1, :cond_10

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iput-boolean v2, v0, Landroidx/media3/ui/DefaultTimeBar;->H:Z

    iput v7, v0, Landroidx/media3/ui/DefaultTimeBar;->G:F

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_10
    const/4 v1, 0x3

    if-eq v6, v1, :cond_12

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iput-boolean v2, v0, Landroidx/media3/ui/DefaultTimeBar;->H:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/media3/ui/DefaultTimeBar;->G:F

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_12
    :goto_7
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-eqz v3, :cond_13

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_9

    :cond_13
    move v3, v2

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_14
    return-void

    :pswitch_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
