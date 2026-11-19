.class Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostCrashReportThread"
.end annotation


# instance fields
.field private final isRootEvent:Z

.field private final monitoringData:Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

.field private final serverConfig:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

.field private final serverId:I

.field private final sessionId:I

.field private successfully:Z

.field final synthetic this$0:Lcom/dynatrace/android/agent/CommunicationManager;

.field private final visitorId:J


# direct methods
.method private constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJI)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->successfully:Z

    const-string p1, "POST CrashReport"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->serverConfig:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-object p3, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->monitoringData:Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

    iput p4, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->serverId:I

    iput-boolean p5, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->isRootEvent:Z

    iput-wide p6, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->visitorId:J

    iput p8, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->sessionId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJILcom/dynatrace/android/agent/CommunicationManager$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p8}, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJI)V

    return-void
.end method

.method public static synthetic access$300(Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;)Z
    .locals 0

    invoke-direct {p0}, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->hasBeenSuccessfully()Z

    move-result p0

    return p0
.end method

.method private hasBeenSuccessfully()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->successfully:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->serverConfig:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-object v2, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->monitoringData:Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

    iget v3, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->serverId:I

    iget-boolean v4, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->isRootEvent:Z

    iget-wide v5, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->visitorId:J

    iget v7, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->sessionId:I

    sget-object v8, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/dynatrace/android/agent/CommunicationManager;->e(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->successfully:Z

    return-void
.end method
