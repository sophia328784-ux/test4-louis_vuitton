.class public Lcom/networkbench/agent/impl/crash/oom/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/base/InitTask;


# static fields
.field public static final a:Lcom/networkbench/agent/impl/crash/oom/c;

.field private static final b:Ljava/lang/String; = "OOMJavaMonitorTask"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/oom/c;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/crash/oom/c;->a:Lcom/networkbench/agent/impl/crash/oom/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/crash/oom/c;Ljava/lang/String;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/crash/oom/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/networkbench/agent/impl/util/a;->a:Lcom/networkbench/agent/impl/util/a;

    invoke-static {p1}, Lcom/networkbench/agent/impl/crash/oom/g;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/a;->c(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1

    new-instance p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->setEnableHprofDumpAnalysis(Z)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/c$2;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/crash/oom/c$2;-><init>(Lcom/networkbench/agent/impl/crash/oom/c;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->setHprofUploader(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/c$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/crash/oom/c$1;-><init>(Lcom/networkbench/agent/impl/crash/oom/c;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->setReportUploader(Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;->build()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/base/MonitorManager;->addMonitorConfig(Lcom/networkbench/agent/impl/base/MonitorConfig;)Lcom/networkbench/agent/impl/base/MonitorManager;

    return-void
.end method
