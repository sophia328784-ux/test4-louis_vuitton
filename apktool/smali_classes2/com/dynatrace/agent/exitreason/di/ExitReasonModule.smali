.class public final Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "",
        "retentionTime",
        "Lcom/dynatrace/agent/RumEventDispatcher;",
        "rumEventDispatcher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/metrics/MetricsRepository;",
        "metricsRepository",
        "Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;",
        "exitReasonTimestampDataSource",
        "",
        "isNativeCrashReportingEnabled",
        "isAnrReportingEnabled",
        "<init>",
        "(Landroid/content/Context;Lcom/dynatrace/agent/common/time/TimeProvider;JLcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;ZZ)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:J

.field public final d:Lcom/dynatrace/agent/RumEventDispatcher;

.field public final e:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final f:Lcom/dynatrace/agent/metrics/MetricsRepository;

.field public final g:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dynatrace/agent/common/time/TimeProvider;JLcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-wide p3, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->c:J

    iput-object p5, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->d:Lcom/dynatrace/agent/RumEventDispatcher;

    iput-object p6, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->e:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p7, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->f:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iput-object p8, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->g:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    iput-boolean p9, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->h:Z

    iput-boolean p10, p0, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dynatrace/agent/common/time/TimeProvider;JLcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_0

    .line 40
    sget v0, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->b:I

    .line 41
    sget-wide v0, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->a:J

    .line 42
    invoke-static {v0, v1}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v0

    move-wide v5, v0

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    goto :goto_1

    :cond_0
    move-wide/from16 v5, p3

    goto :goto_0

    .line 43
    :goto_1
    invoke-direct/range {v2 .. v12}, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;-><init>(Landroid/content/Context;Lcom/dynatrace/agent/common/time/TimeProvider;JLcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;ZZ)V

    return-void
.end method
