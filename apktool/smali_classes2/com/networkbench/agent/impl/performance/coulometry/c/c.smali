.class public Lcom/networkbench/agent/impl/performance/coulometry/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field a:Landroid/os/IBinder;

.field public b:Landroid/os/IBinder;

.field c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Lcom/networkbench/agent/impl/performance/coulometry/c/g;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->a:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->e:Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$Stub"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "queryLocalInterface"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->d:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    new-instance p3, Lcom/networkbench/agent/impl/performance/coulometry/c/b;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->a:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->e:Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->b:Landroid/os/IBinder;

    invoke-direct {p3, v0, v1, v2, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/b;-><init>(Landroid/os/IBinder;Ljava/lang/Class;Lcom/networkbench/agent/impl/performance/coulometry/c/g;Landroid/os/IBinder;)V

    invoke-static {p1, p2, p3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c;->a:Landroid/os/IBinder;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
