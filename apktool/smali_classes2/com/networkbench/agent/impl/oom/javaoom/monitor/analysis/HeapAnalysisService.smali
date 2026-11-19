.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u001c\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00140\u0016H\u0002J,\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\t2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00140\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0012\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010\u001e\u001a\u00020\u000eH\u0002J\u0008\u0010\u001f\u001a\u00020\u000eH\u0002J\u0012\u0010 \u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J,\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"0\u00082\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;",
        "Landroid/app/IntentService;",
        "()V",
        "mHeapGraph",
        "Lcom/networkbench/agent/impl/kshark/HeapGraph;",
        "mLeakModel",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;",
        "mLeakReasonTable",
        "",
        "",
        "",
        "mLeakingObjectIds",
        "",
        "buildIndex",
        "",
        "hprofFile",
        "buildJson",
        "intent",
        "Landroid/content/Intent;",
        "calcAllNativeSize",
        "",
        "nativeSizes",
        "",
        "calcuShallowSize",
        "objectId",
        "shallowSizeCalculator",
        "Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;",
        "convertObjectIdToHex",
        "fillJsonFile",
        "jsonFile",
        "filterLeakingObjects",
        "findPathsToGcRoot",
        "onHandleIntent",
        "updateClassObjectCounterMap",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;",
        "classObCountMap",
        "instanceClassId",
        "isLeak",
        "",
        "Companion",
        "ObjectCounter",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final ACTIVITY_CLASS_NAME:Ljava/lang/String; = "android.app.Activity"

.field private static final ANDROIDX_FRAGMENT_CLASS_NAME:Ljava/lang/String; = "androidx.fragment.app.Fragment"

.field public static final BITMAP_CLASS_NAME:Ljava/lang/String; = "android.graphics.Bitmap"

.field public static final Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;

.field private static final DEFAULT_BIG_BITMAP:I = 0x100201

.field private static final DEFAULT_BIG_OBJECT_ARRAY:I = 0x40000

.field private static final DEFAULT_BIG_PRIMITIVE_ARRAY:I = 0x40000

.field private static final DESTROYED_FIELD_NAME:Ljava/lang/String; = "mDestroyed"

.field private static final FINISHED_FIELD_NAME:Ljava/lang/String; = "mFinished"

.field private static final FRAGMENT_MANAGER_FIELD_NAME:Ljava/lang/String; = "mFragmentManager"

.field private static final FRAGMENT_MCALLED_FIELD_NAME:Ljava/lang/String; = "mCalled"

.field private static final NATIVE_ALLOCATION_CLASS_NAME:Ljava/lang/String; = "libcore.util.NativeAllocationRegistry"

.field private static final NATIVE_ALLOCATION_CLEANER_THUNK_CLASS_NAME:Ljava/lang/String; = "libcore.util.NativeAllocationRegistry$CleanerThunk"

.field private static final NATIVE_FRAGMENT_CLASS_NAME:Ljava/lang/String; = "android.app.Fragment"

.field private static final OOM_ANALYSIS_EXCEPTION_TAG:Ljava/lang/String; = "OOMMonitor_Exception"

.field private static final OOM_ANALYSIS_TAG:Ljava/lang/String; = "OOMMonitor"

.field private static final SAME_CLASS_LEAK_OBJECT_PATH_THRESHOLD:I = 0x2d

.field private static final SUPPORT_FRAGMENT_CLASS_NAME:Ljava/lang/String; = "android.support.v4.app.Fragment"

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_HeapAnalysisService"

.field private static final WINDOW_CLASS_NAME:Ljava/lang/String; = "android.view.Window"


# instance fields
.field private mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

.field private final mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

.field private final mLeakReasonTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeakingObjectIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->Companion:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "HeapAnalysisService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getMLeakingObjectIds$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    return-object p0
.end method

