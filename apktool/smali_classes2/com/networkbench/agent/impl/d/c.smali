.class public Lcom/networkbench/agent/impl/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/networkbench/agent/impl/d/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/d/e;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/d/e;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/c;->a:Lcom/networkbench/agent/impl/d/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/networkbench/agent/impl/d/c;->a:Lcom/networkbench/agent/impl/d/e;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/d/e;->a()V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/d/a/c;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/networkbench/agent/impl/d/c;->a:Lcom/networkbench/agent/impl/d/e;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/e;->a(Lcom/networkbench/agent/impl/d/a/c;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/d/c/b;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/c;->a:Lcom/networkbench/agent/impl/d/e;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/e;->a(Lcom/networkbench/agent/impl/d/c/b;)V

    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/d/a/c;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/networkbench/agent/impl/d/c;->a:Lcom/networkbench/agent/impl/d/e;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/e;->b(Lcom/networkbench/agent/impl/d/a/c;)V

    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/d/c/b;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/c;->a:Lcom/networkbench/agent/impl/d/e;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/e;->b(Lcom/networkbench/agent/impl/d/c/b;)V

    return-void
.end method
