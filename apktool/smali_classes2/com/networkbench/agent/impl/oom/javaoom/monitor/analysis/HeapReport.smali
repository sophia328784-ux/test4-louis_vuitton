.class public Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;
    }
.end annotation


# instance fields
.field public analysisDone:Ljava/lang/Boolean;

.field public classInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field public gcPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;",
            ">;"
        }
    .end annotation
.end field

.field public leakObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;",
            ">;"
        }
    .end annotation
.end field

.field public reAnalysisTimes:Ljava/lang/Integer;

.field public runningInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->runningInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->gcPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->classInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->leakObjects:Ljava/util/List;

    return-void
.end method
