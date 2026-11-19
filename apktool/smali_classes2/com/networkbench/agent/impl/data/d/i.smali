.class public Lcom/networkbench/agent/impl/data/d/i;
.super Lcom/networkbench/agent/impl/data/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/b/a;-><init>()V

    const-string v0, "pages"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->c:Ljava/lang/String;

    const-string v0, "pageMetrics"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->b:Ljava/lang/String;

    const-string v0, "page"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUiPages()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/d/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NBSPageData add() has an error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/d/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;

    .line 40
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/d/i;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    goto :goto_0

    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
