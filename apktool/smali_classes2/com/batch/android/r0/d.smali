.class public final Lcom/batch/android/r0/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/r0/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/ProgressBar;

.field private final b:Lcom/batch/android/p0/c;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/batch/android/r0/d;->a:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/batch/android/p0/c;

    invoke-direct {v1, p1}, Lcom/batch/android/p0/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/batch/android/p0/c$a;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lcom/batch/android/p0/c$a;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipToOutline(Z)V

    iput-object v1, p0, Lcom/batch/android/r0/d;->b:Lcom/batch/android/p0/c;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$g;Ljava/lang/Integer;)V
    .locals 4

    .line 169
    iget-object p0, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->c()Lcom/batch/android/g0/d$g$b;

    move-result-object v0

    sget-object v1, Lcom/batch/android/r0/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v3, -0x2

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    .line 171
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    .line 172
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_2

    .line 173
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 174
    :cond_2
    invoke-direct {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 175
    :cond_3
    new-instance p2, Lcom/batch/android/p0/c$a;

    invoke-direct {p2, v2, v3}, Lcom/batch/android/p0/c$a;-><init>(II)V

    .line 176
    invoke-virtual {p2}, Lcom/batch/android/p0/c$a;->a()Lcom/batch/android/p0/b$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/g0/d$g;->b()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Lcom/batch/android/p0/b$a;->b:F

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 177
    :cond_4
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/g0/d$g;->b()F

    move-result p1

    invoke-static {p1}, Lcom/batch/android/k0/a;->a(F)I

    move-result p1

    .line 179
    invoke-direct {p2, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 180
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/r0/d;Lcom/batch/android/g0/c$g;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 168
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 181
    iget-object p0, p0, Lcom/batch/android/r0/d;->a:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/batch/android/g0/c$g;Lcom/batch/android/z/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/g0/c$g;",
            "Lcom/batch/android/z/a$d<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 161
    invoke-static {p0, p1, v1, v0, v1}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/r0/d;Lcom/batch/android/g0/c$g;Ljava/lang/Integer;ILjava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    .line 162
    iget-object p0, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/g0/d$g;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    iget-object p0, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    invoke-static {p0, p2}, Lcom/batch/android/o0/a;->a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;)V

    return-void

    .line 165
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    .line 166
    iget-object p0, p0, Lcom/batch/android/r0/d;->b:Lcom/batch/android/p0/c;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    .line 167
    invoke-static {p1, p2, p0}, Lcom/batch/android/o0/a;->a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;F)V

    return-void
.end method

.method public final a(Lcom/batch/android/g0/c$g;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 183
    const-string v0, "h"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->Y(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    :goto_0
    const-string v2, "w"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/text/StringsKt;->Y(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    cmpg-float v2, v0, v1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    cmpg-float v1, p2, v1

    if-nez v1, :cond_4

    :goto_2
    const/4 p2, 0x0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Ljava/lang/Integer;)V

    return-void

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/batch/android/r0/d;->b:Lcom/batch/android/p0/c;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    mul-float/2addr v1, v0

    float-to-int p2, v1

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/batch/android/g0/c;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$g;

    if-nez v0, :cond_0

    const-string p0, "Messaging"

    const-string p1, "Trying to apply a non-image style"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/batch/android/g0/c$g;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->q()Lcom/batch/android/g0/d$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$g;->f()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->p()Lcom/batch/android/g0/c$g$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/c$g$a;->c()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/batch/android/r0/d;->b:Lcom/batch/android/p0/c;

    new-instance v4, Lcom/batch/android/p0/c$a;

    invoke-direct {v4, v1, v2}, Lcom/batch/android/p0/c$a;-><init>(II)V

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->s()Lcom/batch/android/g0/d$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/g0/d$f;->c()F

    move-result v1

    invoke-static {v1}, Lcom/batch/android/k0/a;->a(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->s()Lcom/batch/android/g0/d$f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/d$f;->f()F

    move-result v2

    invoke-static {v2}, Lcom/batch/android/k0/a;->a(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->s()Lcom/batch/android/g0/d$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/d$f;->e()F

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->s()Lcom/batch/android/g0/d$f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/batch/android/g0/d$f;->b()F

    move-result v6

    invoke-static {v6}, Lcom/batch/android/k0/a;->a(F)I

    move-result v6

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/batch/android/r0/d;->b:Lcom/batch/android/p0/c;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->t()Lcom/batch/android/g0/d$b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lcom/batch/android/g0/d$b;->a(Landroid/content/Context;)[F

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/r0/d;->a:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setImageContentDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/batch/android/r0/d;->c:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method
