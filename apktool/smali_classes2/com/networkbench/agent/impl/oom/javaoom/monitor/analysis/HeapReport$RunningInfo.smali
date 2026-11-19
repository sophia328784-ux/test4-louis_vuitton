.class public Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningInfo"
.end annotation


# instance fields
.field public analysisReason:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public buildModel:Ljava/lang/String;

.field public currentPage:Ljava/lang/String;

.field public deviceMemAvaliable:Ljava/lang/String;

.field public deviceMemTotal:Ljava/lang/String;

.field public dumpReason:Ljava/lang/String;

.field public fdCount:Ljava/lang/String;

.field public fdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filterInstanceTime:Ljava/lang/String;

.field public findGCPathTime:Ljava/lang/String;

.field public heapMetaData:Ljava/lang/String;

.field public jvmMax:Ljava/lang/String;

.field public jvmUsed:Ljava/lang/String;

.field public koomVersion:Ljava/lang/String;

.field public manufacture:Ljava/lang/String;

.field public nowTime:Ljava/lang/String;

.field public pss:Ljava/lang/String;

.field public rss:Ljava/lang/String;

.field public sdkInt:Ljava/lang/String;

.field public threadCount:Ljava/lang/String;

.field public threadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usageSeconds:Ljava/lang/String;

.field public vss:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->threadList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->fdList:Ljava/util/List;

    return-void
.end method
