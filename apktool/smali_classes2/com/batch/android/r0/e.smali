.class public final Lcom/batch/android/r0/e;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/batch/android/r0/e;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/g0/c;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$h;

    const-string v1, "Messaging"

    if-nez v0, :cond_0

    const-string p0, "Trying to apply a non-spacer style"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/batch/android/g0/c$h;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$h;->l()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->f()Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v0, p0, Lcom/batch/android/r0/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/batch/android/g0/c$h;->l()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$h;->l()Lcom/batch/android/g0/d$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/g0/d$g;->b()F

    move-result p1

    invoke-static {p1}, Lcom/batch/android/k0/a;->a(F)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const-string p1, "Spacer component added to a non-LinearLayout. It might not behave as expected."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
