.class Lcom/networkbench/agent/impl/performance/b/f$1;
.super Lcom/networkbench/agent/impl/b/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/performance/b/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/networkbench/agent/impl/performance/b/f;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/f$1;->b:Lcom/networkbench/agent/impl/performance/b/f;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f$1;->b:Lcom/networkbench/agent/impl/performance/b/f;

    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/b/f;->a(Lcom/networkbench/agent/impl/performance/b/f;)Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/b/h$a;->d()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f$1;->b:Lcom/networkbench/agent/impl/performance/b/f;

    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/b/f;->b(Lcom/networkbench/agent/impl/performance/b/f;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/networkbench/agent/impl/b/h$a;->e()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/f$1;->b:Lcom/networkbench/agent/impl/performance/b/f;

    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/b/f;->c(Lcom/networkbench/agent/impl/performance/b/f;)V

    return-void
.end method
