.class public Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "AlarmManager  method :  remove() "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AlarmManager  method :  remove()  pendingIntent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;->b(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

    iget-object v2, v2, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/a;

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)V

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;->c(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
