.class public final Lcom/dynatrace/agent/communication/ServerDataListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/communication/api/ServerDataListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/ServerDataListenerImpl;",
        "Lcom/dynatrace/agent/communication/api/ServerDataListener;",
        "Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;",
        "legacyServerConfigurationListener",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigurationDataSource",
        "Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;",
        "dynamicConfigDataSource",
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;",
        "configurationPublisher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/OneAgentConfiguration;",
        "oneAgentConfiguration",
        "<init>",
        "(Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;)V",
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
.field public final a:Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;

.field public final b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final c:Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;

.field public final d:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

.field public final e:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final f:Lcom/dynatrace/agent/OneAgentConfiguration;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->a:Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p3, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->c:Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->d:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    iput-object p5, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->e:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p6, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->f:Lcom/dynatrace/agent/OneAgentConfiguration;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->a:Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;

    invoke-interface {p0, p1}, Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;

    invoke-direct {v0, p0, p3}, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;-><init>(Lcom/dynatrace/agent/communication/ServerDataListenerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object p0, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->b:Lcom/dynatrace/agent/communication/ServerDataListenerImpl;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->e:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {p3}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object p3

    sget-object v2, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    iget-object v2, p2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    iget-object v4, p3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    iget-object p3, p3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->f:Lcom/dynatrace/agent/OneAgentConfiguration;

    iget-object v5, v5, Lcom/dynatrace/agent/OneAgentConfiguration;->b:Ljava/lang/String;

    invoke-static {v2, v4, p3, v5}, Lcom/dynatrace/agent/events/TracestateHeader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p3, p2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    sput-boolean p3, Lcom/dynatrace/agent/events/TracestateHeader;->b:Z

    iget-object p3, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->a:Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;

    invoke-interface {p3, p1}, Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;->b(Lcom/dynatrace/agent/communication/api/AgentState;)V

    iget-object p3, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->c:Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;

    invoke-interface {p3, p1}, Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;->b(Lcom/dynatrace/agent/communication/api/AgentState;)V

    iget-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p0, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->b:Lcom/dynatrace/agent/communication/ServerDataListenerImpl;

    iput-object p2, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput v3, v0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl$onConfigurationUpdate$1;->f:I

    invoke-interface {p1, p2, v0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->a(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;->d:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    new-instance p1, Llh0;

    invoke-direct {p1, p2, v3}, Llh0;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;I)V

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
