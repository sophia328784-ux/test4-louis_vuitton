.class Lcom/networkbench/agent/impl/asyncaction/a/b$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/asyncaction/a/a;

.field final synthetic b:Lcom/networkbench/agent/impl/asyncaction/a/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/asyncaction/a/b;Lcom/networkbench/agent/impl/asyncaction/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/a/b$1;->b:Lcom/networkbench/agent/impl/asyncaction/a/b;

    iput-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/a/b$1;->a:Lcom/networkbench/agent/impl/asyncaction/a/a;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b$1;->b:Lcom/networkbench/agent/impl/asyncaction/a/b;

    iget-object v0, v0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->MAX_ERROR_COUNT:I

    if-lt v0, v1, :cond_0

    const-string p0, "TraceDataStore"

    const-string v0, "datas size is over flow max size, skip"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b$1;->b:Lcom/networkbench/agent/impl/asyncaction/a/b;

    iget-object v0, v0, Lcom/networkbench/agent/impl/asyncaction/a/b;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/a/b$1;->a:Lcom/networkbench/agent/impl/asyncaction/a/a;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
