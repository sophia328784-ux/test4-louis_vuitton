.class public final Lcom/batch/android/r0/a;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/r0/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/g0/c;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$a;

    if-nez v0, :cond_0

    const-string p0, "Messaging"

    const-string p1, "Trying to apply a non-button style"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    move-object v2, p1

    check-cast v2, Lcom/batch/android/g0/c$a;

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->F()Lcom/batch/android/g0/d$b;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/batch/android/g0/d$b;->a(Landroid/content/Context;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->y()Lcom/batch/android/g0/d$h;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->z()Lcom/batch/android/g0/d$a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/batch/android/g0/d$a;->d()I

    move-result v4

    invoke-virtual {v3}, Lcom/batch/android/g0/d$a;->c()Lcom/batch/android/g0/d$h;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setAllCaps(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->I()Lcom/batch/android/g0/d$g;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->I()Lcom/batch/android/g0/d$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$g;->c()Lcom/batch/android/g0/d$g$b;

    move-result-object v3

    sget-object v4, Lcom/batch/android/r0/a$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    const/4 v5, -0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/batch/android/p0/c$a;

    invoke-direct {v3, v5, v5}, Lcom/batch/android/p0/c$a;-><init>(II)V

    invoke-virtual {v3}, Lcom/batch/android/p0/c$a;->a()Lcom/batch/android/p0/b$a;

    move-result-object v4

    invoke-virtual {v1}, Lcom/batch/android/g0/d$g;->b()F

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    iput v1, v4, Lcom/batch/android/p0/b$a;->a:F

    :goto_1
    move-object v1, v3

    goto :goto_2

    :cond_5
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/batch/android/g0/d$g;->b()F

    move-result v1

    invoke-static {v1}, Lcom/batch/android/k0/a;->a(F)I

    move-result v1

    invoke-direct {v3, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :goto_2
    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->C()Lcom/batch/android/g0/d$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$f;->c()F

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->C()Lcom/batch/android/g0/d$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$f;->f()F

    move-result v4

    invoke-static {v4}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->C()Lcom/batch/android/g0/d$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/d$f;->e()F

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->C()Lcom/batch/android/g0/d$f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/batch/android/g0/d$f;->b()F

    move-result v6

    invoke-static {v6}, Lcom/batch/android/k0/a;->a(F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->E()Lcom/batch/android/g0/d$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$f;->c()F

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->E()Lcom/batch/android/g0/d$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$f;->f()F

    move-result v4

    invoke-static {v4}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->E()Lcom/batch/android/g0/d$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/d$f;->e()F

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->E()Lcom/batch/android/g0/d$f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/batch/android/g0/d$f;->b()F

    move-result v6

    invoke-static {v6}, Lcom/batch/android/k0/a;->a(F)I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->G()Lcom/batch/android/g0/d$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/g0/d$e;->c()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "#80FFFFFF"

    invoke-static {v1}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {v3, v1, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->H()Lcom/batch/android/g0/d$h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->D()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2}, Lcom/batch/android/g0/c$a;->D()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_7
    sget-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    check-cast p1, Lcom/batch/android/g0/c$f;

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/g0/c$f$a;->a(Landroid/widget/TextView;Lcom/batch/android/g0/c$f;)V

    return-void
.end method
