.class public abstract Lcom/networkbench/agent/impl/performance/coulometry/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/networkbench/agent/impl/performance/coulometry/c/a;

.field protected b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->b:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->a(Lcom/networkbench/agent/impl/performance/coulometry/b/b;)Lcom/networkbench/agent/impl/performance/coulometry/c/a;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/performance/coulometry/c/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a;

    return-object p0
.end method

.method public abstract a(Lcom/networkbench/agent/impl/performance/coulometry/b/b;)Lcom/networkbench/agent/impl/performance/coulometry/c/a;
.end method

.method public abstract b()V
.end method
