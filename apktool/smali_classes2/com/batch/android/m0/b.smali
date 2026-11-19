.class public final Lcom/batch/android/m0/b;
.super Lcom/batch/android/l0/a;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/m0/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/m0/b$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/batch/android/m0/b$a;


# instance fields
.field private final o:Lcom/batch/android/g0/a;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/batch/android/m0/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/batch/android/m0/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/batch/android/m0/b;->r:Lcom/batch/android/m0/b$a;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Lcom/batch/android/g0/a;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;ZLcom/batch/android/v0/g;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/l0/a;-><init>(Landroid/view/View;Lcom/batch/android/v0/g;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;Z)V

    iput-object p2, v0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p0, v0, Lcom/batch/android/m0/b;->p:Ljava/util/Map;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p0, v0, Lcom/batch/android/m0/b;->q:Ljava/util/Map;

    invoke-super {v0}, Lcom/batch/android/l0/a;->h()V

    invoke-direct {v0}, Lcom/batch/android/m0/b;->n()V

    invoke-virtual {p2}, Lcom/batch/android/g0/a;->v()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object p0, v0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    instance-of p2, p0, Landroid/app/Activity;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object p0, p3

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, p3

    :goto_1
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    new-instance p4, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {p4, p0, p2}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iget-object p2, v0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    if-eqz p2, :cond_3

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_3
    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x10

    if-ne p2, p3, :cond_5

    move p2, p1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p4, p2}, Landroidx/core/view/WindowInsetsControllerCompat;->e(Z)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance p2, Lv71;

    invoke-direct {p2, p4, p1}, Lv71;-><init>(Landroidx/core/view/WindowInsetsControllerCompat;I)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_6
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/batch/android/g0/a;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;ZLcom/batch/android/v0/g;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/batch/android/m0/b;-><init>(Landroid/view/View;Lcom/batch/android/g0/a;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;ZLcom/batch/android/v0/g;)V

    return-void
.end method

.method private static final a(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->g(I)V

    .line 29
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/batch/android/m0/b;)Lcom/batch/android/m0/a;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/batch/android/m0/b;->o()Lcom/batch/android/m0/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/batch/android/m0/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/m0/b;->p:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic c(Lcom/batch/android/m0/b;)Lcom/batch/android/g0/a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    return-object p0
.end method

.method private static final d(Lcom/batch/android/m0/b;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p0}, Lcom/batch/android/l0/a;->i()V

    return-void
.end method

.method private final n()V
    .locals 6

    iget-object v0, p0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/g0/c$g;

    iget-object v2, p0, Lcom/batch/android/m0/b;->p:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/batch/android/m0/b$b;

    invoke-direct {v2, p0, v1}, Lcom/batch/android/m0/b$b;-><init>(Lcom/batch/android/m0/b;Lcom/batch/android/g0/c$g;)V

    iget-object v3, p0, Lcom/batch/android/m0/b;->q:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/batch/android/z/a;

    invoke-direct {v3, v2}, Lcom/batch/android/z/a;-><init>(Lcom/batch/android/z/a$c;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    invoke-virtual {v5}, Lcom/batch/android/g0/a;->k()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/batch/android/m0/b;)V
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/batch/android/m0/b;->d(Lcom/batch/android/m0/b;)V

    return-void
.end method

.method public static synthetic o(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lcom/batch/android/m0/b;->a(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method private final o()Lcom/batch/android/m0/a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/batch/android/m0/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    .line 31
    iget-object p0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    return-void
.end method

.method public a(Lcom/batch/android/f0/d;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    .line 34
    iget-object p0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {p0, p1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/batch/android/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V

    iget-object p1, p0, Lcom/batch/android/l0/a;->b:Lcom/batch/android/v0/g;

    iget-object p2, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/batch/android/l0/a;->g:Lcom/batch/android/BatchMessage;

    invoke-virtual {p1, p2, p0, p3}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 3
    const/4 p0, 0x1

    return p0
.end method

.method public d()Lcom/batch/android/l0/a$e;
    .locals 1

    iget-object p0, p0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->h()Lcom/batch/android/g0/d$i;

    move-result-object p0

    sget-object v0, Lcom/batch/android/g0/d$i;->b:Lcom/batch/android/g0/d$i;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/batch/android/l0/a$e;->b:Lcom/batch/android/l0/a$e;

    return-object p0

    :cond_0
    sget-object p0, Lcom/batch/android/l0/a$e;->c:Lcom/batch/android/l0/a$e;

    return-object p0
.end method

.method public e()Landroid/widget/ScrollView;
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/m0/b;->o()Lcom/batch/android/m0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/m0/a;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g()Landroid/widget/RelativeLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/m0/b;->p()Lcom/batch/android/m0/a;

    move-result-object p0

    return-object p0
.end method

.method public k()V
    .locals 5

    invoke-direct {p0}, Lcom/batch/android/m0/b;->o()Lcom/batch/android/m0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/m0/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->e()Lcom/batch/android/g0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/batch/android/g0/b;->c()Lcom/batch/android/g0/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/batch/android/g0/b$a;->d()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/batch/android/l0/a;->m:Landroid/os/Handler;

    new-instance v3, Lf31;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4}, Lf31;-><init>(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/batch/android/l0/a;->k:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-direct {p0}, Lcom/batch/android/m0/b;->o()Lcom/batch/android/m0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/m0/a;->d()V

    :cond_0
    return-void
.end method

.method public p()Lcom/batch/android/m0/a;
    .locals 7

    new-instance v0, Lcom/batch/android/m0/a;

    iget-object v1, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/batch/android/m0/b;->o:Lcom/batch/android/g0/a;

    iget-object v3, p0, Lcom/batch/android/l0/a;->g:Lcom/batch/android/BatchMessage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/batch/android/m0/b;->p:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/m0/a;-><init>(Landroid/content/Context;Lcom/batch/android/g0/a;Lcom/batch/android/BatchMessage;Ljava/util/Map;Lcom/batch/android/m0/a$a;Lcom/batch/android/z/c;)V

    return-object v0
.end method
