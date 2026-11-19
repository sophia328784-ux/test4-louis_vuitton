.class public Lcom/batch/android/n0/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/s0/a$a;
.implements Lcom/batch/android/z/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/n0/a$a;
    }
.end annotation


# static fields
.field private static final l:I = 0x1f4

.field private static final m:I = 0x1c

.field private static final n:I = 0x96


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/batch/android/h0/c;

.field private final c:Lcom/batch/android/o0/a$a;

.field private final d:Lcom/batch/android/a0/d;

.field private final e:Landroid/graphics/Point;

.field private f:Lcom/batch/android/l0/a$e;

.field private final g:Lcom/batch/android/s0/a;

.field private h:Lcom/batch/android/j0/a;

.field private i:Lcom/batch/android/q0/c;

.field private j:Lcom/batch/android/n0/a$a;

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h0/c;Lcom/batch/android/a0/d;Lcom/batch/android/a0/b;Lcom/batch/android/o0/a$a;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/batch/android/R$id;->com_batchsdk_messaging_root_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    iput-object p1, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iput-object p5, p0, Lcom/batch/android/n0/a;->c:Lcom/batch/android/o0/a$a;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/batch/android/h0/c;->h:Ljava/lang/String;

    invoke-static {p3}, Lcom/batch/android/o0/b;->d(Ljava/lang/String;)Lcom/batch/android/a0/d;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/batch/android/n0/a;->d:Lcom/batch/android/a0/d;

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p3

    iput-object p3, p0, Lcom/batch/android/n0/a;->e:Landroid/graphics/Point;

    invoke-direct {p0, p4}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/batch/android/n0/a;->a(Ljava/util/Map;)Lcom/batch/android/l0/a$e;

    move-result-object p4

    iput-object p4, p0, Lcom/batch/android/n0/a;->f:Lcom/batch/android/l0/a$e;

    invoke-static {p0, p3}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p5, -0x1

    const/4 v0, -0x2

    invoke-direct {p4, p5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p1, p4, p3}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lcom/batch/android/a0/b;

    const/4 p4, 0x0

    new-array v1, p4, [Ljava/lang/String;

    const-string v2, "content"

    invoke-direct {p3, v2, v1}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/batch/android/n0/a;->c(Ljava/util/Map;)Lcom/batch/android/s0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/n0/a;->g:Lcom/batch/android/s0/a;

    sget v2, Lcom/batch/android/R$id;->com_batchsdk_messaging_content_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Lcom/batch/android/p0/c$a;

    invoke-direct {v2, p5, v0}, Lcom/batch/android/p0/c$a;-><init>(II)V

    const/16 p5, 0x9

    const/4 v0, 0x0

    invoke-static {p1, v2, p3, p5, v0}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p3, 0xc

    invoke-virtual {p1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p2, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    if-eqz p2, :cond_1

    new-instance p2, Lx71;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lx71;-><init>(Lcom/batch/android/n0/a;I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/batch/android/n0/a;->d()V

    invoke-direct {p0}, Lcom/batch/android/n0/a;->a()V

    invoke-direct {p0}, Lcom/batch/android/n0/a;->b()V

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

    .line 83
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 84
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/batch/android/a0/b;

    .line 85
    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p1

    .line 86
    instance-of v1, v0, Lcom/batch/android/s0/c;

    if-eqz v1, :cond_0

    .line 87
    move-object v1, v0

    check-cast v1, Lcom/batch/android/s0/c;

    invoke-interface {v1, p1}, Lcom/batch/android/s0/c;->a(Ljava/util/Map;)V

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/batch/android/j0/d$h;

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/batch/android/j0/d$h;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 90
    :goto_0
    iget-object p0, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/j0/d$h;Ljava/util/Map;)Lcom/batch/android/j0/d$h;

    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a(Ljava/util/Map;)Lcom/batch/android/l0/a$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/l0/a$e;"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "vertical-align"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 98
    const-string v0, "top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object p0, Lcom/batch/android/l0/a$e;->b:Lcom/batch/android/l0/a$e;

    return-object p0

    .line 100
    :cond_1
    const-string v0, "bottom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    sget-object p0, Lcom/batch/android/l0/a$e;->c:Lcom/batch/android/l0/a$e;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
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

    .line 102
    iget-object v0, p0, Lcom/batch/android/n0/a;->d:Lcom/batch/android/a0/d;

    iget-object p0, p0, Lcom/batch/android/n0/a;->e:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-boolean v0, v0, Lcom/batch/android/h0/c;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/n0/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget v0, v0, Lcom/batch/android/h0/c;->q:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/batch/android/messaging/view/CloseButton;

    iget-object v1, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/messaging/view/CloseButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "close"

    invoke-direct {v1, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/messaging/view/CloseButton;->a(Ljava/util/Map;)V

    sget v2, Lcom/batch/android/R$id;->com_batchsdk_messaging_close_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    new-instance v3, Lcom/batch/android/p0/c$a;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Lcom/batch/android/p0/c$a;-><init>(II)V

    iget-object v4, p0, Lcom/batch/android/n0/a;->g:Lcom/batch/android/s0/a;

    const/16 v5, 0xb

    invoke-static {v2, v3, v1, v5, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lx71;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lx71;-><init>(Lcom/batch/android/n0/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(ILcom/batch/android/f0/b;Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/batch/android/n0/a;->j:Lcom/batch/android/n0/a$a;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0, p1, p2}, Lcom/batch/android/n0/a$a;->a(ILcom/batch/android/f0/b;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/batch/android/n0/a;->j:Lcom/batch/android/n0/a$a;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/batch/android/n0/a$a;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/batch/android/n0/a;Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/batch/android/n0/a;->instrumented$0$c$-Ljava-util-Map--Lcom-batch-android-s0-a-(Lcom/batch/android/n0/a;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/batch/android/z/a$d;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 107
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    iget-object p0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    invoke-static {p0, p1}, Lcom/batch/android/o0/a;->a(Landroid/widget/ImageView;Lcom/batch/android/z/a$d;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/batch/android/s0/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/s0/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v0, v0, Lcom/batch/android/h0/c;->o:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcom/batch/android/s0/a;

    iget-object v1, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    const-string v2, "ctas"

    invoke-direct {v0, v1, v2, p0}, Lcom/batch/android/s0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/s0/a$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v2, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v2, v2, Lcom/batch/android/h0/c;->r:Lcom/batch/android/h0/c$a;

    sget-object v3, Lcom/batch/android/h0/c$a;->b:Lcom/batch/android/h0/c$a;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v5}, Lcom/batch/android/j0/d;->setFlexDirection(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/batch/android/j0/d;->setFlexDirection(I)V

    :goto_0
    invoke-virtual {v0, v4}, Lcom/batch/android/j0/d;->setAlignItems(I)V

    invoke-virtual {v0, v4}, Lcom/batch/android/j0/d;->setJustifyContent(I)V

    invoke-virtual {v0, p1}, Lcom/batch/android/s0/a;->a(Ljava/util/Map;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v2, v2, Lcom/batch/android/h0/c;->o:Ljava/util/List;

    invoke-direct {p1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/f0/b;

    new-instance v4, Lcom/batch/android/messaging/view/styled/mep/a;

    iget-object v6, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/batch/android/messaging/view/styled/mep/a;-><init>(Landroid/content/Context;)V

    iget-object v6, v3, Lcom/batch/android/f0/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatButton;->setAllCaps(Z)V

    new-instance v6, Lc81;

    invoke-direct {v6, p0, v2, v3, v1}, Lc81;-><init>(Landroid/widget/RelativeLayout;ILcom/batch/android/f0/b;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v3, v3, Lcom/batch/android/h0/c;->r:Lcom/batch/android/h0/c$a;

    sget-object v6, Lcom/batch/android/h0/c$a;->b:Lcom/batch/android/h0/c$a;

    if-ne v3, v6, :cond_2

    const-string v3, "h"

    goto :goto_2

    :cond_2
    const-string v3, "v"

    :goto_2
    const-string v7, "btn-"

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Lcom/batch/android/a0/b;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cta"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "btn"

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v7, v4, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Lcom/batch/android/n0/a;->a(Landroid/util/Pair;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v4, v4, Lcom/batch/android/h0/c;->r:Lcom/batch/android/h0/c$a;

    if-ne v4, v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/batch/android/j0/d$h;

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Lcom/batch/android/j0/d$h;->b:F

    const/4 v6, 0x0

    iput v6, v4, Lcom/batch/android/j0/d$h;->c:F

    const v6, 0x3dcccccd    # 0.1f

    iput v6, v4, Lcom/batch/android/j0/d$h;->e:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v0, v3}, Lcom/batch/android/s0/a;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/batch/android/n0/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget v0, v0, Lcom/batch/android/h0/c;->q:I

    if-lez v0, :cond_0

    .line 214
    new-instance v0, Lcom/batch/android/a0/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "countdown"

    invoke-direct {v0, v2, v1}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/batch/android/j0/a;

    iget-object v2, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/batch/android/j0/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/n0/a;->h:Lcom/batch/android/j0/a;

    .line 216
    invoke-virtual {v1, v0}, Lcom/batch/android/j0/a;->a(Ljava/util/Map;)V

    .line 217
    iget-object v1, p0, Lcom/batch/android/n0/a;->h:Lcom/batch/android/j0/a;

    sget v2, Lcom/batch/android/R$id;->com_batchsdk_messaging_countdown_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 218
    iget-object v1, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/batch/android/p0/c$a;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/batch/android/p0/c$a;-><init>(II)V

    iget-object v3, p0, Lcom/batch/android/n0/a;->g:Lcom/batch/android/s0/a;

    const/16 v4, 0x9

    invoke-static {v1, v2, v0, v4, v3}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/batch/android/n0/a;->h:Lcom/batch/android/j0/a;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/batch/android/n0/a;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/n0/a;ILcom/batch/android/f0/b;Landroid/view/View;)V
    .locals 0

    .line 212
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/n0/a;->instrumented$0$b$-Ljava-util-Map--Lcom-batch-android-s0-a-(Lcom/batch/android/n0/a;ILcom/batch/android/f0/b;Landroid/view/View;)V

    return-void
.end method

.method private c(Ljava/util/Map;)Lcom/batch/android/s0/a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/s0/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/batch/android/s0/a;

    iget-object v3, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    const-string v4, "cnt"

    invoke-direct {v2, v3, v4, p0}, Lcom/batch/android/s0/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/s0/a$a;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/batch/android/j0/d;->setFlexDirection(I)V

    invoke-virtual {v2, p1}, Lcom/batch/android/s0/a;->a(Ljava/util/Map;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->a(Ljava/util/Map;)Lcom/batch/android/l0/a$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/batch/android/n0/a;->f:Lcom/batch/android/l0/a$e;

    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Lcom/batch/android/a0/b;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "title"

    invoke-direct {v4, v6, v5}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v5, Lcom/batch/android/j0/d$h;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Lcom/batch/android/j0/d$h;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v5, Lcom/batch/android/j0/d$h;->b:F

    const/4 v9, 0x0

    iput v9, v5, Lcom/batch/android/j0/d$h;->c:F

    iget-object v10, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v10, v10, Lcom/batch/android/h0/c;->i:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "text"

    if-nez v10, :cond_1

    new-instance v10, Lcom/batch/android/messaging/view/styled/mep/TextView;

    iget-object v12, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-direct {v10, v12}, Lcom/batch/android/messaging/view/styled/mep/TextView;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v12, v12, Lcom/batch/android/h0/c;->i:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v4, Lcom/batch/android/a0/b;->c:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v10, Landroid/view/View;

    iget-object v12, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v3, v5, Lcom/batch/android/j0/d$h;->i:I

    :goto_0
    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v10, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget v4, Lcom/batch/android/R$layout;->com_batchsdk_messaging_scrollabletextview:I

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/batch/android/messaging/view/styled/mep/TextView;

    iget-object v4, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    invoke-virtual {v4}, Lcom/batch/android/h0/e;->d()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/batch/android/messaging/view/styled/mep/TextView;->a()V

    iget-object v4, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v4, v4, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    if-eqz v4, :cond_2

    new-instance v4, Lx71;

    invoke-direct {v4, p0, v3}, Lx71;-><init>(Lcom/batch/android/n0/a;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v4, Lcom/batch/android/j0/d$h;

    invoke-direct {v4, v6, v7}, Lcom/batch/android/j0/d$h;-><init>(II)V

    iput v8, v4, Lcom/batch/android/j0/d$h;->b:F

    iput v9, v4, Lcom/batch/android/j0/d$h;->c:F

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v5

    iput v5, v4, Lcom/batch/android/j0/d$h;->g:I

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    iput v1, v4, Lcom/batch/android/j0/d$h;->i:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/util/Pair;

    new-instance v4, Lcom/batch/android/a0/b;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v5

    const-string v8, "body"

    invoke-direct {v4, v8, v5}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/batch/android/n0/a;->a(Landroid/util/Pair;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/batch/android/s0/a;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/batch/android/a0/b;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ctas"

    invoke-direct {p1, v1, v0}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->b(Ljava/util/Map;)Lcom/batch/android/s0/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Lcom/batch/android/j0/d$h;

    invoke-direct {v1, v6, v7}, Lcom/batch/android/j0/d$h;-><init>(II)V

    iget-object p0, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/j0/d$h;Ljava/util/Map;)Lcom/batch/android/j0/d$h;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-object v2
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/batch/android/n0/a;->g()V

    return-void
.end method

.method public static synthetic c(Lcom/batch/android/n0/a;Landroid/view/View;)V
    .locals 0

    .line 287
    invoke-static {p0, p1}, Lcom/batch/android/n0/a;->instrumented$0$new$-Landroid-content-Context-Lcom-batch-android-h0-c-Lcom-batch-android-a0-d-Lcom-batch-android-a0-b-Lcom-batch-android-o0-a$a--V(Lcom/batch/android/n0/a;Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v0, v0, Lcom/batch/android/h0/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/batch/android/q0/c;

    iget-object v1, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/q0/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    new-instance v0, Lcom/batch/android/a0/b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "img"

    invoke-direct {v0, v3, v2}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    invoke-virtual {v2, v0}, Lcom/batch/android/q0/c;->a(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    sget v3, Lcom/batch/android/R$id;->com_batchsdk_messaging_image_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    new-instance v3, Lcom/batch/android/p0/c$a;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Lcom/batch/android/p0/c$a;-><init>(II)V

    iget-object v4, p0, Lcom/batch/android/n0/a;->g:Lcom/batch/android/s0/a;

    const/16 v5, 0xb

    invoke-static {v2, v3, v0, v5, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/Context;Lcom/batch/android/p0/c$a;Ljava/util/Map;ILandroid/view/View;)Lcom/batch/android/p0/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/n0/a;->g:Lcom/batch/android/s0/a;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    iget-object v2, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v2, v2, Lcom/batch/android/h0/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/batch/android/n0/a;->c:Lcom/batch/android/o0/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v1, v1, Lcom/batch/android/h0/c;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/batch/android/o0/a$a;->b(Ljava/lang/String;)Lcom/batch/android/z/a$d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/batch/android/z/a;

    invoke-direct {v0, p0}, Lcom/batch/android/z/a;-><init>(Lcom/batch/android/z/a$c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object p0, p0, Lcom/batch/android/h0/c;->m:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/batch/android/n0/a;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-static {p0, p1}, Lcom/batch/android/n0/a;->instrumented$0$a$--V(Lcom/batch/android/n0/a;Landroid/view/View;)V

    return-void
.end method

.method private f()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/n0/a;->k:J

    iget-object p0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-wide v4, p0, Lcom/batch/android/h0/c;->k:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-wide v0, v0, Lcom/batch/android/h0/c;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/n0/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Messaging"

    const-string v0, "Global tap action has been triggered, but the accidental touch prevention delay hasn\'t elapsed: rejecting tap."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/batch/android/n0/a;->j:Lcom/batch/android/n0/a$a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/batch/android/n0/a$a;->b()V

    :cond_1
    return-void
.end method

.method private static synthetic instrumented$0$a$--V(Lcom/batch/android/n0/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->a(Landroid/view/View;)V

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

.method private static synthetic instrumented$0$b$-Ljava-util-Map--Lcom-batch-android-s0-a-(Lcom/batch/android/n0/a;ILcom/batch/android/f0/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p3}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/n0/a;->a(ILcom/batch/android/f0/b;Landroid/view/View;)V

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

.method private static synthetic instrumented$0$c$-Ljava-util-Map--Lcom-batch-android-s0-a-(Lcom/batch/android/n0/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->b(Landroid/view/View;)V

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

.method private static synthetic instrumented$0$new$-Landroid-content-Context-Lcom-batch-android-h0-c-Lcom-batch-android-a0-d-Lcom-batch-android-a0-b-Lcom-batch-android-o0-a$a--V(Lcom/batch/android/n0/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->c(Landroid/view/View;)V

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

    .line 103
    new-instance v0, Lcom/batch/android/a0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
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

    .line 105
    invoke-direct {p0, v0}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/batch/android/f0/d;)V
    .locals 0

    .line 210
    return-void
.end method

.method public b(Lcom/batch/android/z/a$d;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/batch/android/n0/a;->c:Lcom/batch/android/o0/a$a;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p1}, Lcom/batch/android/o0/a$a;->a(Lcom/batch/android/z/a$d;)V

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 285
    return-void
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/o0/d;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getContentView()Lcom/batch/android/s0/a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/a;->g:Lcom/batch/android/s0/a;

    return-object p0
.end method

.method public getPinnedVerticalEdge()Lcom/batch/android/l0/a$e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/a;->f:Lcom/batch/android/l0/a$e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/batch/android/l0/a$e;->c:Lcom/batch/android/l0/a$e;

    return-object p0
.end method

.method public h()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/n0/a;->k:J

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/n0/a;->h:Lcom/batch/android/j0/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget p0, p0, Lcom/batch/android/h0/c;->q:I

    if-lez p0, :cond_0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/j0/a;->a(J)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/batch/android/n0/a;->i:Lcom/batch/android/q0/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/a;->c:Lcom/batch/android/o0/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/n0/a;->b:Lcom/batch/android/h0/c;

    iget-object v1, v1, Lcom/batch/android/h0/c;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/batch/android/o0/a$a;->b(Ljava/lang/String;)Lcom/batch/android/z/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/batch/android/n0/a;->a(Lcom/batch/android/z/a$d;)V

    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/batch/android/n0/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/n0/a;->j:Lcom/batch/android/n0/a$a;

    return-void
.end method
