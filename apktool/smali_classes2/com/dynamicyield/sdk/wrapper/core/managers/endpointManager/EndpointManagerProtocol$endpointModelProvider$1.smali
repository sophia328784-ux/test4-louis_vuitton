.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;",
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


# instance fields
.field public final synthetic a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;)Ljava/lang/String;
    .locals 4

    const-string v0, "got exception: "

    const-string v1, "encodeToString value: "

    :try_start_0
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->d()Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;

    move-result-object p0

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload$Companion;

    invoke-virtual {v2}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v1, v2, p1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/models/exception/EncodingPayloadException;

    invoke-direct {p1, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/EncodingPayloadException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    invoke-interface {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getSession()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;->c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;->getSession()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object p0

    return-object p0
.end method
