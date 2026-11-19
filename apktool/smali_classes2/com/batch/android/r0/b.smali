.class public final Lcom/batch/android/r0/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/g0/c$c;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/g0/c$c;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/batch/android/g0/c;",
            "-",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->s()[F

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 116
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 118
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->s()[F

    move-result-object v5

    aget v5, v5, v2

    const/4 v6, -0x2

    invoke-direct {v4, v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 119
    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->s()[F

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v2, v5, :cond_0

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->t()I

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(I)I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 120
    :goto_1
    invoke-virtual {v4, v1, v1, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 121
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/g0/c$b;

    invoke-interface {v4}, Lcom/batch/android/g0/c$b;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/batch/android/g0/c;

    invoke-interface {p2, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/batch/android/g0/c;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$c;

    if-nez v0, :cond_0

    const-string p0, "Messaging"

    const-string p1, "Trying to apply a non-columns style"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Lcom/batch/android/g0/c$c;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->u()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->r()Lcom/batch/android/g0/d$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->c()F

    move-result v0

    invoke-static {v0}, Lcom/batch/android/k0/a;->a(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->r()Lcom/batch/android/g0/d$f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/d$f;->f()F

    move-result v2

    invoke-static {v2}, Lcom/batch/android/k0/a;->a(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->r()Lcom/batch/android/g0/d$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$f;->e()F

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->r()Lcom/batch/android/g0/d$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$f;->b()F

    move-result v4

    invoke-static {v4}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/batch/android/g0/c$c;->q()Lcom/batch/android/g0/d$i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/g0/d$i;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void
.end method
