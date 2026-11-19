.class public Lcom/sightcall/universal/internal/view/CallButtonImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

.field private static final EMPTY_ANIMATOR_SET:Landroid/animation/AnimatorSet;

.field private static final OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private animator:Landroid/animation/AnimatorSet;

.field private tint:Landroid/content/res/ColorStateList;

.field private type:Lcom/sightcall/universal/internal/view/CallButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->EMPTY_ANIMATOR_SET:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getWeightForVisibility(Z)F

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const-string v1, "weight"

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getAlphaForVisibility(Z)F

    move-result v3

    new-array v5, v2, [F

    aput v3, v5, v4

    const-string v3, "alpha"

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getTranslationYForVisibility(Z)F

    move-result v5

    new-array v6, v2, [F

    aput v5, v6, v4

    const-string v5, "translationY"

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v4

    aput-object v3, v5, v2

    const/4 v1, 0x2

    aput-object p0, v5, v1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getAlphaForVisibility(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTranslationYForVisibility(Z)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/sightcall/universal/R$dimen;->universal_call_button_bar_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz v0, :cond_2

    neg-float p0, p0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method private getWeightForVisibility(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateTintColor()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->tint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->tint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->updateTintColor()V

    :cond_0
    return-void
.end method

.method public getType()Lcom/sightcall/universal/internal/view/CallButton;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->type:Lcom/sightcall/universal/internal/view/CallButton;

    return-object p0
.end method

.method public getWeight()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setColorFilter(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->tint:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->animator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getWeightForVisibility(Z)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setWeight(F)V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getAlphaForVisibility(Z)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getTranslationYForVisibility(Z)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->createAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->animator:Landroid/animation/AnimatorSet;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->animator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    sget-object p1, Lcom/sightcall/universal/internal/view/CallButtonImageView;->EMPTY_ANIMATOR_SET:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->animator:Landroid/animation/AnimatorSet;

    :cond_4
    return-void
.end method

.method public setType(Lcom/sightcall/universal/internal/view/CallButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonImageView;->type:Lcom/sightcall/universal/internal/view/CallButton;

    iget p1, p1, Lcom/sightcall/universal/internal/view/CallButton;->drawable:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setWeight(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    :cond_0
    return-void
.end method
