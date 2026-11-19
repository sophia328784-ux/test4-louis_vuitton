.class public Lcom/batch/android/g1/c;
.super Lcom/batch/android/g1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/g1/c$c;,
        Lcom/batch/android/g1/c$a;,
        Lcom/batch/android/g1/c$b;
    }
.end annotation


# instance fields
.field private c:Lcom/batch/android/g1/c$a;

.field private d:Lcom/batch/android/g1/c$c;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/batch/android/g1/c$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/batch/android/g1/c$c;)V
    .locals 1

    sget-object v0, Lcom/batch/android/f1/f;->g:Lcom/batch/android/f1/f;

    invoke-direct {p0, v0, p1}, Lcom/batch/android/g1/e;-><init>(Lcom/batch/android/f1/f;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/batch/android/g1/c;->d:Lcom/batch/android/g1/c$c;

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/g1/c$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/batch/android/g1/c;->c:Lcom/batch/android/g1/c$a;

    return-void
.end method

.method public a(Lcom/batch/android/g1/c$b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/batch/android/g1/c;->f:Lcom/batch/android/g1/c$b;

    return-void
.end method

.method public a(Lcom/batch/android/g1/c$c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/batch/android/g1/c;->d:Lcom/batch/android/g1/c$c;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/g1/c;->e:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g1/c;->e:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/batch/android/g1/c;->e:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/batch/android/g1/c;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/t/b;

    iget-boolean v2, v1, Lcom/batch/android/t/b;->l:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public e()Lcom/batch/android/g1/c$b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/c;->f:Lcom/batch/android/g1/c$b;

    return-object p0
.end method

.method public f()Lcom/batch/android/g1/c$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/c;->c:Lcom/batch/android/g1/c$a;

    return-object p0
.end method

.method public g()Lcom/batch/android/g1/c$c;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/c;->d:Lcom/batch/android/g1/c$c;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/c;->e:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/c;->f:Lcom/batch/android/g1/c$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/c;->c:Lcom/batch/android/g1/c$a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
