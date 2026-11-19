.class public final Lcom/dynamicyield/sdk/wrapper/core/DYSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/DYSdk;",
        "",
        "Companion",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

.field public static l:Z


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;

.field public b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

.field public c:Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;

.field public d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/concreteEngines/SystemLoggerEngine;

.field public final f:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

.field public final g:Lkotlinx/coroutines/sync/MutexImpl;

.field public final h:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;

.field public final i:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;

.field public final j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;

    invoke-direct {p1, p0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;-><init>(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;)V

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;

    invoke-direct {v0, p0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;-><init>(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/concreteEngines/SystemLoggerEngine;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->WARN:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/concreteEngines/SystemLoggerEngine;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->e:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/concreteEngines/SystemLoggerEngine;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "DYSdk"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->f:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->g:Lkotlinx/coroutines/sync/MutexImpl;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;

    invoke-direct {v0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->h:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;

    invoke-direct {v0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->i:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/PageViewManager;

    invoke-direct {v0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/PageViewManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    invoke-direct {v0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    new-instance p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;

    invoke-direct {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V

    new-instance p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/AssistantManager;

    invoke-direct {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/AssistantManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V

    return-void
.end method

.method public static d(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v6, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->APP:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->e:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/concreteEngines/SystemLoggerEngine;

    new-instance v15, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYVersion;

    const-string v1, "5"

    const-string v2, "0"

    const-string v3, "1"

    invoke-direct {v15, v3, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->f:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    sget-boolean v2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;

    invoke-direct {v0, v3}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {v1, v0, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void

    :cond_0
    sput-boolean v3, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    move-object v2, v1

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v8, p4

    move-object/from16 v12, p5

    move-object/from16 v16, v15

    move-object v15, v2

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v13}, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    iget-object v2, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$sessionAndUserListener$1;

    move-object/from16 v3, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;Landroid/content/Context;Ljava/lang/Boolean;)V

    iput-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;

    invoke-virtual/range {v16 .. v16}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYVersion;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;

    if-eqz v14, :cond_1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/LoggingUtils;->a:Ljava/util/Set;

    const-string v0, "DYSdk"

    const-string v1, " initialized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    move-result-object p0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "getDyId"

    invoke-virtual {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public final b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sessionAndUserManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/LoggingUtils;->a:Ljava/util/Set;

    const-string v0, " Failed. SDK is not initialized"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->WARN:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->f:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    invoke-virtual {p0, p1, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void
.end method

.method public final e(Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;

    iget v1, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->f:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;

    invoke-direct {v0, p0, p2}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;-><init>(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p2, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->d:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object p1, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->c:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v1, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-boolean p2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-eqz p2, :cond_e

    iput-object p1, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->b:Ljava/lang/Object;

    iget-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->g:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->c:Lkotlinx/coroutines/sync/MutexImpl;

    iput v2, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->f:I

    invoke-virtual {p2, v5}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "configManager"

    if-eqz v1, :cond_d

    :try_start_2
    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    if-eqz v1, :cond_c

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Changing activeConsentAccepted to: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iput-object p1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iget-boolean v2, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->e(Ljava/lang/Boolean;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    const-string v2, "Init"

    invoke-static {p1, v2}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;->a(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    move-result-object p1

    iput-object p2, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->b:Ljava/lang/Object;

    iput-object v7, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->c:Lkotlinx/coroutines/sync/MutexImpl;

    iput v3, v5, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$setActiveConsentAccepted$1;->f:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x3ffd

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;->f(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v0, :cond_8

    :goto_3
    return-object v0

    :cond_8
    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :goto_4
    :try_start_3
    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->SUCCESS:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    if-eq p2, v0, :cond_9

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->f:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v0, "Failed to generate a session ID and DY ID via the choose call. Subsequent requests will lack a DY ID and session ID until the next successful choose call."

    invoke-virtual {p0, v0, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    move-object p2, p1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object p1, p2

    goto :goto_6

    :cond_a
    :goto_5
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    :try_start_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p0

    :cond_e
    const-string p1, "setActiveConsentAccepted"

    invoke-virtual {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
