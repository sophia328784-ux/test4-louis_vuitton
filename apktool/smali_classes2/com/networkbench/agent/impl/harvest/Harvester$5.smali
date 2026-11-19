.class Lcom/networkbench/agent/impl/harvest/Harvester$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/harvest/Harvester;->startSchele(Lcom/networkbench/agent/impl/data/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/data/c/a;

.field final synthetic b:Lcom/networkbench/agent/impl/harvest/Harvester;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/Harvester;Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester$5;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    iput-object p2, p0, Lcom/networkbench/agent/impl/harvest/Harvester$5;->a:Lcom/networkbench/agent/impl/data/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester$5;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester$5;->a:Lcom/networkbench/agent/impl/data/c/a;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->a(Lcom/networkbench/agent/impl/harvest/Harvester;Lcom/networkbench/agent/impl/data/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester$5;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->a(Lcom/networkbench/agent/impl/harvest/Harvester;)Lcom/networkbench/agent/impl/c/e;

    move-result-object p0

    const-string v1, "startSchele isRunNingOfIdentification  has an error : "

    invoke-interface {p0, v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
