.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;


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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;",
        "onError",
        "",
        "onSuccess",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $hprofFile:Ljava/io/File;

.field final synthetic $jsonFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    iput-object p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    const-string v0, "heap analysis error, do file delete"

    const/4 v1, 0x1

    const-string v2, "OOMMonitor"

    invoke-static {v2, v0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onSuccess()V
    .locals 4

    const-string v0, "heap analysis success, do upload"

    const/4 v1, 0x1

    const-string v2, "OOMMonitor"

    invoke-static {v2, v0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    invoke-static {v0}, Lkotlin/io/FilesKt;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/base/MonitorLogger;->INSTANCE:Lcom/networkbench/agent/impl/base/MonitorLogger;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/agent/impl/base/MonitorLogger;->addExceptionEvent(Ljava/lang/String;I)V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;

    invoke-static {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->access$getMonitorConfig$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getReportUploader()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    invoke-interface {v2, v3, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;->upload(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->access$getMonitorConfig$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;->getHprofUploader()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;->ORIGIN:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;

    invoke-interface {v0, p0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;->upload(Ljava/io/File;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;)V

    :cond_1
    return-void
.end method
