.class public Lcom/batch/android/n0/c;
.super Lcom/batch/android/l0/a;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n0/a$a;
.implements Lcom/batch/android/o0/a$a;


# instance fields
.field private final o:Lcom/batch/android/h0/b;

.field private final p:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/g;Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)V
    .locals 6

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v4, p3

    move-object v3, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/l0/a;-><init>(Landroid/view/View;Lcom/batch/android/v0/g;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;Z)V

    iput-object p4, v0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    new-instance p0, Landroid/util/LruCache;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object p0, v0, Lcom/batch/android/n0/c;->p:Landroid/util/LruCache;

    iget-object p0, v0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-super {v0}, Lcom/batch/android/l0/a;->h()V

    iget-object p0, v0, Lcom/batch/android/l0/a;->e:Lcom/batch/android/l0/a$d;

    invoke-static {p0}, Lcom/batch/android/e/f0;->b(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)Lcom/batch/android/n0/c;
    .locals 7

    .line 22
    new-instance v0, Lcom/batch/android/n0/c;

    .line 23
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/n0/c;-><init>(Lcom/batch/android/v0/g;Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)V

    return-object v0
.end method

.method private static synthetic a(Lcom/batch/android/n0/c;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/batch/android/l0/a;->i()V

    return-void
.end method

.method private n()Lcom/batch/android/n0/a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/l0/a;->f:Landroid/widget/RelativeLayout;

    check-cast p0, Lcom/batch/android/n0/a;

    return-object p0
.end method

.method public static synthetic n(Lcom/batch/android/n0/c;)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/batch/android/n0/c;->a(Lcom/batch/android/n0/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    .line 21
    iget-object p0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    return-void
.end method

.method public a(ILcom/batch/android/f0/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/i;->a(ILcom/batch/android/f0/b;)V

    iget-object p1, p0, Lcom/batch/android/l0/a;->b:Lcom/batch/android/v0/g;

    iget-object v0, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/batch/android/l0/a;->g:Lcom/batch/android/BatchMessage;

    invoke-virtual {p1, v0, p0, p2}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    return-void
.end method

.method public a(Lcom/batch/android/z/a$d;)V
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/batch/android/n0/c;->p:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/batch/android/z/a$d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/batch/android/z/a$d;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/batch/android/n0/c;->p:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z/a$d;

    return-object p0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/l0/a;->a(Z)V

    iget-object v0, p0, Lcom/batch/android/l0/a;->c:Lcom/batch/android/i;

    iget-object v1, p0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    iget-object v1, v1, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    invoke-virtual {v0, v1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/a;)V

    iget-object v0, p0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    iget-object v0, v0, Lcom/batch/android/h0/c;->j:Lcom/batch/android/f0/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/l0/a;->b:Lcom/batch/android/v0/g;

    iget-object v2, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/batch/android/l0/a;->g:Lcom/batch/android/BatchMessage;

    invoke-virtual {v1, v2, p0, v0}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    return-void

    :cond_0
    const-string p0, "Messaging"

    const-string v0, "Could not perform global tap action. Internal error."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    iget-boolean p0, p0, Lcom/batch/android/h0/c;->l:Z

    return p0
.end method

.method public d()Lcom/batch/android/l0/a$e;
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/n0/c;->n()Lcom/batch/android/n0/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/n0/a;->getPinnedVerticalEdge()Lcom/batch/android/l0/a$e;

    move-result-object p0

    return-object p0
.end method

.method public e()Landroid/widget/ScrollView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic g()Landroid/widget/RelativeLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/n0/c;->o()Lcom/batch/android/n0/a;

    move-result-object p0

    return-object p0
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    iget v0, v0, Lcom/batch/android/h0/c;->q:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/n0/c;->n()Lcom/batch/android/n0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/n0/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/n0/c;->n()Lcom/batch/android/n0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/n0/a;->i()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    iget v2, v2, Lcom/batch/android/h0/c;->q:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/batch/android/l0/a;->m:Landroid/os/Handler;

    new-instance v3, Lf31;

    const/16 v4, 0xe

    invoke-direct {v3, p0, v4}, Lf31;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/batch/android/l0/a;->k:Ljava/lang/Object;

    invoke-virtual {v2, v3, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method

.method public o()Lcom/batch/android/n0/a;
    .locals 6

    new-instance v0, Lcom/batch/android/n0/a;

    iget-object v1, p0, Lcom/batch/android/l0/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/batch/android/n0/c;->o:Lcom/batch/android/h0/b;

    new-instance v4, Lcom/batch/android/a0/b;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "root"

    invoke-direct {v4, v5, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/n0/a;-><init>(Landroid/content/Context;Lcom/batch/android/h0/c;Lcom/batch/android/a0/d;Lcom/batch/android/a0/b;Lcom/batch/android/o0/a$a;)V

    invoke-virtual {v0, v5}, Lcom/batch/android/n0/a;->setActionListener(Lcom/batch/android/n0/a$a;)V

    return-object v0
.end method
