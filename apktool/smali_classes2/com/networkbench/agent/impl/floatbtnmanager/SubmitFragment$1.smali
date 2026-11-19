.class Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/SubmitFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getActionDefinerHost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " SubmitFragment run  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
