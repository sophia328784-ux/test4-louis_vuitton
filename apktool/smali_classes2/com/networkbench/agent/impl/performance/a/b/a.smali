.class public Lcom/networkbench/agent/impl/performance/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/networkbench/agent/impl/performance/a/b/c/a;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:Lcom/networkbench/agent/impl/performance/a/a/b;

.field public g:Lcom/networkbench/agent/impl/performance/a/d/e;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/d/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a;->g:Lcom/networkbench/agent/impl/performance/a/d/e;

    return-void
.end method

.method private static a(FLjava/util/Map;Ljava/util/Map;)Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;)",
            "Ljava/util/LinkedList;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/performance/a/c/g;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/a/c/g;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->c:J

    iget-wide v5, v2, Lcom/networkbench/agent/impl/performance/a/c/g;->c:J

    sub-long/2addr v3, v5

    long-to-float v2, v3

    div-float/2addr v2, p0

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/util/Pair;

    iget-object v1, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.4f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "CpuDataCollector calculateCpuUsage threadCpuUsageList.isEmpty()"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance p0, Lcom/networkbench/agent/impl/performance/a/b/a$1;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/a$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(FLjava/util/Map;Ljava/util/Map;Lcom/networkbench/agent/impl/performance/a/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;",
            "Lcom/networkbench/agent/impl/performance/a/c/f;",
            ")V"
        }
    .end annotation

    .line 140
    invoke-static {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/a/b/a;->a(FLjava/util/Map;Ljava/util/Map;)Ljava/util/LinkedList;

    move-result-object p0

    .line 141
    invoke-virtual {p4, p0}, Lcom/networkbench/agent/impl/performance/a/c/f;->a(Ljava/util/LinkedList;)V

    .line 142
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/c;->d()Lcom/networkbench/agent/impl/performance/a/b;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/networkbench/agent/impl/performance/a/c/f;->a(Lcom/networkbench/agent/impl/performance/a/b;)V

    return-void
.end method
