.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

.field public d:Landroidx/dynamicanimation/animation/SpringForce;

.field public e:Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/PorterDuff$Mode;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/content/res/ColorStateList;

.field public p:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Landroid/graphics/drawable/RippleDrawable;

.field public w:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->q:Z

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->r:Z

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->u:Z

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->h:I

    iget v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->i:I

    iput p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->i:I

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->h:I

    iget-boolean v7, p0, Lcom/google/android/material/button/MaterialButtonHelper;->r:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->c()V

    :cond_0
    add-int/2addr v2, p1

    sub-int/2addr v2, v5

    add-int/2addr v4, p2

    sub-int/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final c()V
    .locals 12

    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->w(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->e:Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->F:Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->n(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->l:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->y(F)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->x(Landroid/content/res/ColorStateList;)V

    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->w(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    :cond_4
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    int-to-float v4, v4

    iget-boolean v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->q:Z

    if-eqz v5, :cond_6

    const v5, 0x7f040188

    invoke-static {v5, v1}, Lcom/google/android/material/color/MaterialColors;->b(ILandroid/view/View;)I

    move-result v5

    goto :goto_0

    :cond_6
    move v5, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->y(F)V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->x(Landroid/content/res/ColorStateList;)V

    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->w(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    :cond_7
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v5, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_8
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->o:Landroid/content/res/ColorStateList;

    invoke-static {v5}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v8, p0, Lcom/google/android/material/button/MaterialButtonHelper;->f:I

    iget v9, p0, Lcom/google/android/material/button/MaterialButtonHelper;->h:I

    iget v10, p0, Lcom/google/android/material/button/MaterialButtonHelper;->g:I

    iget v11, p0, Lcom/google/android/material/button/MaterialButtonHelper;->i:I

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v4, v5, v6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->w:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q(F)V

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->w(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->w(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-le v1, v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x2

    if-le v1, v3, :cond_4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->w(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    :cond_6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p0, :cond_7

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->p(Landroidx/dynamicanimation/animation/SpringForce;)V

    :cond_7
    return-void
.end method

.method public final e()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v2

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->y(F)V

    invoke-virtual {v1, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->x(Landroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->q:Z

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f040188

    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->b(ILandroid/view/View;)I

    move-result v0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->y(F)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->x(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
