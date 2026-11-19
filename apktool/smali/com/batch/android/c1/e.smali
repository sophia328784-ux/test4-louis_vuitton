.class public Lcom/batch/android/c1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/batch/android/c1/c;

.field private b:Lcom/batch/android/BatchEmailSubscriptionState;

.field private c:Lcom/batch/android/c1/c;

.field private d:Lcom/batch/android/BatchSMSSubscriptionState;

.field private e:Lcom/batch/android/c1/c;

.field private f:Lcom/batch/android/c1/c;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/l1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/l1/d;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lcom/batch/android/BatchEmailSubscriptionState;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/batch/android/c1/e;->b:Lcom/batch/android/BatchEmailSubscriptionState;

    return-void
.end method

.method public a(Lcom/batch/android/BatchSMSSubscriptionState;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/batch/android/c1/e;->d:Lcom/batch/android/BatchSMSSubscriptionState;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 77
    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    new-instance v0, Lcom/batch/android/l1/d;

    sget-object v1, Lcom/batch/android/l1/a;->d:Lcom/batch/android/l1/a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/batch/android/l1/d;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/l1/d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/batch/android/c1/d;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/batch/android/c1/d;

    invoke-virtual {v1, p2}, Lcom/batch/android/c1/d;->a(Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    new-instance v0, Lcom/batch/android/l1/d;

    sget-object v1, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v0, Lcom/batch/android/l1/d;

    new-instance v1, Lcom/batch/android/c1/d;

    invoke-direct {v1, p2}, Lcom/batch/android/c1/d;-><init>(Ljava/util/List;)V

    sget-object p2, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    invoke-direct {v0, v1, p2}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/batch/android/c1/c;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/batch/android/c1/e;->a:Lcom/batch/android/c1/c;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/batch/android/c1/c;

    invoke-direct {v0, p1}, Lcom/batch/android/c1/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/c1/e;->a:Lcom/batch/android/c1/c;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/l1/d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    instance-of v2, v1, Lcom/batch/android/c1/d;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/batch/android/c1/d;

    invoke-virtual {v1, p2}, Lcom/batch/android/c1/d;->b(Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/batch/android/l1/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/batch/android/l1/d;

    new-instance v1, Lcom/batch/android/c1/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/batch/android/c1/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    sget-object p2, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    invoke-direct {v0, v1, p2}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    iget-object p0, p0, Lcom/batch/android/c1/e;->g:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Lcom/batch/android/BatchEmailSubscriptionState;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/batch/android/c1/e;->b:Lcom/batch/android/BatchEmailSubscriptionState;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/batch/android/c1/c;

    invoke-direct {v0, p1}, Lcom/batch/android/c1/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/c1/e;->e:Lcom/batch/android/c1/c;

    return-void
.end method

.method public d()Lcom/batch/android/c1/c;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/batch/android/c1/e;->e:Lcom/batch/android/c1/c;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/batch/android/c1/c;

    invoke-direct {v0, p1}, Lcom/batch/android/c1/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/c1/e;->c:Lcom/batch/android/c1/c;

    return-void
.end method

.method public e()Lcom/batch/android/c1/c;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/batch/android/c1/e;->c:Lcom/batch/android/c1/c;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/batch/android/c1/c;

    invoke-direct {v0, p1}, Lcom/batch/android/c1/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/c1/e;->f:Lcom/batch/android/c1/c;

    return-void
.end method

.method public f()Lcom/batch/android/c1/c;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c1/e;->f:Lcom/batch/android/c1/c;

    return-object p0
.end method

.method public g()Lcom/batch/android/BatchSMSSubscriptionState;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/c1/e;->d:Lcom/batch/android/BatchSMSSubscriptionState;

    return-object p0
.end method
