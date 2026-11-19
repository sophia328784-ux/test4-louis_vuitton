.class public Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;->a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;->a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;)Lcom/networkbench/agent/impl/floatbtnmanager/l;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a()Lcom/networkbench/agent/impl/floatbtnmanager/m;

    move-result-object v2

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendVisualInfo(Lcom/networkbench/agent/impl/floatbtnmanager/l;Lcom/networkbench/agent/impl/floatbtnmanager/m;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " SubmitPageVisualFragment run  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
