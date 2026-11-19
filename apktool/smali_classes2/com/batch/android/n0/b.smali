.class public Lcom/batch/android/n0/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/n0/b$a;,
        Lcom/batch/android/n0/b$b;
    }
.end annotation


# static fields
.field private static final n:F = 52.0f

.field private static final o:F = 20.0f

.field private static final p:F = 10.0f

.field private static final q:F = 40.0f

.field private static final r:I = 0x1f4


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/batch/android/h0/d;

.field private final c:Lcom/batch/android/o0/a$a;

.field private final d:Lcom/batch/android/a0/d;

.field private final e:Landroid/graphics/Point;

.field private final f:Lcom/batch/android/messaging/view/a;

.field private final g:Landroid/widget/RelativeLayout;

.field private final h:Lcom/batch/android/n0/b$a;

.field private final i:Landroid/widget/ProgressBar;

.field private j:Lcom/batch/android/q0/c;

.field private k:Lcom/batch/android/n0/b$b;

.field private l:J

.field private m:Lcom/batch/android/e/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/batch/android/e/c0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h0/d;Lcom/batch/android/a0/d;Lcom/batch/android/o0/a$a;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/n0/b;->l:J

    sget v0, Lcom/batch/android/R$id;->com_batchsdk_messaging_root_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/batch/android/e/c0;

    invoke-direct {v0}, Lcom/batch/android/e/c0;-><init>()V

    iput-object v0, p0, Lcom/batch/android/n0/b;->m:Lcom/batch/android/e/c0;

    iput-object p1, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iput-object p4, p0, Lcom/batch/android/n0/b;->c:Lcom/batch/android/o0/a$a;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/batch/android/h0/d;->h:Ljava/lang/String;

    invoke-static {p3}, Lcom/batch/android/o0/b;->d(Ljava/lang/String;)Lcom/batch/android/a0/d;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/batch/android/n0/b;->d:Lcom/batch/android/a0/d;

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/n0/b;->e:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/batch/android/n0/b;->a()V

    invoke-direct {p0}, Lcom/batch/android/n0/b;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/n0/b;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/batch/android/n0/b;->a(Landroid/widget/RelativeLayout;)Lcom/batch/android/n0/b$a;

    move-result-object p3

    iput-object p3, p0, Lcom/batch/android/n0/b;->h:Lcom/batch/android/n0/b$a;

    invoke-direct {p0, p3}, Lcom/batch/android/n0/b;->b(Landroid/widget/FrameLayout;)Lcom/batch/android/q0/c;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/n0/b;->j:Lcom/batch/android/q0/c;

    invoke-direct {p0, p3}, Lcom/batch/android/n0/b;->a(Landroid/widget/FrameLayout;)Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/n0/b;->i:Landroid/widget/ProgressBar;

    invoke-direct {p0, p1, p3}, Lcom/batch/android/n0/b;->a(Landroid/widget/RelativeLayout;Landroid/view/View;)Lcom/batch/android/messaging/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/n0/b;->f:Lcom/batch/android/messaging/view/a;

    iget-object p1, p2, Lcom/batch/android/h0/d;->l:Ljava/lang/String;

    invoke-interface {p4, p1}, Lcom/batch/android/o0/a$a;->b(Ljava/lang/String;)Lcom/batch/android/z/a$d;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/batch/android/z/a;

    invoke-direct {p1, p0}, Lcom/batch/android/z/a;-><init>(Lcom/batch/android/z/a$c;)V

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p2, p2, Lcom/batch/android/h0/d;->l:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-static {p0}, Lcom/batch/android/e/f0;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)Landroid/widget/ProgressBar;
    .locals 2

    .line 182
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x1

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 p0, -0x1

    .line 185
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 186
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 187
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 188
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/widget/RelativeLayout;Landroid/view/View;)Lcom/batch/android/messaging/view/a;
    .locals 6

    new-instance v0, Lcom/batch/android/messaging/view/a;

    iget-object v1, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/messaging/view/a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/batch/android/messaging/view/CloseButton;->setShowBorder(Z)V

    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "close"

    invoke-direct {v1, v4, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/messaging/view/CloseButton;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/batch/android/messaging/view/CloseButton;->setPadding(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-boolean v4, v4, Lcom/batch/android/h0/d;->p:Z

    if-eqz v4, :cond_0

    const/16 p2, 0xa

    invoke-virtual {v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xb

    invoke-virtual {v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result p2

    invoke-virtual {v3, v2, p2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v3, v2, p2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/batch/android/n0/b;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget p2, p2, Lcom/batch/android/h0/d;->o:I

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Lcom/batch/android/messaging/view/CloseButton;->setCountdownProgress(F)V

    :cond_1
    new-instance p2, Lh81;

    invoke-direct {p2, p0, v2}, Lh81;-><init>(Lcom/batch/android/n0/b;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/widget/RelativeLayout;)Lcom/batch/android/n0/b$a;
    .locals 5

    .line 164
    new-instance v0, Lcom/batch/android/n0/b$a;

    iget-object v1, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    .line 165
    iget-object v2, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-boolean v3, v2, Lcom/batch/android/h0/d;->p:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/batch/android/h0/d;->n:Lcom/batch/android/messaging/Size2D;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/batch/android/n0/b$a;-><init>(Landroid/content/Context;Lcom/batch/android/messaging/Size2D;)V

    .line 166
    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_image_container_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 167
    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "container"

    invoke-direct {v1, v4, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 169
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    iget-object v3, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-boolean v3, v3, Lcom/batch/android/h0/d;->p:Z

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    .line 172
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1
    const/16 v3, 0xd

    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-object v1, v1, Lcom/batch/android/h0/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x101030e

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    new-instance v1, Lh81;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lh81;-><init>(Lcom/batch/android/n0/b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lcom/batch/android/a0/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/a0/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/batch/android/n0/b;->d:Lcom/batch/android/a0/d;

    iget-object p0, p0, Lcom/batch/android/n0/b;->e:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 158
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_background_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 160
    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "background"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/batch/android/n0/b;->k:Lcom/batch/android/n0/b$b;

    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0}, Lcom/batch/android/n0/b$b;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/batch/android/n0/b;Ljava/lang/Void;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/batch/android/n0/b;->a(Ljava/lang/Void;)V

    return-void
.end method

.method private a(Lcom/batch/android/z/a$d;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/batch/android/n0/b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/batch/android/n0/b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/batch/android/n0/b;->j:Lcom/batch/android/q0/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 196
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 200
    iget-object v0, p0, Lcom/batch/android/n0/b;->j:Lcom/batch/android/q0/c;

    invoke-static {v0, p1}, Lcom/batch/android/o0/a;->a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;)V

    .line 201
    iget-object p1, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-boolean p1, p1, Lcom/batch/android/h0/d;->p:Z

    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/batch/android/n0/b;->j:Lcom/batch/android/q0/c;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/batch/android/n0/b;->h:Lcom/batch/android/n0/b$a;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 205
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 206
    iget-object v1, p0, Lcom/batch/android/n0/b;->h:Lcom/batch/android/n0/b$a;

    new-instance v2, Lcom/batch/android/messaging/Size2D;

    invoke-direct {v2, v0, p1}, Lcom/batch/android/messaging/Size2D;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/batch/android/j0/c;->setTargetSize(Lcom/batch/android/messaging/Size2D;)V

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/batch/android/n0/b;->m:Lcom/batch/android/e/c0;

    new-instance v0, Lhd;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lhd;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/batch/android/e/c0;->a(Lcom/batch/android/e/c0$f;)Lcom/batch/android/e/c0;

    return-void
.end method

.method private synthetic a(Ljava/lang/Void;)V
    .locals 4

    .line 208
    iget-wide v0, p0, Lcom/batch/android/n0/b;->l:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/n0/b;->l:J

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/batch/android/n0/b;->k:Lcom/batch/android/n0/b$b;

    if-eqz p0, :cond_1

    .line 211
    invoke-interface {p0}, Lcom/batch/android/n0/b$b;->d()V

    :cond_1
    return-void
.end method

.method private b()Landroid/widget/RelativeLayout;
    .locals 3

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_container_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 44
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v2, 0x4

    .line 46
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private b(Landroid/widget/FrameLayout;)Lcom/batch/android/q0/c;
    .locals 4

    new-instance v0, Lcom/batch/android/q0/c;

    iget-object v1, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/q0/c;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "image"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/batch/android/q0/c;->a(Ljava/util/Map;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/batch/android/n0/b;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/n0/b;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/batch/android/n0/b;->instrumented$0$a$-Landroid-widget-RelativeLayout--Lcom-batch-android-n0-b$a-(Lcom/batch/android/n0/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/batch/android/n0/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/n0/b;->instrumented$0$a$-Landroid-widget-RelativeLayout-Landroid-view-View--Lcom-batch-android-messaging-view-a-(Lcom/batch/android/n0/b;Landroid/view/View;)V

    return-void
.end method

.method private e()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/n0/b;->l:J

    iget-object p0, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-wide v4, p0, Lcom/batch/android/h0/d;->j:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-wide v0, v0, Lcom/batch/android/h0/d;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/n0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Messaging"

    const-string v0, "Global tap action has been triggered, but the accidental touch prevention delay hasn\'t elapsed: rejecting tap."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/batch/android/n0/b;->k:Lcom/batch/android/n0/b$b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/batch/android/n0/b$b;->b()V

    :cond_1
    return-void
.end method

.method private static synthetic instrumented$0$a$-Landroid-widget-RelativeLayout--Lcom-batch-android-n0-b$a-(Lcom/batch/android/n0/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/b;->b(Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$0$a$-Landroid-widget-RelativeLayout-Landroid-view-View--Lcom-batch-android-messaging-view-a-(Lcom/batch/android/n0/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/b;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method


# virtual methods
.method public b(Lcom/batch/android/f0/d;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/batch/android/n0/b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/batch/android/n0/b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    iget-object p0, p0, Lcom/batch/android/n0/b;->k:Lcom/batch/android/n0/b$b;

    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0, p1}, Lcom/batch/android/n0/b$b;->a(Lcom/batch/android/f0/d;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/batch/android/z/a$d;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/batch/android/n0/b;->c:Lcom/batch/android/o0/a$a;

    invoke-interface {v0, p1}, Lcom/batch/android/o0/a$a;->a(Lcom/batch/android/z/a$d;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 4
    return-void
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/o0/d;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/n0/b;->m:Lcom/batch/android/e/c0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getPanEffectsView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/b;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public getPannableView()Lcom/batch/android/n0/b$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/b;->h:Lcom/batch/android/n0/b$a;

    return-object p0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/n0/b;->f:Lcom/batch/android/messaging/view/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget p0, p0, Lcom/batch/android/h0/d;->o:I

    if-lez p0, :cond_0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/messaging/view/a;->a(J)V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/batch/android/n0/b;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/batch/android/n0/b;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/batch/android/n0/b;->c:Lcom/batch/android/o0/a$a;

    iget-object v1, p0, Lcom/batch/android/n0/b;->b:Lcom/batch/android/h0/d;

    iget-object v1, v1, Lcom/batch/android/h0/d;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/batch/android/o0/a$a;->b(Ljava/lang/String;)Lcom/batch/android/z/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/batch/android/n0/b;->a(Lcom/batch/android/z/a$d;)V

    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/batch/android/n0/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/n0/b;->k:Lcom/batch/android/n0/b$b;

    return-void
.end method
