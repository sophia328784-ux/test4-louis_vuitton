.class Lcom/networkbench/agent/impl/performance/a/b/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/a/b/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/a/b/c/b;

.field private b:Lcom/networkbench/agent/impl/performance/a/b/c/a;


# direct methods
.method private constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/c/b;Lcom/networkbench/agent/impl/performance/a/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b$a;->a:Lcom/networkbench/agent/impl/performance/a/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b$a;->b:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/c/b;Lcom/networkbench/agent/impl/performance/a/b/c/a;Lcom/networkbench/agent/impl/performance/a/b/c/b$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/a/b/c/b$a;-><init>(Lcom/networkbench/agent/impl/performance/a/b/c/b;Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/c/b$a;->b:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskRunner run has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
