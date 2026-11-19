.class public final Lcom/batch/android/m0/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/m0/a$a;,
        Lcom/batch/android/m0/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/batch/android/g0/a;

.field private final b:Lcom/batch/android/BatchMessage;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/batch/android/m0/a$a;

.field private final e:Lcom/batch/android/z/c;

.field private f:Lcom/batch/android/j0/a;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/r0/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/g0/a;Lcom/batch/android/BatchMessage;Ljava/util/Map;Lcom/batch/android/m0/a$a;Lcom/batch/android/z/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/g0/a;",
            "Lcom/batch/android/BatchMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d<",
            "*>;>;",
            "Lcom/batch/android/m0/a$a;",
            "Lcom/batch/android/z/c;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    iput-object p3, p0, Lcom/batch/android/m0/a;->b:Lcom/batch/android/BatchMessage;

    iput-object p4, p0, Lcom/batch/android/m0/a;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/batch/android/m0/a;->d:Lcom/batch/android/m0/a$a;

    iput-object p6, p0, Lcom/batch/android/m0/a;->e:Lcom/batch/android/z/c;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/batch/android/m0/a;->g:Ljava/util/Map;

    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/batch/android/m0/a;->h:Landroid/widget/ScrollView;

    sget p1, Lcom/batch/android/R$id;->com_batchsdk_messaging_root_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-direct {p0}, Lcom/batch/android/m0/a;->b()V

    invoke-direct {p0}, Lcom/batch/android/m0/a;->a()V

    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/m0/a;)Ljava/util/Map;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/batch/android/m0/a;->c:Ljava/util/Map;

    return-object p0
.end method

