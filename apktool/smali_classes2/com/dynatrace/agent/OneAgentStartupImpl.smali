.class public final Lcom/dynatrace/agent/OneAgentStartupImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/OneAgentStartup;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dynatrace/agent/OneAgentStartupImpl;",
        "Lcom/dynatrace/agent/OneAgentStartup;",
        "Lcom/dynatrace/agent/communication/CommunicationManager;",
        "communicationManager",
        "Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;",
        "exitReasonProcessor",
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;",
        "eventDatabaseDataSource",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigurationDataSource",
        "Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;",
        "endPointInfoDataSource",
        "Lcom/dynatrace/agent/storage/db/EndPointInfo;",
        "activeEndPoint",
        "Lkotlinx/coroutines/CoroutineScope;",
        "externalScope",
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;",
        "configurationPublisher",
        "Lcom/dynatrace/agent/metrics/MetricsRepository;",
        "metricsRepository",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/OneAgentConfiguration;",
        "oneAgentConfiguration",
        "Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;",
        "oneAgentConfigurationDiskDataSource",
        "<init>",
        "(Lcom/dynatrace/agent/communication/CommunicationManager;Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/CommunicationManager;

.field public final b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

.field public final c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

.field public final d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final e:Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;

.field public final f:Lcom/dynatrace/agent/storage/db/EndPointInfo;

.field public final g:Lkotlinx/coroutines/CoroutineScope;

.field public final h:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

.field public final i:Lcom/dynatrace/agent/metrics/MetricsRepository;

.field public final j:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final k:Lcom/dynatrace/agent/OneAgentConfiguration;

.field public final l:Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;

.field public m:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManager;Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->a:Lcom/dynatrace/agent/communication/CommunicationManager;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    iput-object p3, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p5, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->e:Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;

    iput-object p6, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->f:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p7, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->g:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->h:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    iput-object p9, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->i:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iput-object p10, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->j:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p11, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->k:Lcom/dynatrace/agent/OneAgentConfiguration;

    iput-object p12, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->l:Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;

    return-void
.end method

.method public static final d(Lcom/dynatrace/agent/OneAgentStartupImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;

    iget v1, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->b:Lcom/dynatrace/agent/OneAgentStartupImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->b:Lcom/dynatrace/agent/OneAgentStartupImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->l:Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;

    iput-object p0, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->b:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iput v4, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    invoke-virtual {p1, v0}, Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->k:Lcom/dynatrace/agent/OneAgentConfiguration;

    iget-object v2, v2, Lcom/dynatrace/agent/OneAgentConfiguration;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "agent version changed from \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': resetting BPv4 revision to 0 to force full config response"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->l:Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;

    iput-object p0, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->b:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iput v3, v0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    invoke-virtual {p1, v2, v0}, Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {p0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p0

    iget v3, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    iget v4, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    iget-boolean v5, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    iget-object v6, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    iget-object v7, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    iget-boolean v9, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    iget v10, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    iget v11, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    iget v12, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;-><init>(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V

    return-object v0

    :cond_6
    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {p0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "stopping BPv4 communication"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->a:Lcom/dynatrace/agent/communication/CommunicationManager;

    invoke-interface {v0}, Lcom/dynatrace/agent/communication/CommunicationManager;->a()V

    new-instance v0, Lcom/dynatrace/agent/OneAgentStartupImpl$stopCommunication$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/OneAgentStartupImpl$stopCommunication$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->g:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->g:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 3

    new-instance v0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->g:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->m:Lkotlinx/coroutines/Job;

    return-void
.end method