.method private final buildIndex(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "start analyze"

    const-string v1, "OOMMonitor_HeapAnalysisService"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/networkbench/agent/impl/kshark/SharkLog;->INSTANCE:Lcom/networkbench/agent/impl/kshark/SharkLog;

    new-instance v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$buildIndex$1;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$buildIndex$1;-><init>()V

    check-cast v2, Lcom/networkbench/agent/impl/kshark/SharkLog$Logger;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/kshark/SharkLog;->setLogger(Lcom/networkbench/agent/impl/kshark/SharkLog$Logger;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/networkbench/agent/impl/kshark/HprofHeapGraph;->Companion:Lcom/networkbench/agent/impl/kshark/HprofHeapGraph$Companion;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    const/4 v5, 0x0

    sget-object v6, Lcom/networkbench/agent/impl/kshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    aput-object v6, p1, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/networkbench/agent/impl/kshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    aput-object v6, p1, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/networkbench/agent/impl/kshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    aput-object v6, p1, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/networkbench/agent/impl/kshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    aput-object v6, p1, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/networkbench/agent/impl/kshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    aput-object v6, p1, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/networkbench/agent/impl/kshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lcom/networkbench/agent/impl/kshark/HprofRecordTag;

    aput-object v6, p1, v5

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Lcom/networkbench/agent/impl/kshark/HprofHeapGraph$Companion;->openHeapGraph(Ljava/io/File;Lcom/networkbench/agent/impl/kshark/ProguardMapping;Ljava/util/Set;)Lcom/networkbench/agent/impl/kshark/CloseableHeapGraph;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/kshark/HeapGraph;

    iput-object p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    const-string v0, "build index cost time: "

    invoke-static {p0, p1, v0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private final buildJson(Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "JAVA_MAX_MEM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->jvmMax:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v2, "JAVA_USED_MEM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->jvmUsed:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v2, "THREAD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->threadCount:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v2, "FD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->fdCount:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v2, "VSS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->vss:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v2, "PSS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->pss:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v2, "RSS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->rss:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v2, "SDK"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->sdkInt:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v2, "MANUFACTURE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object v2, v1

    :goto_8
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->manufacture:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string v2, "MODEL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_9
    move-object v2, v1

    :goto_9
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->buildModel:Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string v2, "USAGE_TIME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_a
    move-object v2, v1

    :goto_a
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->usageSeconds:Ljava/lang/String;

    if-eqz p1, :cond_b

    const-string v2, "CURRENT_PAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->currentPage:Ljava/lang/String;

    if-eqz p1, :cond_c

    const-string v2, "TIME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object v2, v1

    :goto_c
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->nowTime:Ljava/lang/String;

    if-eqz p1, :cond_d

    const-string v2, "DEVICE_MAX_MEM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_d
    move-object v2, v1

    :goto_d
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->deviceMemTotal:Ljava/lang/String;

    if-eqz p1, :cond_e

    const-string v2, "DEVICE_AVA_MEM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_e
    move-object v2, v1

    :goto_e
    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->deviceMemAvaliable:Ljava/lang/String;

    if-eqz p1, :cond_f

    const-string v1, "REASON"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    iput-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->dumpReason:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handle Intent, fdCount:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->fdCount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pss:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->pss:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rss:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->rss:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vss:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->vss:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " threadCount:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->threadCount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OOMMonitor_HeapAnalysisService"

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getFdDumpDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getThreadDumpDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->createDumpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iput-object v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->runningInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    return-void
.end method

.method private final calcAllNativeSize(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private final calcuShallowSize(JLjava/util/Map;Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;",
            ")I"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;->computeShallowSize(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private final convertObjectIdToHex(J)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final fillJsonFile(Ljava/lang/String;)V
    .locals 3

    const-string v0, "JSON write success: "

    new-instance v1, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    invoke-virtual {v1, p0}, Lcom/networkbench/com/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "OOMMonitor"

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JSON write exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v1, p0, p1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private final filterLeakingObjects()V
    .locals 33

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filterLeakingObjects "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OOMMonitor_HeapAnalysisService"

    invoke-static {v4, v3}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    const-string v5, "mHeapGraph"

    if-eqz v3, :cond_23

    const-string v7, "android.app.Activity"

    invoke-interface {v3, v7}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v3

    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v8, :cond_22

    const-string v9, "androidx.fragment.app.Fragment"

    invoke-interface {v8, v9}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v8, :cond_21

    const-string v9, "android.app.Fragment"

    invoke-interface {v8, v9}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v8, :cond_20

    const-string v9, "android.support.v4.app.Fragment"

    invoke-interface {v8, v9}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v8

    :goto_1
    iget-object v9, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v9, :cond_1f

    const-string v10, "android.graphics.Bitmap"

    invoke-interface {v9, v10}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v9

    iget-object v11, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v11, :cond_1e

    const-string v12, "libcore.util.NativeAllocationRegistry"

    invoke-interface {v11, v12}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v11

    iget-object v12, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v12, :cond_1d

    const-string v13, "libcore.util.NativeAllocationRegistry$CleanerThunk"

    invoke-interface {v12, v13}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v12

    iget-object v13, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v13, :cond_1c

    const-string v14, "android.view.Window"

    invoke-interface {v13, v14}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v13

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    iget-object v6, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v6, :cond_1b

    invoke-interface {v6}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->getInstances()Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    move-wide/from16 v18, v1

    const-string v1, " recordSize:"

    const-string v2, " objectId:"

    const-wide v20, 0xffffffffL

    move-object/from16 v22, v3

    const-string v3, "OOMMonitor"

    if-eqz v17, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v23, v5

    move-object/from16 v5, v17

    check-cast v5, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->isPrimitiveWrapper()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v28, v4

    move-object/from16 v25, v6

    move-object/from16 v17, v8

    move-object/from16 v24, v9

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    goto/16 :goto_6

    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v24, v9

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassId()J

    move-result-wide v8

    move-object/from16 v25, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lkotlin/Pair;

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClass()Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v27, v11

    add-int/lit8 v11, v26, -0x2

    invoke-static {v11, v6}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    const-wide/16 v28, 0x0

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v30

    goto :goto_3

    :cond_4
    move-wide/from16 v30, v28

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x5

    invoke-static {v11, v6}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v28

    :cond_5
    new-instance v6, Lkotlin/Pair;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v26, v12

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v11, v6, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    iget-object v6, v6, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v28

    const/4 v6, 0x1

    if-eqz v22, :cond_8

    invoke-virtual/range {v22 .. v22}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v31

    cmp-long v28, v31, v28

    if-nez v28, :cond_8

    const-string v11, "mDestroyed"

    invoke-virtual {v5, v7, v11}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapField;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "mFinished"

    invoke-virtual {v5, v7, v12}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapField;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsBoolean()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_6

    invoke-virtual {v12}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsBoolean()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_7

    :cond_6
    invoke-direct {v0, v15, v8, v9, v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->updateClassObjectCounterMap(Ljava/util/Map;JZ)Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "activity name : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mDestroyed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsBoolean()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mFinished:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsBoolean()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v11

    and-long v11, v11, v20

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " objectId tt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getRecordSize()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " objectIdOO:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v11

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v11, v12, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->getLeakCnt()I

    move-result v1

    const/16 v6, 0x2d

    if-gt v1, v6, :cond_7

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Activity Leak"

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    move-object/from16 v28, v4

    goto/16 :goto_6

    :cond_8
    const/4 v6, 0x0

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v31

    cmp-long v29, v31, v11

    if-nez v29, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mFragmentManager"

    invoke-virtual {v5, v11, v12}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapField;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsObject()Lcom/networkbench/agent/impl/kshark/HeapObject;

    move-result-object v11

    if-nez v11, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mCalled"

    invoke-virtual {v5, v11, v12}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapField;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsBoolean()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v6, 0x1

    :cond_9
    invoke-direct {v0, v15, v8, v9, v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->updateClassObjectCounterMap(Ljava/util/Map;JZ)Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "fragment name:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isLeak:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->getLeakCnt()I

    move-result v8

    const/16 v9, 0x2d

    if-gt v8, v9, :cond_7

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "Fragment Leak"

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getRecordSize()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_a
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v31

    cmp-long v29, v31, v11

    if-nez v29, :cond_b

    const-string v6, "mWidth"

    invoke-virtual {v5, v10, v6}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapField;

    move-result-object v6

    const-string v11, "mHeight"

    invoke-virtual {v5, v10, v11}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/kshark/HeapField;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsInt()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapField;->getValue()Lcom/networkbench/agent/impl/kshark/HeapValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/HeapValue;->getAsInt()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int v12, v6, v11

    move-object/from16 v29, v5

    const v5, 0x100201

    if-lt v12, v5, :cond_7

    const/4 v5, 0x1

    invoke-direct {v0, v15, v8, v9, v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->updateClassObjectCounterMap(Ljava/util/Map;JZ)Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "suspect leak! bitmap name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " width: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->getLeakCnt()I

    move-result v5

    const/16 v9, 0x2d

    if-gt v5, v9, :cond_7

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v28, v4

    const-string v4, "Bitmap Size Over Threshold, "

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getRecordSize()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;-><init>()V

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->className:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->size:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->extDetail:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v2

    and-long v2, v2, v20

    invoke-direct {v0, v2, v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->objectId:Ljava/lang/String;

    iget-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v2, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->leakObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object/from16 v28, v4

    if-eqz v27, :cond_c

    invoke-virtual/range {v27 .. v27}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-eqz v1, :cond_e

    :cond_c
    if-eqz v26, :cond_d

    invoke-virtual/range {v26 .. v26}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-eqz v1, :cond_e

    :cond_d
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-nez v1, :cond_f

    :cond_e
    invoke-direct {v0, v15, v8, v9, v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->updateClassObjectCounterMap(Ljava/util/Map;JZ)Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    :cond_f
    :goto_6
    move-object/from16 v8, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v25

    move-object/from16 v12, v26

    move-object/from16 v11, v27

    move-object/from16 v4, v28

    goto/16 :goto_2

    :cond_10
    move-object/from16 v23, v5

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    new-instance v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;

    invoke-direct {v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;-><init>()V

    iget-object v9, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v9, :cond_12

    invoke-interface {v9, v6, v7}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->findObjectById(J)Lcom/networkbench/agent/impl/kshark/HeapObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/HeapObject;->getAsClass()Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_11
    move-object/from16 v6, v16

    :goto_8
    iput-object v6, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;->className:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->getAllCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;->instanceCount:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "leakClass.className: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " leakClass.objectCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$ClassInfo;->instanceCount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v5, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->classInfos:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_13
    iget-object v4, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->getPrimitiveArrays()Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, 0x40000

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getRecordSize()I

    move-result v7

    if-lt v7, v6, :cond_14

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getPrimitiveType()Lcom/networkbench/agent/impl/kshark/PrimitiveType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/kshark/PrimitiveType;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " size:"

    const-string v10, " typeName:"

    const-string v11, "suspect leak! primitive arrayName:"

    invoke-static {v7, v11, v6, v9, v10}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", objectId:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v10

    and-long v10, v10, v20

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", hexObjectId:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v10

    and-long v10, v10, v20

    invoke-direct {v0, v10, v11}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", toString:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Primitive Array Size Over Threshold, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;

    invoke-direct {v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;-><init>()V

    iput-object v6, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->className:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->size:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v5

    and-long v5, v5, v20

    invoke-direct {v0, v5, v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->objectId:Ljava/lang/String;

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v5, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->leakObjects:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_15
    iget-object v4, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v4, :cond_19

    invoke-interface {v4}, Lcom/networkbench/agent/impl/kshark/HeapGraph;->getObjectArrays()Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapObjectArray;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapObjectArray;->getRecordSize()I

    move-result v7

    if-lt v7, v6, :cond_16

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "object arrayName:"

    invoke-static {v9, v8, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapObjectArray;->getObjectId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapObjectArray;->getObjectId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;

    invoke-direct {v9}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;-><init>()V

    iput-object v8, v9, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->className:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->size:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/HeapObject$HeapObjectArray;->getObjectId()J

    move-result-wide v7

    and-long v7, v7, v20

    invoke-direct {v0, v7, v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$LeakObject;->objectId:Ljava/lang/String;

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v5, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->leakObjects:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v0, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->runningInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_18

    sub-long v5, v1, v18

    long-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->filterInstanceTime:Ljava/lang/String;

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "filterLeakingObjects time:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v1, v1, v18

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1a
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1b
    move-object/from16 v23, v5

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1c
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1d
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1e
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1f
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_20
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_21
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_22
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_23
    move-object/from16 v23, v5

    const/16 v16, 0x0

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16
.end method

.method private final findPathsToGcRoot()V
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer;

    new-instance v4, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$findPathsToGcRoot$heapAnalyzer$1;

    invoke-direct {v4, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$findPathsToGcRoot$heapAnalyzer$1;-><init>(Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;)V

    check-cast v4, Lcom/networkbench/agent/impl/kshark/OnAnalysisProgressListener;

    invoke-direct {v3, v4}, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer;-><init>(Lcom/networkbench/agent/impl/kshark/OnAnalysisProgressListener;)V

    new-instance v4, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$FindLeakInput;

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    const-string v6, "mHeapGraph"

    const/4 v7, 0x0

    if-eqz v5, :cond_18

    sget-object v8, Lcom/networkbench/agent/impl/kshark/AndroidReferenceMatchers;->Companion:Lcom/networkbench/agent/impl/kshark/AndroidReferenceMatchers$Companion;

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/kshark/AndroidReferenceMatchers$Companion;->getAppDefaults()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    invoke-direct {v4, v5, v8, v10, v9}, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$FindLeakInput;-><init>(Lcom/networkbench/agent/impl/kshark/HeapGraph;Ljava/util/List;ZLjava/util/List;)V

    iget-object v5, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakingObjectIds:Ljava/util/Set;

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer;->findLeaks(Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$FindLeakInput;Ljava/util/Set;)Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$LeaksAndUnreachableObjects;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$LeaksAndUnreachableObjects;->component1()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$LeaksAndUnreachableObjects;->component2()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/HeapAnalyzer$LeaksAndUnreachableObjects;->component3()Ljava/util/List;

    new-instance v3, Lcom/networkbench/agent/impl/kshark/internal/AndroidNativeSizeMapper;

    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v8, :cond_17

    invoke-direct {v3, v8}, Lcom/networkbench/agent/impl/kshark/internal/AndroidNativeSizeMapper;-><init>(Lcom/networkbench/agent/impl/kshark/HeapGraph;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/internal/AndroidNativeSizeMapper;->mapNativeSizes()Ljava/util/Map;

    move-result-object v3

    new-instance v8, Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;

    iget-object v9, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v9, :cond_16

    invoke-direct {v8, v9}, Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;-><init>(Lcom/networkbench/agent/impl/kshark/HeapGraph;)V

    sget-object v9, Lcom/networkbench/agent/impl/kshark/AndroidMetadataExtractor;->INSTANCE:Lcom/networkbench/agent/impl/kshark/AndroidMetadataExtractor;

    iget-object v10, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mHeapGraph:Lcom/networkbench/agent/impl/kshark/HeapGraph;

    if-eqz v10, :cond_15

    invoke-virtual {v9, v10}, Lcom/networkbench/agent/impl/kshark/AndroidMetadataExtractor;->extractMetadata(Lcom/networkbench/agent/impl/kshark/HeapGraph;)Ljava/util/Map;

    move-result-object v6

    const-string v9, "OOMMonitor"

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "OOMMmetadata "

    const-string v14, " == "

    invoke-static {v13, v12, v14, v11}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v10, "Heap total bytes"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcAllNativeSize(Ljava/util/Map;)I

    move-result v11

    add-int/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "totalNativeCount:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcAllNativeSize(Ljava/util/Map;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", heapMetaData:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v6, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->runningInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->heapMetaData:Ljava/lang/String;

    :cond_2
    const-string v6, "---------------------------Application Leak---------------------------------------"

    invoke-static {v9, v6}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ApplicationLeak size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v10, "["

    const-string v11, ", declaredClassName:"

    const-string v12, ", referenceType:"

    const-string v13, ", referenceGenericName:"

    const-string v14, ", referenceDisplayName:"

    const-string v15, ", referenceName:"

    const-string v7, "clazz:"

    move-wide/from16 v16, v1

    const-string v1, ", leaking obj:"

    const-string v2, ", leaking reason:"

    move-object/from16 v18, v4

    const-string v4, ", labels:"

    move-object/from16 v19, v5

    const-string v5, "GC Root:"

    const-string v20, "null cannot be cast to non-null type kotlin.Array<T>"

    const-wide v21, 0xffffffffL

    move/from16 v23, v6

    if-eqz v23, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v25, v10

    const-string v10, "shortDescription:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getShortDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", signature:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " same leak size:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " totalRetainedHeapByteSize:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getTotalRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " totalRetainedCount:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getTotalRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/kshark/LeakTrace;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->component1()Lcom/networkbench/agent/impl/kshark/LeakTrace$GcRootType;

    move-result-object v24

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->component2()Ljava/util/List;

    move-result-object v26

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->component3()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/networkbench/agent/impl/kshark/LeakTrace$GcRootType;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getLabels()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v28, v11

    move-object/from16 v11, v24

    check-cast v11, Ljava/util/Collection;

    move-object/from16 v29, v3

    move-object/from16 v27, v8

    const/4 v3, 0x0

    new-array v8, v3, [Ljava/lang/String;

    invoke-interface {v11, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, [Ljava/lang/String;

    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->setLeakingStatusReason(Ljava/lang/String;)V

    const-string v8, ", leakObjClazz:"

    invoke-static {v5, v10, v8}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", leakObjType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", retainedHeapByteSize:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", retainedObjectCount:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getLeakingStatusReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v1

    and-long v1, v1, v21

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->instanceCount:Ljava/lang/Integer;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getLeakingStatusReason()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->leakReason:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v2

    and-long v2, v2, v21

    invoke-direct {v0, v2, v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->leakObjectId:Ljava/lang/String;

    iput-object v10, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->gcRoot:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getSignature()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->signature:Ljava/lang/String;

    iget-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v2, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->gcPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceGenericName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceType()Lcom/networkbench/agent/impl/kshark/LeakTraceReference$ReferenceType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference$ReferenceType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOwningClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v5, v15, v4, v14}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v6, v13, v8, v12}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reference.originObject.retainedSize:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", reference.originObject.ObjectCount:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", shallowSize:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v8

    move-object/from16 v20, v2

    move-object/from16 v26, v3

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v2

    move-object/from16 v8, v27

    move-object/from16 v27, v12

    move-object v12, v8

    move-object/from16 v8, v29

    invoke-direct {v0, v2, v3, v8, v12}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcuShallowSize(JLjava/util/Map;Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;-><init>()V

    move-object/from16 v4, v25

    const/4 v3, 0x0

    invoke-static {v6, v4, v3}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->reference:Ljava/lang/String;

    iput-object v10, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceType:Ljava/lang/String;

    iput-object v11, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->declaredClass:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    iput v3, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedObjectCount:I

    invoke-virtual/range {v26 .. v26}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput v3, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedHeapByteSize:I

    invoke-virtual/range {v26 .. v26}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v5

    and-long v5, v5, v21

    invoke-direct {v0, v5, v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceId:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v8, v12}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcuShallowSize(JLjava/util/Map;Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;)I

    move-result v3

    iput v3, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->shallowSize:I

    iget-object v3, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->path:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v27

    move-object/from16 v27, v12

    move-object v12, v2

    move-object/from16 v25, v4

    move-object/from16 v29, v8

    move-object/from16 v2, v20

    goto/16 :goto_2

    :cond_6
    move-object/from16 v12, v27

    move-object/from16 v8, v29

    invoke-virtual/range {v23 .. v23}, Lcom/networkbench/agent/impl/kshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/kshark/LeakTrace;

    iget-object v4, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->selfTracePath:Ljava/util/List;

    new-instance v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;-><init>()V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->reference:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getTypeName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceType:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    iput v6, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedObjectCount:I

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    iput v6, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedHeapByteSize:I

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v6

    and-long v6, v6, v21

    invoke-direct {v0, v6, v7}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v6

    invoke-direct {v0, v6, v7, v8, v12}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcuShallowSize(JLjava/util/Map;Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;)I

    move-result v3

    iput v3, v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->shallowSize:I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object v3, v8

    move-object v8, v12

    move-wide/from16 v1, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    :cond_a
    invoke-static/range {v20 .. v20}, Lr81;->d(Ljava/lang/String;)V

    return-void

    :cond_b
    move-object/from16 v28, v11

    move-object/from16 v27, v12

    move-object v12, v8

    move-object v8, v3

    move-object v3, v10

    const-string v6, "======================================================================="

    invoke-static {v9, v6}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "----------------------------Library Leak--------------------------------------"

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LibraryLeak size:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/networkbench/agent/impl/kshark/LibraryLeak;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    const-string v10, "description:"

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", shortDescription:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getShortDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", pattern:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getPattern()Lcom/networkbench/agent/impl/kshark/ReferencePattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/ReferencePattern;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/networkbench/agent/impl/kshark/LeakTrace;

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->component1()Lcom/networkbench/agent/impl/kshark/LeakTrace$GcRootType;

    move-result-object v19

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->component2()Ljava/util/List;

    move-result-object v23

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->component3()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/networkbench/agent/impl/kshark/LeakTrace$GcRootType;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getLabels()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v25, v6

    move-object/from16 v6, v19

    check-cast v6, Ljava/util/Collection;

    move-object/from16 v29, v8

    move-object/from16 v19, v12

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/String;

    invoke-interface {v6, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    check-cast v6, [Ljava/lang/String;

    iget-object v8, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakReasonTable:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->setLeakingStatusReason(Ljava/lang/String;)V

    const-string v8, ", leakClazz:"

    invoke-static {v5, v11, v8}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getLeakingStatusReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v1

    and-long v1, v1, v21

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->instanceCount:Ljava/lang/Integer;

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getLeakingStatusReason()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->leakReason:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v4

    and-long v4, v4, v21

    invoke-direct {v0, v4, v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->leakObjectId:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getSignature()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->signature:Ljava/lang/String;

    iput-object v11, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->gcRoot:Ljava/lang/String;

    iget-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v2, v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->gcPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceGenericName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getReferenceType()Lcom/networkbench/agent/impl/kshark/LeakTraceReference$ReferenceType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference$ReferenceType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOwningClassName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v5, v15, v6, v14}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v20, v2

    move-object/from16 v2, v27

    invoke-static {v6, v8, v13, v10, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v28

    invoke-static {v6, v11, v10, v12}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;

    invoke-direct {v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;-><init>()V

    const/4 v2, 0x0

    invoke-static {v8, v3, v2}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_c

    move-object v2, v5

    const/16 v5, 0x2e

    goto :goto_a

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    iput-object v2, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->reference:Ljava/lang/String;

    iput-object v11, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceType:Ljava/lang/String;

    iput-object v12, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->declaredClass:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    iput v2, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedObjectCount:I

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    :goto_c
    iput v2, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedHeapByteSize:I

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v11

    and-long v11, v11, v21

    invoke-direct {v0, v11, v12}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceReference;->getOriginObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v11

    move-object/from16 v2, v19

    move-object/from16 v8, v29

    invoke-direct {v0, v11, v12, v8, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcuShallowSize(JLjava/util/Map;Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;)I

    move-result v4

    iput v4, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->shallowSize:I

    iget-object v4, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->path:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v10

    move-object/from16 v2, v20

    goto/16 :goto_9

    :cond_f
    move-object/from16 v2, v19

    move-object/from16 v8, v29

    invoke-virtual/range {v18 .. v18}, Lcom/networkbench/agent/impl/kshark/LibraryLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/kshark/LeakTrace;

    iget-object v5, v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath;->selfTracePath:Ljava/util/List;

    new-instance v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;

    invoke-direct {v6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;-><init>()V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->reference:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getTypeName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceType:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    :goto_e
    iput v10, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedObjectCount:I

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_f

    :cond_11
    const/4 v10, 0x0

    :goto_f
    iput v10, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->retainedHeapByteSize:I

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v10

    and-long v10, v10, v21

    invoke-direct {v0, v10, v11}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->convertObjectIdToHex(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->referenceId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTrace;->getLeakingObject()Lcom/networkbench/agent/impl/kshark/LeakTraceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/kshark/LeakTraceObject;->getObjectId()J

    move-result-wide v10

    invoke-direct {v0, v10, v11, v8, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->calcuShallowSize(JLjava/util/Map;Lcom/networkbench/agent/impl/kshark/internal/ShallowSizeCalculator;)I

    move-result v4

    iput v4, v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$GCPath$PathItem;->shallowSize:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    move-object/from16 v1, v25

    goto :goto_10

    :cond_13
    invoke-static/range {v20 .. v20}, Lr81;->d(Ljava/lang/String;)V

    return-void

    :cond_14
    move-object v1, v6

    :goto_10
    invoke-static {v9, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->mLeakModel:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;

    iget-object v0, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport;->runningInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long v1, v1, v16

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapReport$RunningInfo;->findGCPathTime:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "findPathsToGcRoot cost time: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_16
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_17
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_18
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7
.end method

.method private final updateClassObjectCounterMap(Ljava/util/Map;JZ)Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;",
            ">;JZ)",
            "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->getAllCnt()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->setAllCnt(I)V

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->getLeakCnt()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService$ObjectCounter;->setLeakCnt(I)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "OOMMonitor_HeapAnalysisService"

    const-string v1, "onHandleIntent happened"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "RESULT_RECEIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "HPROF_FILE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_2

    const-string v3, "JSON_FILE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_3

    const-string v4, "ROOT_PATH"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    invoke-static {v4}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->init(Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->buildIndex(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v4

    :goto_4
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/16 v4, 0x3ea

    const/4 v5, 0x1

    const-string v6, "OOMMonitor_Exception"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "build index exception "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0, v5}, Lcom/networkbench/agent/impl/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_4
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->buildJson(Landroid/content/Intent;)V

    :try_start_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->filterLeakingObjects()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "find leak objects exception "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0, v5}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->findPathsToGcRoot()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "find gc path exception "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0, v5}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_6
    :goto_7
    return-void

    :cond_7
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/HeapAnalysisService;->fillJsonFile(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    const/16 p0, 0x3e9

    invoke-virtual {v1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_8
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