.method private final a()V
    .locals 8

    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->e()Lcom/batch/android/g0/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/g0/b;->d()Lcom/batch/android/g0/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/batch/android/messaging/view/CloseButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/batch/android/messaging/view/CloseButton;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/batch/android/R$id;->com_batchsdk_messaging_close_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/batch/android/messaging/view/CloseButton;->setSize(I)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/batch/android/messaging/view/CloseButton;->setPadding(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/batch/android/g0/b$b;->d()Lcom/batch/android/g0/d$h;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-static {v3}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphColor(I)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphPadding(I)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/batch/android/messaging/view/CloseButton;->setGlyphWidth(I)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/batch/android/g0/b$b;->c()Lcom/batch/android/g0/d$h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/batch/android/messaging/view/CloseButton;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lhi;

    const/16 v4, 0x9

    invoke-direct {v0, p0, v4}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->e()Lcom/batch/android/g0/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/batch/android/g0/b;->c()Lcom/batch/android/g0/b$a;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    new-instance v2, Lcom/batch/android/j0/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/batch/android/j0/a;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/batch/android/R$id;->com_batchsdk_messaging_countdown_progress:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/batch/android/k0/a;->a(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v6}, Lcom/batch/android/g0/a;->t()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v4, Lcom/batch/android/R$id;->com_batchsdk_messaging_scroll_view:I

    invoke-virtual {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/batch/android/g0/b$a;->c()Lcom/batch/android/g0/d$h;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/batch/android/j0/a;->setColor(I)V

    iput-object v2, p0, Lcom/batch/android/m0/a;->f:Lcom/batch/android/j0/a;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$a;Landroid/view/ViewGroup;)V
    .locals 4

    .line 256
    new-instance v0, Lcom/batch/android/r0/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/batch/android/r0/a;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0, p1}, Lcom/batch/android/r0/a;->a(Lcom/batch/android/g0/c;)V

    .line 258
    iget-object v1, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v1}, Lcom/batch/android/g0/a;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/batch/android/g0/c$a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/o0/b;->f(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v1, Lbx;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Lbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    new-instance v1, Lcom/batch/android/p0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/p0/c;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance p0, Lcom/batch/android/p0/c$a;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, v2, v3}, Lcom/batch/android/p0/c$a;-><init>(II)V

    .line 262
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {p1}, Lcom/batch/android/g0/c$a;->x()Lcom/batch/android/g0/d$e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/g0/d$e;->c()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 p0, 0x0

    .line 264
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 265
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$c;Landroid/view/ViewGroup;)V
    .locals 2

    .line 319
    new-instance v0, Lcom/batch/android/r0/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/batch/android/r0/b;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/batch/android/r0/b;->a(Lcom/batch/android/g0/c;)V

    .line 321
    new-instance v1, Lcom/batch/android/m0/a$c;

    invoke-direct {v1, p0}, Lcom/batch/android/m0/a$c;-><init>(Lcom/batch/android/m0/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/batch/android/r0/b;->a(Lcom/batch/android/g0/c$c;Lkotlin/jvm/functions/Function2;)V

    .line 322
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$d;Landroid/view/ViewGroup;)V
    .locals 4

    .line 312
    new-instance v0, Lcom/batch/android/r0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/batch/android/r0/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/batch/android/r0/c;->a(Lcom/batch/android/g0/c;)V

    .line 313
    new-instance v1, Lcom/batch/android/p0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/p0/c;-><init>(Landroid/content/Context;)V

    .line 314
    new-instance p0, Lcom/batch/android/p0/c$a;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, v2, v3}, Lcom/batch/android/p0/c$a;-><init>(II)V

    .line 315
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-virtual {p1}, Lcom/batch/android/g0/c$d;->p()Lcom/batch/android/g0/d$e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/g0/d$e;->c()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 317
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$g;Landroid/view/ViewGroup;)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->j()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    new-instance v1, Lcom/batch/android/r0/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/batch/android/r0/d;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v1, p1}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c;)V

    .line 278
    invoke-virtual {v1, v0}, Lcom/batch/android/r0/d;->setImageContentDescription(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/f0/a;

    if-eqz v2, :cond_0

    .line 280
    new-instance v3, Lw71;

    invoke-direct {v3, p0, p1, v0, v2}, Lw71;-><init>(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/batch/android/m0/a;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 283
    new-instance v2, Lcom/batch/android/m0/a$d;

    invoke-direct {v2, v1, p0, p1}, Lcom/batch/android/m0/a$d;-><init>(Lcom/batch/android/r0/d;Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;)V

    .line 284
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 285
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$h;Landroid/view/ViewGroup;)V
    .locals 1

    .line 290
    new-instance v0, Lcom/batch/android/r0/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p2}, Lcom/batch/android/r0/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcom/batch/android/r0/e;->a(Lcom/batch/android/g0/c;)V

    .line 291
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$i;Landroid/view/ViewGroup;)V
    .locals 2

    .line 252
    new-instance v0, Lcom/batch/android/r0/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/batch/android/r0/g;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/batch/android/r0/g;->a(Lcom/batch/android/g0/c;)V

    .line 254
    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->j()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/batch/android/g0/c$i;->t()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/batch/android/o0/b;->f(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c$k;Landroid/view/ViewGroup;)V
    .locals 3

    .line 292
    new-instance v0, Lcom/batch/android/r0/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/batch/android/r0/h;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v0, p1}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/g0/c;)V

    .line 294
    iget-object v1, p0, Lcom/batch/android/m0/a;->b:Lcom/batch/android/BatchMessage;

    iget-object v2, p0, Lcom/batch/android/m0/a;->e:Lcom/batch/android/z/c;

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/z/c;)V

    .line 295
    iget-object v1, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v1}, Lcom/batch/android/g0/a;->k()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/batch/android/g0/c$k;->p()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/batch/android/r0/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object p0, p0, Lcom/batch/android/m0/a;->e:Lcom/batch/android/z/c;

    if-eqz p0, :cond_1

    .line 297
    sget-object p1, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    .line 298
    sget-object v1, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    .line 299
    const-string v2, "No webview\'s url has been provided"

    invoke-interface {p0, p1, v1, v2}, Lcom/batch/android/z/c;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    .line 300
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/batch/android/g0/c;Landroid/view/ViewGroup;)V
    .locals 2

    .line 244
    invoke-virtual {p1}, Lcom/batch/android/g0/c;->j()Lcom/batch/android/g0/c$j;

    move-result-object v0

    sget-object v1, Lcom/batch/android/m0/a$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 245
    :pswitch_0
    check-cast p1, Lcom/batch/android/g0/c$k;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$k;Landroid/view/ViewGroup;)V

    return-void

    .line 246
    :pswitch_1
    check-cast p1, Lcom/batch/android/g0/c$h;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$h;Landroid/view/ViewGroup;)V

    return-void

    .line 247
    :pswitch_2
    check-cast p1, Lcom/batch/android/g0/c$c;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$c;Landroid/view/ViewGroup;)V

    return-void

    .line 248
    :pswitch_3
    check-cast p1, Lcom/batch/android/g0/c$d;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$d;Landroid/view/ViewGroup;)V

    return-void

    .line 249
    :pswitch_4
    check-cast p1, Lcom/batch/android/g0/c$g;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$g;Landroid/view/ViewGroup;)V

    return-void

    .line 250
    :pswitch_5
    check-cast p1, Lcom/batch/android/g0/c$a;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$a;Landroid/view/ViewGroup;)V

    return-void

    .line 251
    :pswitch_6
    check-cast p1, Lcom/batch/android/g0/c$i;

    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$i;Landroid/view/ViewGroup;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final a(Lcom/batch/android/m0/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    iget-object p0, p0, Lcom/batch/android/m0/a;->d:Lcom/batch/android/m0/a$a;

    invoke-interface {p0}, Lcom/batch/android/m0/a$a;->a()V

    return-void
.end method

.method private static final a(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$a;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    iget-object p2, p0, Lcom/batch/android/m0/a;->d:Lcom/batch/android/m0/a$a;

    .line 268
    invoke-virtual {p1}, Lcom/batch/android/g0/c$a;->B()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/batch/android/f0/b;

    .line 270
    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->j()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/batch/android/g0/c$a;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v3}, Lcom/batch/android/g0/a;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/batch/android/g0/c$a;->B()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/f0/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 272
    :goto_0
    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->d()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/batch/android/g0/c$a;->B()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/f0/a;

    if-eqz p0, :cond_1

    iget-object v4, p0, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    .line 273
    :cond_1
    invoke-direct {v1, v2, v3, v4}, Lcom/batch/android/f0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 274
    const-string p0, "button"

    invoke-interface {p2, v0, p0, v1}, Lcom/batch/android/m0/a$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V

    return-void
.end method

.method private static final a(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    iget-object p0, p0, Lcom/batch/android/m0/a;->d:Lcom/batch/android/m0/a$a;

    .line 287
    invoke-virtual {p1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object p1

    .line 288
    new-instance p4, Lcom/batch/android/f0/b;

    iget-object v0, p3, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    iget-object p3, p3, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    invoke-direct {p4, p2, v0, p3}, Lcom/batch/android/f0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 289
    const-string p2, "image"

    invoke-interface {p0, p1, p2, p4}, Lcom/batch/android/m0/a$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V

    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c;Landroid/view/ViewGroup;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic b(Lcom/batch/android/m0/a;)Lcom/batch/android/g0/a;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    return-object p0
.end method

.method private final b()V
    .locals 6

    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->o()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/d$f;->c()F

    move-result v2

    invoke-static {v2}, Lcom/batch/android/k0/a;->a(F)I

    move-result v2

    iget-object v3, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v3}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/d$f;->f()F

    move-result v3

    invoke-static {v3}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    iget-object v4, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v4}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$f;->e()F

    move-result v4

    invoke-static {v4}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    iget-object v5, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v5}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/g0/d$f;->b()F

    move-result v5

    invoke-static {v5}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Landroid/view/View;->setElevation(F)V

    iget-object v3, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v3}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/f;->f()Lcom/batch/android/g0/d$h;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v3}, Lcom/batch/android/g0/a;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v3}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/f;->j()Lcom/batch/android/g0/d$b;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/batch/android/g0/d$b;->a(Landroid/content/Context;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v3, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v3}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/g0/f;->g()Lcom/batch/android/g0/d$a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/batch/android/g0/d$a;->d()I

    move-result v3

    iget-object v4, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v4}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/f;->g()Lcom/batch/android/g0/d$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/g0/d$a;->c()Lcom/batch/android/g0/d$h;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lcom/batch/android/g0/d$h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/batch/android/R$id;->com_batchsdk_messaging_content_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/f;->g()Lcom/batch/android/g0/d$a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/batch/android/g0/d$a;->d()I

    move-result v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->h()Lcom/batch/android/g0/d$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/d$i;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    iget-object v2, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/f;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/g0/c;

    invoke-direct {p0, v4, v0}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/batch/android/m0/a;->h:Landroid/widget/ScrollView;

    sget v4, Lcom/batch/android/R$id;->com_batchsdk_messaging_scroll_view:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v5}, Lcom/batch/android/g0/a;->s()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x2

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    invoke-direct {v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v1, p0, Lcom/batch/android/m0/a;->h:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/batch/android/m0/a;->h:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/m0/a;Landroid/view/View;)V
    .locals 0

    .line 375
    invoke-static {p0, p1}, Lcom/batch/android/m0/a;->instrumented$0$a$--V(Lcom/batch/android/m0/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lcom/batch/android/m0/a;->instrumented$0$a$-Lcom-batch-android-g0-c$g-Landroid-view-ViewGroup--V(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$a;Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/batch/android/m0/a;->instrumented$0$a$-Lcom-batch-android-g0-c$a-Landroid-view-ViewGroup--V(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$a;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic instrumented$0$a$--V(Lcom/batch/android/m0/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/m0/a;Landroid/view/View;)V

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

.method private static synthetic instrumented$0$a$-Lcom-batch-android-g0-c$a-Landroid-view-ViewGroup--V(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$a;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$0$a$-Lcom-batch-android-g0-c$g-Landroid-view-ViewGroup--V(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p4}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p4}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p4}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/Window;)V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    .line 237
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 238
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->c()F

    move-result v0

    invoke-static {v0}, Lcom/batch/android/k0/a;->a(F)I

    move-result v3

    .line 239
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->f()F

    move-result v0

    invoke-static {v0}, Lcom/batch/android/k0/a;->a(F)I

    move-result v4

    .line 240
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/g0/d$f;->e()F

    move-result v0

    invoke-static {v0}, Lcom/batch/android/k0/a;->a(F)I

    move-result v5

    .line 241
    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->i()Lcom/batch/android/g0/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/g0/d$f;->b()F

    move-result p0

    invoke-static {p0}, Lcom/batch/android/k0/a;->a(F)I

    move-result v6

    .line 242
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    iget-object v0, p0, Lcom/batch/android/m0/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/r0/d;

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {p0, p1}, Lcom/batch/android/g0/a;->a(Ljava/lang/String;)Lcom/batch/android/g0/c$g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/batch/android/r0/d;->a()V

    const/4 p1, 0x0

    .line 311
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Lcom/batch/android/z/a$d;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/batch/android/z/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    iget-object v0, p0, Lcom/batch/android/m0/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/r0/d;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/batch/android/r0/d;->a()V

    .line 303
    iget-object v1, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v1, p1}, Lcom/batch/android/g0/a;->a(Ljava/lang/String;)Lcom/batch/android/g0/c$g;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    .line 304
    const-string p2, "Messaging"

    const-string v1, "Downloaded image is null"

    invoke-static {p2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {p0, p1}, Lcom/batch/android/g0/a;->a(Ljava/lang/String;)Lcom/batch/android/g0/c$g;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 306
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Lcom/batch/android/z/a$d;)V

    return-void

    .line 307
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Lcom/batch/android/z/a$d;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    iget-object p0, p0, Lcom/batch/android/m0/a;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/r0/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/r0/d;->b()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/o0/d;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->e()Lcom/batch/android/g0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/g0/b;->c()Lcom/batch/android/g0/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/g0/b$a;->d()I

    move-result v0

    iget-object p0, p0, Lcom/batch/android/m0/a;->f:Lcom/batch/android/j0/a;

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/j0/a;->a(J)V

    :cond_0
    return-void
.end method

.method public final getScrollView()Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/m0/a;->h:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->d:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroidx/core/graphics/Insets;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/batch/android/m0/a;->a:Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->u()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/16 p0, 0x207

    invoke-virtual {p2, p0}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p2, p0, Landroidx/core/graphics/Insets;->a:I

    iget v0, p0, Landroidx/core/graphics/Insets;->b:I

    iget v1, p0, Landroidx/core/graphics/Insets;->c:I

    iget p0, p0, Landroidx/core/graphics/Insets;->d:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final setScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/batch/android/m0/a;->h:Landroid/widget/ScrollView;

    return-void
.end method
