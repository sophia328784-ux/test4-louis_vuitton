.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0007J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u001c\u0010\'\u001a\u00020(2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0012H\u0007J\u0012\u0010\'\u001a\u00020(2\u0008\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010+\u001a\u00020,H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR!\u0010\u000c\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u000b\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R!\u0010\u0014\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000b\u0012\u0004\u0008\u0015\u0010\u0002\u001a\u0004\u0008\u0016\u0010\tR\u001b\u0010\u0018\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u0019\u0010\tR!\u0010\u001b\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u000b\u0012\u0004\u0008\u001c\u0010\u0002\u001a\u0004\u0008\u001d\u0010\t\u00a8\u0006-"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;",
        "",
        "()V",
        "TIME_FORMAT",
        "",
        "fdDumpDir",
        "Ljava/io/File;",
        "getFdDumpDir$annotations",
        "getFdDumpDir",
        "()Ljava/io/File;",
        "fdDumpDir$delegate",
        "Lkotlin/Lazy;",
        "hprofAnalysisDir",
        "getHprofAnalysisDir$annotations",
        "getHprofAnalysisDir",
        "hprofAnalysisDir$delegate",
        "mPrefix",
        "mRootDirInvoker",
        "Lkotlin/Function1;",
        "mRootPath",
        "manualDumpDir",
        "getManualDumpDir$annotations",
        "getManualDumpDir",
        "manualDumpDir$delegate",
        "rootDir",
        "getRootDir",
        "rootDir$delegate",
        "threadDumpDir",
        "getThreadDumpDir$annotations",
        "getThreadDumpDir",
        "threadDumpDir$delegate",
        "createDumpFile",
        "dumpDir",
        "createHprofAnalysisFile",
        "date",
        "Ljava/util/Date;",
        "createHprofOOMDumpFile",
        "createJsonAnalysisFile",
        "createOOMContextFile",
        "init",
        "",
        "rootDirInvoker",
        "rootPath",
        "isSpaceEnough",
        "",
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
.field public static final INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_HH-mm-ss_SSS"

.field private static final fdDumpDir$delegate:Lkotlin/Lazy;

.field private static final hprofAnalysisDir$delegate:Lkotlin/Lazy;

.field private static mPrefix:Ljava/lang/String;

.field private static mRootDirInvoker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static mRootPath:Ljava/lang/String;

.field private static final manualDumpDir$delegate:Lkotlin/Lazy;

.field private static final rootDir$delegate:Lkotlin/Lazy;

.field private static final threadDumpDir$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$rootDir$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->rootDir$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$hprofAnalysisDir$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$hprofAnalysisDir$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->hprofAnalysisDir$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$manualDumpDir$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$manualDumpDir$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->manualDumpDir$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$threadDumpDir$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$threadDumpDir$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->threadDumpDir$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$fdDumpDir$2;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager$fdDumpDir$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->fdDumpDir$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMRootDirInvoker$li(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMRootDirInvoker$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mRootDirInvoker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMRootPath$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootPath:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mRootPath"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setMRootDirInvoker$li(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setMRootDirInvoker$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setMRootPath$p(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootPath:Ljava/lang/String;

    return-void
.end method

.method public static final createDumpFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    const-string v1, "dump.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static final createHprofAnalysisFile(Ljava/util/Date;)Ljava/io/File;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, ".hprof"

    invoke-static {v2, v3, p0, v4}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    :cond_0
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final createHprofOOMDumpFile(Ljava/util/Date;)Ljava/io/File;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getManualDumpDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, ".hprof"

    invoke-static {v2, v3, p0, v4}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getManualDumpDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    :cond_0
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final createJsonAnalysisFile(Ljava/util/Date;)Ljava/io/File;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, ".json"

    invoke-static {v2, v3, p0, v4}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    :cond_0
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final createOOMContextFile(Ljava/util/Date;)Ljava/io/File;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, ".content"

    invoke-static {v2, v3, p0, v4}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    :cond_0
    const-string p0, "mPrefix"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final getFdDumpDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->fdDumpDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getFdDumpDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getHprofAnalysisDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->hprofAnalysisDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getHprofAnalysisDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getManualDumpDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->manualDumpDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getManualDumpDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getThreadDumpDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->threadDumpDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getThreadDumpDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final init(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    .line 23
    sput-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootPath:Ljava/lang/String;

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getVERSION_NAME()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    .line 25
    invoke-static {p0, v0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 26
    sput-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public static final init(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/base/MonitorBuildConfig;->getVERSION_NAME()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-static {p0, v0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public static final isSpaceEnough()Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v1, v3

    long-to-double v0, v1

    const-wide v2, 0x4133333333333333L    # 1258291.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getRootDir()Ljava/io/File;
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;->rootDir$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method
