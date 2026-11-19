.class public final Lcom/batch/android/r0/g;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/g0/c;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$i;

    if-nez v0, :cond_0

    const-string p0, "Messaging"

    const-string p1, "Trying to apply a non-text style"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, p1

    check-cast v1, Lcom/batch/android/g0/c$i;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->u()Lcom/batch/android/g0/d$f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/d$f;->c()F

    move-result v2

    invoke-static {v2}, Lcom/batch/android/k0/a;->a(F)I

    move-result v2

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->u()Lcom/batch/android/g0/d$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$f;->f()F

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->u()Lcom/batch/android/g0/d$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$f;->e()F

    move-result v4

    invoke-static {v4}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->u()Lcom/batch/android/g0/d$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/d$f;->b()F

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->v()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->v()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->r()Lcom/batch/android/g0/d$h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->s()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    invoke-virtual {v1}, Lcom/batch/android/g0/c$i;->w()Lcom/batch/android/g0/d$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$e;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    check-cast p1, Lcom/batch/android/g0/c$f;

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/g0/c$f$a;->a(Landroid/widget/TextView;Lcom/batch/android/g0/c$f;)V

    return-void
.end method
