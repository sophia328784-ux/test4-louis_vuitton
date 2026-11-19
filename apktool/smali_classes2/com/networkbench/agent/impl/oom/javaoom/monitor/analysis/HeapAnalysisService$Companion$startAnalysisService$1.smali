.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$startAnalysisService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;->startAnalysisService(Landroid/app/Application;Ljava/util/List;Ljava/io/File;Ljava/io/File;Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisExtraData;Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/app/Application;

.field final synthetic $intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$startAnalysisService$1;->$context:Landroid/app/Application;

    iput-object p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$startAnalysisService$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$startAnalysisService$1;->$context:Landroid/app/Application;

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion$startAnalysisService$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startService failed, exception is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OOMMonitor_HeapAnalysisService"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
