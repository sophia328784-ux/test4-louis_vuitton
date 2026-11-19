.class public abstract Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    if-nez p3, :cond_0

    new-instance p0, Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;-><init>(Z)V

    invoke-interface {p2, p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->c(Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object p3

    const-string v0, "sendRequest"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->f()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object p3

    invoke-interface {p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object p3

    iget-boolean p3, p3, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    if-eqz p3, :cond_1

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object p3

    invoke-interface {p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object p3

    invoke-interface {p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object p0

    const-string p1, "sendRequest: User has not accepted the consent, request will be ignored."

    invoke-virtual {p0, p1, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/models/exception/MissingActiveConsentException;

    invoke-direct {p1}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/MissingActiveConsentException;-><init>()V

    invoke-interface {p2, p0, v1, p1, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->a(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v2, p4}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
