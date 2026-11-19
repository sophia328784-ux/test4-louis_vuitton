.class public Lcom/networkbench/agent/impl/performance/coulometry/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/coulometry/b/d;


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/k;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/k;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;->a()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/k;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Z)V
    .locals 0

    .line 7
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
