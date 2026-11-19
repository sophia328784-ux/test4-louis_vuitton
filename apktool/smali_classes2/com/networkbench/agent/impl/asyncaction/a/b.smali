.class public Lcom/networkbench/agent/impl/asyncaction/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/networkbench/agent/impl/asyncaction/a/b;

.field private static final c:Ljava/lang/String; = "TraceDataStore"


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/a/b;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/a/a;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(JLjava/lang/String;Z)V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/asyncaction/a/a;

    .line 59
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/asyncaction/a/a;->a(JLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TraceDataStore"

    if-eqz v0, :cond_0

    const-string p0, "datas contains object ,skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "tracedata is over flow max duration, hasCode is:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->b()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/asyncaction/a/b$1;-><init>(Lcom/networkbench/agent/impl/asyncaction/a/b;Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/asyncaction/a/a;

    invoke-interface {v2}, Lcom/networkbench/agent/impl/asyncaction/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/asyncaction/a/a;

    instance-of v3, v2, Lcom/networkbench/agent/impl/data/d/h;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/networkbench/agent/impl/data/d/h;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/d/h;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "page data has custom end tag, but timeout, drop data hashcode is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TraceDataStore"

    invoke-static {v3, v2}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/networkbench/agent/impl/asyncaction/a/a;->b()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method
