.class public Lcom/batch/android/n0/d;
.super Lcom/batch/android/p0/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/s0/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/n0/d$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field private static final B:J = 0x0L

.field private static final z:D = 0.4


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/batch/android/s0/a;

.field private g:Lcom/batch/android/s0/a;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/batch/android/messaging/view/a;

.field private k:Landroid/view/TextureView;

.field private l:Lcom/batch/android/q0/c;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ProgressBar;

.field private o:Lcom/batch/android/h0/g;

.field private p:Lcom/batch/android/a0/d;

.field private q:Z

.field private r:Lcom/batch/android/z/a$d;

.field private s:Lcom/batch/android/n0/d$a;

.field private t:Landroid/view/TextureView$SurfaceTextureListener;

.field private u:Landroid/graphics/Point;

.field private v:I

.field private w:I

.field private x:I

.field private y:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h0/g;Lcom/batch/android/a0/d;Lcom/batch/android/z/a$d;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/batch/android/p0/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/n0/d;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/n0/d;->c:Z

    iput v1, p0, Lcom/batch/android/n0/d;->v:I

    iput v1, p0, Lcom/batch/android/n0/d;->w:I

    iput v1, p0, Lcom/batch/android/n0/d;->x:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/batch/android/n0/d;->y:J

    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_root_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    iput-object p1, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iput-boolean p5, p0, Lcom/batch/android/n0/d;->q:Z

    iput-object p3, p0, Lcom/batch/android/n0/d;->p:Lcom/batch/android/a0/d;

    iput-object p4, p0, Lcom/batch/android/n0/d;->r:Lcom/batch/android/z/a$d;

    invoke-virtual {p0, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/n0/d;->u:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/batch/android/n0/d;->b()V

    invoke-static {p0}, Lcom/batch/android/e/f0;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/util/Pair;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/batch/android/a0/b;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/batch/android/a0/b;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p1

    instance-of v1, v0, Lcom/batch/android/s0/c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/batch/android/s0/c;

    invoke-interface {v1, p1}, Lcom/batch/android/s0/c;->a(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/batch/android/j0/d$h;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/batch/android/j0/d$h;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/j0/d$h;Ljava/util/Map;)Lcom/batch/android/j0/d$h;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
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

    .line 62
    iget-object v0, p0, Lcom/batch/android/n0/d;->p:Lcom/batch/android/a0/d;

    iget-object p0, p0, Lcom/batch/android/n0/d;->u:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(ILcom/batch/android/f0/b;Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p3, p0, Lcom/batch/android/n0/d;->s:Lcom/batch/android/n0/d$a;

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/batch/android/n0/d;->d()Z

    move-result p3

    if-nez p3, :cond_0

    .line 53
    iget-object p0, p0, Lcom/batch/android/n0/d;->s:Lcom/batch/android/n0/d$a;

    invoke-interface {p0, p1, p2}, Lcom/batch/android/n0/d$a;->a(ILcom/batch/android/f0/b;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/batch/android/n0/d;->s:Lcom/batch/android/n0/d$a;

    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0}, Lcom/batch/android/n0/d$a;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/batch/android/n0/d;ILcom/batch/android/f0/b;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/n0/d;->instrumented$0$f$--V(Lcom/batch/android/n0/d;ILcom/batch/android/f0/b;Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/batch/android/a0/b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "root"

    invoke-direct {v0, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/batch/android/n0/d;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/d;->r:Lcom/batch/android/z/a$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v0, v0, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/n0/d;->h()V

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/n0/d;->g()V

    invoke-direct {p0}, Lcom/batch/android/n0/d;->f()V

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v0, v0, Lcom/batch/android/h0/g;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/batch/android/messaging/view/a;

    iget-object v2, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/batch/android/messaging/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    sget v2, Lcom/batch/android/R$id;->com_batchsdk_messaging_close_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/batch/android/a0/b;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "close"

    invoke-direct {v0, v2, v1}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    invoke-virtual {v1, v0}, Lcom/batch/android/messaging/view/CloseButton;->a(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    new-instance v2, Lcom/batch/android/p0/c$a;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Lcom/batch/android/p0/c$a;-><init>(II)V

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-static {v1, v2, v0, v4, v3}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    new-instance v2, Lhi;

    invoke-direct {v2, p0, v4}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/batch/android/n0/d;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget v1, v1, Lcom/batch/android/h0/g;->w:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/batch/android/messaging/view/CloseButton;->setCountdownProgress(F)V

    :cond_2
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, p0, Lcom/batch/android/n0/d;->x:I

    iget-object v0, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/batch/android/n0/d;Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lcom/batch/android/n0/d;->instrumented$0$b$--V(Lcom/batch/android/n0/d;Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/n0/d;->r:Lcom/batch/android/z/a$d;

    iget-object p0, p0, Lcom/batch/android/n0/d;->l:Lcom/batch/android/q0/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/batch/android/q0/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/batch/android/o0/a;->a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/n0/d;->y:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private f()V
    .locals 12

    new-instance v0, Lcom/batch/android/a0/b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "content"

    invoke-direct {v0, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/n0/d;->h:Ljava/util/Map;

    new-instance v0, Lcom/batch/android/s0/a;

    iget-object v2, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    const-string v3, "cnt"

    invoke-direct {v0, v2, v3, p0}, Lcom/batch/android/s0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/s0/a$a;)V

    iput-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    sget v2, Lcom/batch/android/R$id;->com_batchsdk_messaging_content_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/batch/android/j0/d;->setFlexDirection(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v0, v2}, Lcom/batch/android/j0/d;->setAlignItems(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v0, v2}, Lcom/batch/android/j0/d;->setJustifyContent(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    iget-object v2, p0, Lcom/batch/android/n0/d;->h:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/batch/android/s0/a;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/batch/android/n0/d;->w:I

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v4, v4, Lcom/batch/android/h0/g;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "text"

    if-nez v4, :cond_1

    new-instance v4, Lcom/batch/android/messaging/view/styled/mep/TextView;

    iget-object v6, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/batch/android/messaging/view/styled/mep/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v6, v6, Lcom/batch/android/h0/g;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/util/Pair;

    new-instance v7, Lcom/batch/android/a0/b;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "h1"

    invoke-direct {v7, v9, v8}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v6, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v4, v4, Lcom/batch/android/h0/g;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/batch/android/messaging/view/styled/mep/TextView;

    iget-object v6, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/batch/android/messaging/view/styled/mep/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v6, v6, Lcom/batch/android/h0/g;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/util/Pair;

    new-instance v7, Lcom/batch/android/a0/b;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "h2"

    invoke-direct {v7, v9, v8}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v6, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v4, v4, Lcom/batch/android/h0/g;->k:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/batch/android/messaging/view/styled/mep/TextView;

    iget-object v6, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/batch/android/messaging/view/styled/mep/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v6, v6, Lcom/batch/android/h0/g;->k:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/util/Pair;

    new-instance v7, Lcom/batch/android/a0/b;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "h3"

    invoke-direct {v7, v9, v8}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v6, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v4, Lcom/batch/android/a0/b;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    invoke-direct {v4, v6, v5}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/batch/android/messaging/view/styled/mep/TextView;

    iget-object v6, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/batch/android/messaging/view/styled/mep/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    invoke-virtual {v6}, Lcom/batch/android/h0/e;->d()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Lcom/batch/android/messaging/view/styled/mep/TextView;->a(Ljava/util/Map;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v6, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/batch/android/j0/d$h;

    invoke-direct {v5, v8, v8}, Lcom/batch/android/j0/d$h;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v5, Lcom/batch/android/j0/d$h;->b:F

    iget-object v8, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-static {v8, v5, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/j0/d$h;Ljava/util/Map;)Lcom/batch/android/j0/d$h;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v4, v4, Lcom/batch/android/h0/g;->l:Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/batch/android/f0/b;

    add-int/lit8 v8, v5, 0x1

    new-instance v9, Lcom/batch/android/messaging/view/styled/mep/a;

    iget-object v10, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/batch/android/messaging/view/styled/mep/a;-><init>(Landroid/content/Context;)V

    iget-object v10, v6, Lcom/batch/android/f0/b;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v9, v1}, Landroidx/appcompat/widget/AppCompatButton;->setAllCaps(Z)V

    new-instance v10, Lc81;

    invoke-direct {v10, p0, v5, v6, v2}, Lc81;-><init>(Landroid/widget/RelativeLayout;ILcom/batch/android/f0/b;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/util/Pair;

    new-instance v6, Lcom/batch/android/a0/b;

    const-string v10, "cta"

    invoke-static {v8, v10}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "btn"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v5, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lcom/batch/android/n0/d;->a(Landroid/util/Pair;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v2, v1}, Lcom/batch/android/s0/a;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    :goto_2
    iget-object v1, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v1, v1, Lcom/batch/android/h0/g;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-direct {p0, v2}, Lcom/batch/android/n0/d;->a(Landroid/util/Pair;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v4, v4, Lcom/batch/android/h0/g;->s:Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/batch/android/j0/d$h;

    iput v7, v4, Lcom/batch/android/j0/d$h;->b:F

    const/4 v5, 0x0

    iput v5, v4, Lcom/batch/android/j0/d$h;->c:F

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v7, v5

    iput v5, v4, Lcom/batch/android/j0/d$h;->e:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {v0, v2}, Lcom/batch/android/s0/a;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v0, v0, Lcom/batch/android/h0/g;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/batch/android/a0/b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ctas"

    invoke-direct {v0, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/n0/d;->i:Ljava/util/Map;

    new-instance v0, Lcom/batch/android/s0/a;

    iget-object v2, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v0, v2, v3, p0}, Lcom/batch/android/s0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/s0/a$a;)V

    iput-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v0, v0, Lcom/batch/android/h0/g;->r:Ljava/lang/Boolean;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v0, v1}, Lcom/batch/android/j0/d;->setFlexDirection(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v0, v2}, Lcom/batch/android/j0/d;->setFlexDirection(I)V

    :goto_0
    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v0, v2}, Lcom/batch/android/j0/d;->setAlignItems(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v0, v2}, Lcom/batch/android/j0/d;->setJustifyContent(I)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    iget-object v1, p0, Lcom/batch/android/n0/d;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/batch/android/s0/a;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v1, v1, Lcom/batch/android/h0/g;->n:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/n0/d;->k:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/batch/android/n0/d;->t:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/batch/android/n0/d;->k:Landroid/view/TextureView;

    new-instance v4, Lcom/batch/android/a0/b;

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "video"

    invoke-direct {v4, v5, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    new-instance v1, Lcom/batch/android/q0/c;

    iget-object v3, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/batch/android/q0/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/n0/d;->l:Lcom/batch/android/q0/c;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Lcom/batch/android/q0/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v1, v1, Lcom/batch/android/h0/g;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/n0/d;->l:Lcom/batch/android/q0/c;

    iget-object v4, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v4, v4, Lcom/batch/android/h0/g;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->l:Lcom/batch/android/q0/c;

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    new-instance v1, Landroid/util/Pair;

    iget-object v4, p0, Lcom/batch/android/n0/d;->l:Lcom/batch/android/q0/c;

    new-instance v5, Lcom/batch/android/a0/b;

    const-string v6, "image"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/batch/android/n0/d;->r:Lcom/batch/android/z/a$d;

    if-nez v1, :cond_7

    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/n0/d;->m:Landroid/view/View;

    new-instance v1, Lcom/batch/android/a0/b;

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "placeholder"

    invoke-direct {v1, v5, v4}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/batch/android/n0/d;->m:Landroid/view/View;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move v4, v2

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "loader"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "dark"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    const-string v6, "light"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_6

    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/batch/android/n0/d;->c()V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/batch/android/a0/b;

    invoke-direct {p0, v2}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v4, v3, Lcom/batch/android/s0/c;

    if-eqz v4, :cond_8

    check-cast v3, Lcom/batch/android/s0/c;

    invoke-interface {v3, v2}, Lcom/batch/android/s0/c;->a(Ljava/util/Map;)V

    goto :goto_5

    :cond_8
    invoke-static {v3, v2}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    :goto_5
    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method private i()V
    .locals 8

    iget-object v0, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    new-instance v1, Lcom/batch/android/p0/c$a;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/batch/android/p0/c$a;-><init>(II)V

    iget-object v3, p0, Lcom/batch/android/n0/d;->h:Ljava/util/Map;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    const/16 v3, 0xc

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    new-instance v6, Lcom/batch/android/p0/c$a;

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7}, Lcom/batch/android/p0/c$a;-><init>(II)V

    iget-object v7, p0, Lcom/batch/android/n0/d;->i:Ljava/util/Map;

    invoke-static {v1, v6, v7, v4, v5}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    const/4 v4, 0x2

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/batch/android/n0/d;->b:Z

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x0

    if-nez v1, :cond_5

    new-instance v1, Lcom/batch/android/p0/c$a;

    invoke-direct {v1, v2, v7}, Lcom/batch/android/p0/c$a;-><init>(II)V

    invoke-virtual {v1}, Lcom/batch/android/p0/c$a;->a()Lcom/batch/android/p0/b$a;

    move-result-object v2

    iget-object v7, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v7, v7, Lcom/batch/android/h0/g;->v:Ljava/lang/Double;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v6

    :cond_1
    iput v6, v2, Lcom/batch/android/p0/b$a;->b:F

    iget-object v2, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v2, v2, Lcom/batch/android/h0/g;->t:Ljava/lang/Boolean;

    const/16 v6, 0xa

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    :cond_3
    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/batch/android/p0/c$a;

    invoke-direct {v1, v7, v2}, Lcom/batch/android/p0/c$a;-><init>(II)V

    invoke-virtual {v1}, Lcom/batch/android/p0/c$a;->a()Lcom/batch/android/p0/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v3, v3, Lcom/batch/android/h0/g;->v:Ljava/lang/Double;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v6

    :cond_6
    iput v6, v2, Lcom/batch/android/p0/b$a;->a:F

    iget-object v2, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget-object v2, v2, Lcom/batch/android/h0/g;->u:Ljava/lang/Boolean;

    const/16 v3, 0x9

    const/16 v6, 0xb

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v5, :cond_8

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz v5, :cond_8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_8
    :goto_2
    if-eqz v5, :cond_9

    iget-object v2, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/batch/android/n0/d;->g:Lcom/batch/android/s0/a;

    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-direct {p0}, Lcom/batch/android/n0/d;->l()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private static synthetic instrumented$0$b$--V(Lcom/batch/android/n0/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/d;->a(Landroid/view/View;)V

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

.method private static synthetic instrumented$0$f$--V(Lcom/batch/android/n0/d;ILcom/batch/android/f0/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p3}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/n0/d;->a(ILcom/batch/android/f0/b;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p3}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p3}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private j()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/batch/android/h0/g;->t:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2

    :cond_0
    iget-boolean p0, p0, Lcom/batch/android/n0/d;->b:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private l()V
    .locals 5

    iget-object v0, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-direct {p0}, Lcom/batch/android/n0/d;->j()Z

    move-result v2

    iget v3, p0, Lcom/batch/android/n0/d;->w:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/batch/android/n0/d;->v:I

    add-int/2addr v3, v2

    :cond_0
    iget-object v2, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/batch/android/n0/d;->f:Lcom/batch/android/s0/a;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/batch/android/p0/c$a;

    iget v1, p0, Lcom/batch/android/n0/d;->x:I

    iget v2, p0, Lcom/batch/android/n0/d;->v:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/s0/a;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/s0/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/batch/android/a0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/batch/android/s0/a;->getSeparatorPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/batch/android/s0/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "h-sep"

    goto :goto_0

    :cond_0
    const-string p1, "sep"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/batch/android/n0/d;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/z/a$d;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    iput-object p1, p0, Lcom/batch/android/n0/d;->r:Lcom/batch/android/z/a$d;

    .line 58
    invoke-direct {p0}, Lcom/batch/android/n0/d;->c()V

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/batch/android/n0/d;->e:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/d;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/batch/android/n0/d;->m:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/batch/android/n0/d;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/o0/d;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/batch/android/n0/d;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/batch/android/n0/d;->c:Z

    invoke-direct {p0}, Lcom/batch/android/n0/d;->i()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/n0/d;->n:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/n0/d;->o:Lcom/batch/android/h0/g;

    iget v0, v0, Lcom/batch/android/h0/g;->w:I

    iget-object p0, p0, Lcom/batch/android/n0/d;->j:Lcom/batch/android/messaging/view/a;

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/messaging/view/a;->a(J)V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/batch/android/n0/d;->v:I

    invoke-direct {p0}, Lcom/batch/android/n0/d;->l()V

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/n0/d;->y:J

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/batch/android/n0/d;->b:Z

    const/4 v1, 0x1

    if-le p1, p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/batch/android/n0/d;->b:Z

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/batch/android/n0/d;->c:Z

    return-void
.end method

.method public setActionListener(Lcom/batch/android/n0/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/n0/d;->s:Lcom/batch/android/n0/d$a;

    return-void
.end method

.method public setSurfaceHolderCallback(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/n0/d;->k:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    iput-object p1, p0, Lcom/batch/android/n0/d;->t:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method
