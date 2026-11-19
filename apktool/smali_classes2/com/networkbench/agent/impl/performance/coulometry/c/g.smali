.class public abstract Lcom/networkbench/agent/impl/performance/coulometry/c/g;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/c/f;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a(Ljava/lang/reflect/Method;)Lcom/networkbench/agent/impl/performance/coulometry/c/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ServiceProxyHook invoke error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public e()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
