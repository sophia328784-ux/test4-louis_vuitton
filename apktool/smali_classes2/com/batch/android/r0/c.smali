.class public final Lcom/batch/android/r0/c;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/r0/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/g0/c;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$d;

    if-nez v0, :cond_0

    const-string p0, "Messaging"

    const-string p1, "Trying to apply a non-divider style"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/batch/android/g0/c$d;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->t()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->c()Lcom/batch/android/g0/d$g$b;

    move-result-object v0

    sget-object v1, Lcom/batch/android/r0/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, -0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->s()I

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/batch/android/p0/c$a;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->s()I

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/batch/android/p0/c$a;-><init>(II)V

    invoke-virtual {v0}, Lcom/batch/android/p0/c$a;->a()Lcom/batch/android/p0/b$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->t()Lcom/batch/android/g0/d$g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$g;->b()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, v1, Lcom/batch/android/p0/b$a;->a:F

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->t()Lcom/batch/android/g0/d$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/g0/d$g;->b()F

    move-result v1

    invoke-static {v1}, Lcom/batch/android/k0/a;->a(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->s()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->r()Lcom/batch/android/g0/d$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/g0/d$f;->c()F

    move-result v1

    invoke-static {v1}, Lcom/batch/android/k0/a;->a(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->r()Lcom/batch/android/g0/d$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$f;->f()F

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->r()Lcom/batch/android/g0/d$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$f;->e()F

    move-result v4

    invoke-static {v4}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->r()Lcom/batch/android/g0/d$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/d$f;->b()F

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    new-instance v1, Lcom/batch/android/g0/d$b;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->s()I

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(I)I

    move-result v3

    div-int/2addr v3, v2

    invoke-direct {v1, v3}, Lcom/batch/android/g0/d$b;-><init>(I)V

    invoke-virtual {v1}, Lcom/batch/android/g0/d$b;->d()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->q()Lcom/batch/android/g0/d$h;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
