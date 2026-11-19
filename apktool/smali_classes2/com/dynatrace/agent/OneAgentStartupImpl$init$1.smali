.class final Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.OneAgentStartupImpl$init$1"
    f = "OneAgentStartupImpl.kt"
    l = {
        0x47,
        0x48,
        0x57,
        0x58,
        0x59,
        0x5a,
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

.field public c:I

.field public final synthetic d:Lcom/dynatrace/agent/OneAgentStartupImpl;

.field public final synthetic e:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->e:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;

    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->e:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p1, v0, p0, p2}, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    packed-switch v1, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->i:Lcom/dynatrace/agent/metrics/MetricsRepository;

    invoke-virtual {p1}, Lcom/dynatrace/agent/metrics/MetricsRepository;->a()V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    const/4 v1, 0x1

    iput v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-interface {p1, p0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->e:Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;

    const/4 v1, 0x2

    iput v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-interface {p1, p0}, Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    check-cast p1, Lcom/dynatrace/agent/storage/db/EndPointInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize OneAgent, serverConfiguration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->e:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", localEndPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activeEndPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object v2, v2, Lcom/dynatrace/agent/OneAgentStartupImpl;->f:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/dynatrace/agent/storage/db/EndPointInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object v2, v2, Lcom/dynatrace/agent/OneAgentStartupImpl;->f:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v2, v2, Lcom/dynatrace/agent/storage/db/EndPointInfo;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/dynatrace/agent/storage/db/EndPointInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object v1, v1, Lcom/dynatrace/agent/OneAgentStartupImpl;->f:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v1, v1, Lcom/dynatrace/agent/storage/db/EndPointInfo;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_2
    const-string p1, "initialize OneAgent, clear data because of different endpoint"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    const/4 v1, 0x3

    iput v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-interface {p1, p0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_6

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    const/4 v1, 0x4

    iput v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-interface {p1, p0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_6

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->e:Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;

    const/4 v1, 0x5

    iput v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-interface {p1, p0}, Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_6

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object v1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->e:Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->f:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    const/4 v2, 0x6

    iput v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-interface {v1, p1, p0}, Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;->b(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/OneAgentStartupImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {p1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object v1, v1, Lcom/dynatrace/agent/OneAgentStartupImpl;->b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    const/4 v2, 0x7

    iput v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->c:I

    invoke-virtual {v1, p0}, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    move-object v0, p1

    :goto_7
    move-object p1, v0

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANR and native crash reporting deactivated for API level "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object v0, v0, Lcom/dynatrace/agent/OneAgentStartupImpl;->j:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    sget-object v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->h:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    sget-object v2, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    iget-object v2, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/dynatrace/agent/OneAgentStartupImpl;->k:Lcom/dynatrace/agent/OneAgentConfiguration;

    iget-object v1, v1, Lcom/dynatrace/agent/OneAgentConfiguration;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/dynatrace/agent/events/TracestateHeader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    sput-boolean v0, Lcom/dynatrace/agent/events/TracestateHeader;->b:Z

    :goto_9
    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$init$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl;->h:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    new-instance v0, Llh0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Llh0;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;I)V

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
