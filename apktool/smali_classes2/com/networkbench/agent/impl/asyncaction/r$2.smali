.class Lcom/networkbench/agent/impl/asyncaction/r$2;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/asyncaction/r;->exitMethod(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/networkbench/agent/impl/asyncaction/r;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/r$2;->c:Lcom/networkbench/agent/impl/asyncaction/r;

    iput-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/r$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iput-object p3, p0, Lcom/networkbench/agent/impl/asyncaction/r$2;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/r$2;->c:Lcom/networkbench/agent/impl/asyncaction/r;

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/r$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/r$2;->b:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/asyncaction/r;->b(Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    return-void
.end method
