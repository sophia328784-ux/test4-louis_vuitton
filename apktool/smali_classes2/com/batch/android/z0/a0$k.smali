.class Lcom/batch/android/z0/a0$k;
.super Lcom/batch/android/z0/a0$d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field final synthetic c:Lcom/batch/android/z0/a0;


# direct methods
.method private constructor <init>(Lcom/batch/android/z0/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/batch/android/z0/a0$k;->c:Lcom/batch/android/z0/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z0/a0$d;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/batch/android/z0/a0$k;-><init>(Lcom/batch/android/z0/a0;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->k:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public S()[Lcom/batch/android/z0/x;
    .locals 4

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/batch/android/z0/x;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/z0/x;

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/z0/x;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public U()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/z0/a0$k;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public Z()Lcom/batch/android/z0/l;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/z0/y;->a(Ljava/util/Map;)Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/batch/android/x0/j;->d(I)Lcom/batch/android/x0/j;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/z0/x;

    invoke-interface {v1, p1}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z0/x;

    invoke-interface {v0, p1}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Lcom/batch/android/z0/s;
    .locals 0

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->Z()Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$k;->U()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
