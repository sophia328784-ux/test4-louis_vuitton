.class public final Lcom/batch/android/g0/a;
.super Lcom/batch/android/f0/c;
.source "SourceFile"


# instance fields
.field private final f:Lcom/batch/android/g0/d$d;

.field private final g:Lcom/batch/android/g0/f;

.field private h:Lcom/batch/android/g0/d$i;

.field private final i:Lcom/batch/android/g0/b;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/f0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/batch/android/g0/d$d;Lcom/batch/android/g0/f;Lcom/batch/android/g0/d$i;Lcom/batch/android/g0/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/g0/d$d;",
            "Lcom/batch/android/g0/f;",
            "Lcom/batch/android/g0/d$i;",
            "Lcom/batch/android/g0/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/batch/android/f0/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/f0/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    iput-object p2, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    iput-object p3, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    iput-object p4, p0, Lcom/batch/android/g0/a;->i:Lcom/batch/android/g0/b;

    iput-object p5, p0, Lcom/batch/android/g0/a;->j:Ljava/util/Map;

    iput-object p6, p0, Lcom/batch/android/g0/a;->k:Ljava/util/Map;

    iput-object p7, p0, Lcom/batch/android/g0/a;->l:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/batch/android/g0/c$g;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/batch/android/g0/c$g;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/batch/android/g0/c$g;

    return-object v0
.end method

.method public final a(Lcom/batch/android/g0/d$i;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iput-object p1, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/f0/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/a;->l:Ljava/util/Map;

    return-object p0
.end method

.method public final e()Lcom/batch/android/g0/b;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/a;->i:Lcom/batch/android/g0/b;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/batch/android/g0/a;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/batch/android/g0/a;

    iget-object v1, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    iget-object v3, p1, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    iget-object v3, p1, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    iget-object v3, p1, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/batch/android/g0/a;->i:Lcom/batch/android/g0/b;

    iget-object v3, p1, Lcom/batch/android/g0/a;->i:Lcom/batch/android/g0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/batch/android/g0/a;->j:Ljava/util/Map;

    iget-object v3, p1, Lcom/batch/android/g0/a;->j:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/batch/android/g0/a;->k:Ljava/util/Map;

    iget-object v3, p1, Lcom/batch/android/g0/a;->k:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/batch/android/g0/a;->l:Ljava/util/Map;

    iget-object p1, p1, Lcom/batch/android/g0/a;->l:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Lcom/batch/android/g0/d$d;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/g0/c$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {v0}, Lcom/batch/android/g0/f;->h()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/batch/android/g0/c$g;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {p0}, Lcom/batch/android/g0/f;->h()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/batch/android/g0/c$c;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/batch/android/g0/c$c;

    invoke-virtual {v4}, Lcom/batch/android/g0/c$c;->p()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/batch/android/g0/c$g;

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {p0, v5}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lcom/batch/android/g0/d$i;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {v1}, Lcom/batch/android/g0/f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/a;->i:Lcom/batch/android/g0/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/g0/b;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/batch/android/g0/a;->j:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/batch/android/g0/a;->k:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/batch/android/g0/a;->l:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Lcom/batch/android/g0/f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    return-object p0
.end method

.method public final j()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/a;->j:Ljava/util/Map;

    return-object p0
.end method

.method public final k()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/g0/a;->k:Ljava/util/Map;

    return-object p0
.end method

.method public final l()Lcom/batch/android/g0/c$k;
    .locals 3

    iget-object p0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {p0}, Lcom/batch/android/g0/f;->h()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/batch/android/g0/c$k;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/c$k;

    return-object p0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v1, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    sget-object v1, Lcom/batch/android/g0/d$i;->d:Lcom/batch/android/g0/d$i;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {p0}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/g0/d$f;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {p0}, Lcom/batch/android/g0/f;->i()Lcom/batch/android/g0/d$f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/g0/d$f;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v1, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    sget-object v0, Lcom/batch/android/g0/d$i;->d:Lcom/batch/android/g0/d$i;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/batch/android/g0/d$i;->b:Lcom/batch/android/g0/d$i;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v1, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    sget-object v0, Lcom/batch/android/g0/d$i;->c:Lcom/batch/android/g0/d$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v0, Lcom/batch/android/g0/d$d;->c:Lcom/batch/android/g0/d$d;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r()Z
    .locals 3

    iget-object v0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {v0}, Lcom/batch/android/g0/f;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/batch/android/g0/a;->g:Lcom/batch/android/g0/f;

    invoke-virtual {p0}, Lcom/batch/android/g0/f;->h()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/batch/android/g0/c$g;

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final s()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v0, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v1, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/g0/a;->h:Lcom/batch/android/g0/d$i;

    sget-object v0, Lcom/batch/android/g0/d$i;->b:Lcom/batch/android/g0/d$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()Z
    .locals 1

    iget-object p0, p0, Lcom/batch/android/g0/a;->f:Lcom/batch/android/g0/d$d;

    sget-object v0, Lcom/batch/android/g0/d$d;->d:Lcom/batch/android/g0/d$d;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->n()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
