.class final Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$findPathsToGcRoot$heapAnalyzer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/kshark/OnAnalysisProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->findPathsToGcRoot()V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "step",
        "Lcom/networkbench/agent/impl/kshark/OnAnalysisProgressListener$Step;",
        "onAnalysisProgress"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$findPathsToGcRoot$heapAnalyzer$1;->this$0:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnalysisProgress(Lcom/networkbench/agent/impl/kshark/OnAnalysisProgressListener$Step;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "step:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/kshark/OnAnalysisProgressListener$Step;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", leaking obj size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$findPathsToGcRoot$heapAnalyzer$1;->this$0:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;

    invoke-static {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->access$getMLeakingObjectIds$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OOMMonitor_HeapAnalysisService"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
