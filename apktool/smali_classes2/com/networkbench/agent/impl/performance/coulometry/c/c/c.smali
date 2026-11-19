.class public Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c$1;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;->b()J

    move-result-wide v0

    return-wide v0
.end method
