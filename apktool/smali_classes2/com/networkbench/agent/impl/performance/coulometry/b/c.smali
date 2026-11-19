.class public Lcom/networkbench/agent/impl/performance/coulometry/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/coulometry/b;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b;-><init>(IZ)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/performance/coulometry/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/b;

    return-object p0
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->a:Lcom/networkbench/agent/impl/performance/coulometry/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b;->c()V

    return-void
.end method
