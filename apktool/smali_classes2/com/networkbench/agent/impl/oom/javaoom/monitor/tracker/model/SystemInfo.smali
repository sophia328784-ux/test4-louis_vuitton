.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;,
        Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0003<=>B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\u0013\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0.\u00a2\u0006\u0002\u0010/J9\u00100\u001a\u00020,*\u0002012\u0008\u0008\u0002\u00102\u001a\u0002032!\u00104\u001a\u001d\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00020,05H\u0002J\u0014\u00109\u001a\u00020:*\u00020\u00042\u0006\u0010;\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001a\"\u0004\u0008%\u0010\u001cR\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010 \"\u0004\u0008(\u0010\"\u00a8\u0006?"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;",
        "",
        "()V",
        "MEM_AVA_REGEX",
        "Lkotlin/text/Regex;",
        "MEM_CMA_REGEX",
        "MEM_FREE_REGEX",
        "MEM_ION_REGEX",
        "MEM_TOTAL_REGEX",
        "RSS_REGEX",
        "TAG",
        "",
        "THREADS_REGEX",
        "VSS_REGEX",
        "javaHeap",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;",
        "getJavaHeap",
        "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;",
        "setJavaHeap",
        "(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;)V",
        "lastJavaHeap",
        "getLastJavaHeap",
        "setLastJavaHeap",
        "lastMemInfo",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;",
        "getLastMemInfo",
        "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;",
        "setLastMemInfo",
        "(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;)V",
        "lastProcStatus",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;",
        "getLastProcStatus",
        "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;",
        "setLastProcStatus",
        "(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;)V",
        "memInfo",
        "getMemInfo",
        "setMemInfo",
        "procStatus",
        "getProcStatus",
        "setProcStatus",
        "isSupportArm64",
        "",
        "refresh",
        "",
        "supportedAbis",
        "",
        "()[Ljava/lang/String;",
        "forEachLineQuietly",
        "Ljava/io/File;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "line",
        "matchValue",
        "",
        "s",
        "JavaHeap",
        "MemInfo",
        "ProcStatus",
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
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

.field private static final MEM_AVA_REGEX:Lkotlin/text/Regex;

.field private static final MEM_CMA_REGEX:Lkotlin/text/Regex;

.field private static final MEM_FREE_REGEX:Lkotlin/text/Regex;

.field private static final MEM_ION_REGEX:Lkotlin/text/Regex;

.field private static final MEM_TOTAL_REGEX:Lkotlin/text/Regex;

.field private static final RSS_REGEX:Lkotlin/text/Regex;

.field private static final TAG:Ljava/lang/String; = "OOMMonitor_SystemInfo"

.field private static final THREADS_REGEX:Lkotlin/text/Regex;

.field private static final VSS_REGEX:Lkotlin/text/Regex;

.field private static javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

.field private static lastJavaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

.field private static lastMemInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

.field private static lastProcStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

.field private static memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

.field private static procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "VmSize:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->VSS_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "VmRSS:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->RSS_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Threads:\\s*(\\d+)\\s*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->THREADS_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "MemTotal:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_TOTAL_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "MemFree:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_FREE_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "MemAvailable:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_AVA_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "CmaTotal:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_CMA_REGEX:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "ION_heap:\\s*(\\d+)\\s*kB"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_ION_REGEX:Lkotlin/text/Regex;

    new-instance v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    new-instance v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastProcStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    new-instance v4, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;-><init>(IIIIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    new-instance v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    const/16 v12, 0x3f

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;-><init>(IIIIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastMemInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    new-instance v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    const/16 v16, 0x1f

    const/16 v17, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v6 .. v17}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;-><init>(JJJJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    new-instance v7, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v18}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;-><init>(JJJJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastJavaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMEM_AVA_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_AVA_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getMEM_CMA_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_CMA_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getMEM_FREE_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_FREE_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getMEM_ION_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_ION_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getMEM_TOTAL_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->MEM_TOTAL_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getRSS_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->RSS_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getTHREADS_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->THREADS_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getVSS_REGEX$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;)Lkotlin/text/Regex;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->VSS_REGEX:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$matchValue(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Lkotlin/text/Regex;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->matchValue(Lkotlin/text/Regex;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final forEachLineQuietly(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->a(Ljava/io/BufferedReader;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static synthetic forEachLineQuietly$default(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->forEachLineQuietly(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final matchValue(Lkotlin/text/Regex;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    const-string p1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1}, Lr81;->d(Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public final getJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    return-object p0
.end method

.method public final getLastJavaHeap()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastJavaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    return-object p0
.end method

.method public final getLastMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastMemInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    return-object p0
.end method

.method public final getLastProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastProcStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    return-object p0
.end method

.method public final getMemInfo()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    return-object p0
.end method

.method public final getProcStatus()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    return-object p0
.end method

.method public final isSupportArm64()Z
    .locals 1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->supportedAbis()[Ljava/lang/String;

    move-result-object p0

    const-string v0, "arm64-v8a"

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final refresh()V
    .locals 15

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastJavaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastMemInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastProcStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    new-instance v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;-><init>(JJJJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    new-instance v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    new-instance v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;-><init>(IIIIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->setMax(J)V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->setTotal(J)V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->setFree(J)V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getTotal()J

    move-result-wide v1

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getFree()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->setUsed(J)V

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getUsed()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getMax()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->setRate(F)V

    new-instance v4, Ljava/io/File;

    const-string v0, "/proc/self/status"

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$1;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->forEachLineQuietly$default(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    new-instance v10, Ljava/io/File;

    const-string p0, "/proc/meminfo"

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$refresh$2;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v3

    invoke-static/range {v9 .. v14}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->forEachLineQuietly$default(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getAvailableInKb()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getTotalInKb()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->setRate(F)V

    const-string p0, "----OOM Monitor Memory----"

    const-string v0, "OOMMonitor_SystemInfo"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[java] max:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getMax()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " used ratio:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->getRate()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v3, 0x25

    invoke-static {p0, v1, v3}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[proc] VmSize:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getVssInKb()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "kB VmRss:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getRssInKb()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "kB Threads:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->getThread()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[meminfo] MemTotal:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getTotalInKb()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "kB MemFree:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getFreeInKb()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "kB MemAvailable:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getAvailableInKb()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "kB"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "avaliable ratio:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getRate()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% CmaTotal:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getCmaTotal()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kB ION_heap:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->getIONHeap()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setJavaHeap(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->javaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    return-void
.end method

.method public final setLastJavaHeap(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastJavaHeap:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    return-void
.end method

.method public final setLastMemInfo(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastMemInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    return-void
.end method

.method public final setLastProcStatus(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->lastProcStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    return-void
.end method

.method public final setMemInfo(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->memInfo:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    return-void
.end method

.method public final setProcStatus(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;->procStatus:Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    return-void
.end method

.method public final supportedAbis()[Ljava/lang/String;
    .locals 4

    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    new-array p0, v1, [Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v0, p0, v2

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
