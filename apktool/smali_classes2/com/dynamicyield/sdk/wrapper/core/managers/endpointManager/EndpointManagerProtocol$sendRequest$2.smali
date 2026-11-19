.class final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;
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
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "R",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol$sendRequest$2"
    f = "EndpointManagerProtocol.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic b:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

.field public final synthetic c:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;

.field public final synthetic d:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;

    iget-object v4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$sendRequest$2;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;

    const-string v4, "Decoding response for body: "

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->d(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;)Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v6, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;->c:Z

    iget-object v7, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;->d:Ljava/lang/String;

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->hasBody()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".body"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->e()Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;

    move-result-object v4

    invoke-interface {p0, v7, v4}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->b(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->getCookies()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object v4

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->getCookies()Ljava/util/List;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->c(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ne v6, v8, :cond_3

    invoke-interface {v1, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, p1

    :goto_2
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v4, :cond_5

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_4

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    check-cast v6, Ljava/util/Collection;

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;

    const-string v9, "Failed to write dy-id & session id to local app storage"

    invoke-direct {v4, p1, v9, v8, p1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_5
    invoke-interface {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget v6, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;->a:I

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    iget-object v6, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;->b:Ljava/lang/String;

    invoke-interface {v1, v4, v8, v6, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->d(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;

    move-result-object v4

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v5, p1

    :goto_3
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :goto_4
    if-eqz v5, :cond_6

    iget p1, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;->a:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object p1, v4

    :cond_6
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Exception;

    invoke-interface {v1, p1, v4, v6}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->c(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    move-result-object p1

    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endpoint request success: status is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", warnings are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->INFO:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {v1, v3, v4}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p0, p1, v1, v0, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;->a(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    move-result-object p0

    return-object p0
.end method
