.class public abstract Lcom/networkbench/agent/impl/performance/coulometry/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/performance/coulometry/c/e;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/performance/coulometry/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Lcom/networkbench/agent/impl/performance/coulometry/c/e;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/performance/coulometry/c/e;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/networkbench/agent/impl/performance/coulometry/c/d;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public abstract b()V
.end method
