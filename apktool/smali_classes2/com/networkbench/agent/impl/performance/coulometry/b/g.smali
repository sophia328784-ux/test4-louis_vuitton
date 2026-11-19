.class public Lcom/networkbench/agent/impl/performance/coulometry/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    return-void
.end method

.method private c()V
    .locals 10

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/b/g$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/g$1;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/b/g;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    iget-wide v2, v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    iget-wide v0, v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    iget-wide v6, v5, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    cmp-long v8, v6, v0

    if-lez v8, :cond_0

    iget-wide v8, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    sub-long v2, v0, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    move-wide v2, v6

    :cond_0
    iget-wide v5, v5, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/b/h;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->c()V

    return-void
.end method

.method public b()I
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b:J

    long-to-int p0, v0

    return p0
.end method
