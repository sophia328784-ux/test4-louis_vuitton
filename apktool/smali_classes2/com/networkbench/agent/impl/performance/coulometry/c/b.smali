.class public Lcom/networkbench/agent/impl/performance/coulometry/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field a:Ljava/lang/Object;

.field b:Lcom/networkbench/agent/impl/performance/coulometry/c/g;

.field c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/Class;Lcom/networkbench/agent/impl/performance/coulometry/c/g;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/networkbench/agent/impl/performance/coulometry/c/g;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->b:Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    iput-object p4, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->c:Landroid/os/IBinder;

    :try_start_0
    const-string p3, "asInterface"

    const-class p4, Landroid/os/IBinder;

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->c:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asBinder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->c:Landroid/os/IBinder;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->b:Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    invoke-virtual {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b;->a:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
