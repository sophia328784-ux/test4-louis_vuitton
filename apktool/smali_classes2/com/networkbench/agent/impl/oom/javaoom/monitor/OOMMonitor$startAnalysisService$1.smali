.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
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
.field final synthetic $hprofFile:Ljava/io/File;

.field final synthetic $jsonFile:Ljava/io/File;

.field final synthetic $reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;->$hprofFile:Ljava/io/File;

    iput-object p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;->$jsonFile:Ljava/io/File;

    iput-object p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;->$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;

    iget-object v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;->$hprofFile:Ljava/io/File;

    iget-object v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;->$jsonFile:Ljava/io/File;

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$1;->$reason:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->access$startAnalysisService(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "startAnalysisService error"

    const/4 v0, 0x1

    const-string v1, "OOMMonitor"

    invoke-static {v1, p0, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method
