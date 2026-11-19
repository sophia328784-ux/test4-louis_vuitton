.class public Lcom/networkbench/agent/impl/asyncaction/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/k;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/k;->b:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/k;->c:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/k;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSThreadWrapper thread run"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/k;->c:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->preMethod()V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/k;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/k;->c:Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/NBSRunnableHandler;->sufMethod()V

    return-void
.end method
