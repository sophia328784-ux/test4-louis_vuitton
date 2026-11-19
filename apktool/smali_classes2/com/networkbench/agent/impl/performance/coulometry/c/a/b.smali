.class public Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;,
        Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$b;
    }
.end annotation


# instance fields
.field c:Lcom/networkbench/agent/impl/performance/coulometry/b/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a;-><init>()V

    check-cast p1, Lcom/networkbench/agent/impl/performance/coulometry/b/a;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/a;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$b;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$b;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)V

    const-string v2, "set"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)V

    const-string p0, "remove"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
