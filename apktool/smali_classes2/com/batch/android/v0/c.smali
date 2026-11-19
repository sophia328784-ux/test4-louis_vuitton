.class public Lcom/batch/android/v0/c;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/v0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/v0/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    iput-object p1, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    return-void
.end method

.method public static i()Lcom/batch/android/v0/c;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/p;->a()Lcom/batch/android/v0/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/x;->a()Lcom/batch/android/v0/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/g;->a()Lcom/batch/android/v0/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/batch/android/v0/c;

    invoke-direct {v1, v0}, Lcom/batch/android/v0/c;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/b;

    invoke-virtual {v0, p1}, Lcom/batch/android/v0/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/v0/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/b;

    invoke-virtual {v0}, Lcom/batch/android/v0/b;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "master"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
