.class public Lcom/sightcall/universal/ui/IndeterminateImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->bounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->bounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/sightcall/universal/ui/IndeterminateImageView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->bounds:Landroid/graphics/Rect;

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/ui/IndeterminateImageView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance p2, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_color:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->color(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;

    :cond_1
    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_padding:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->padding(F)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;

    :cond_2
    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_strokeWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_strokeWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->strokeWidth(F)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;

    :cond_3
    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_rotationDuration:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_rotationDuration:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->rotationDuration(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;

    :cond_4
    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_sweepDuration:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/sightcall/universal/R$styleable;->universal_IndeterminateImageView_indeterminate_sweepDuration:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->sweepDuration(I)Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->build()Lcom/sightcall/universal/ui/IndeterminateDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/ui/IndeterminateImageView;->setIndeterminateDrawable(Lcom/sightcall/universal/ui/IndeterminateDrawable;)V

    return-void
.end method

.method private updateIndeterminateDrawableState()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    invoke-virtual {v2}, Lcom/sightcall/universal/ui/IndeterminateDrawable;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    invoke-virtual {p0}, Lcom/sightcall/universal/ui/IndeterminateDrawable;->start()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    invoke-virtual {v2}, Lcom/sightcall/universal/ui/IndeterminateDrawable;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    invoke-virtual {p0}, Lcom/sightcall/universal/ui/IndeterminateDrawable;->stop()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getIndeterminateDrawable()Lcom/sightcall/universal/ui/IndeterminateDrawable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    return-object p0
.end method

.method public hide(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/ui/IndeterminateImageView$1;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/ui/IndeterminateImageView$1;-><init>(Lcom/sightcall/universal/ui/IndeterminateImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->updateIndeterminateDrawableState()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->updateIndeterminateDrawableState()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->bounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/ui/IndeterminateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Lcom/sightcall/universal/ui/IndeterminateDrawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/sightcall/universal/ui/IndeterminateImageView;->indeterminateDrawable:Lcom/sightcall/universal/ui/IndeterminateDrawable;

    invoke-direct {p0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->updateIndeterminateDrawableState()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->updateIndeterminateDrawableState()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
