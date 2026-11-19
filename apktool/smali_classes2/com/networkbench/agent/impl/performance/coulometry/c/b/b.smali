.class public Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;,
        Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;
    }
.end annotation


# instance fields
.field c:Lcom/networkbench/agent/impl/performance/coulometry/b/e;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a;-><init>()V

    check-cast p1, Lcom/networkbench/agent/impl/performance/coulometry/b/e;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/e;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)V

    const-string v2, "requestLocationUpdates"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)V

    const-string p0, "removeUpdates"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
