.class public abstract Lcom/networkbench/agent/impl/plugin/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static d:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/plugin/h;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/networkbench/agent/impl/plugin/e;

.field protected f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/f/i;->d:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/i;->e:Lcom/networkbench/agent/impl/plugin/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/plugin/h;)Z
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/plugin/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/plugin/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u8fd9\u4e2apluginObserver\u5df2\u7ecf\u6ce8\u518c\u8fc7\u7c7b\u4f3c\u7684\u4e86.."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/h;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/h;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/h;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/f/i;->b(Lcom/networkbench/agent/impl/plugin/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->f()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onResponse  \u6267\u884c\u5b8c\u4e00\u4e2atask Id :  "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/plugin/f/e;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/f/e;->b:Z

    const-string p0, "onResponse  \u6267\u884c\u5b8c\u4e00\u4e2atask Id observerData state:  false"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->c:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/plugin/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    return-object p0
.end method

.method public d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginObserver  notifyObservers  list.size():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/plugin/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginObserver  notifyObservers    pluginObserver.getClass().getSimpleName()"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/plugin/h;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->c:Ljava/util/Map;

    return-object p0
.end method

.method public declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/plugin/h;

    iget-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->m:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/networkbench/agent/impl/util/r;->o:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
