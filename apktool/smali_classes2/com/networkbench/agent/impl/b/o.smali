.class public Lcom/networkbench/agent/impl/b/o;
.super Lcom/networkbench/agent/impl/b/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Lcom/networkbench/agent/impl/b/k;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/networkbench/agent/impl/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/o;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/b/k;Lcom/networkbench/agent/impl/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/d;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/o;->b:Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/b/a/a;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/o;->c:Ljava/util/List;

    new-instance p1, Lcom/networkbench/agent/impl/b/n;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/b/n;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/o;->d:Lcom/networkbench/agent/impl/b/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/o;->d:Lcom/networkbench/agent/impl/b/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/b/o;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "TraceFileRunnable run cancle invoked"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/o;->d:Lcom/networkbench/agent/impl/b/n;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/n;->c()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/o;->b:Lcom/networkbench/agent/impl/b/k;

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/o;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/b/k;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/o;->b:Lcom/networkbench/agent/impl/b/k;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/o;->d:Lcom/networkbench/agent/impl/b/n;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/b/n;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/networkbench/agent/impl/b/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/b/j;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/o;->d:Lcom/networkbench/agent/impl/b/n;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/n;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/b/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/o;->d:Lcom/networkbench/agent/impl/b/n;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/n;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/b/j;->b:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/b/m;->a()Lcom/networkbench/agent/impl/b/m;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/b/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/o;->b:Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/k;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/b/o;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "traceFileRunnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method
