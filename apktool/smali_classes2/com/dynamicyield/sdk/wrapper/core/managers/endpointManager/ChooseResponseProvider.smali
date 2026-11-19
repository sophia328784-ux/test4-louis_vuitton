.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ChooseResponseProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ChooseResponseProvider;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;",
        "<init>",
        "()V",
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
.field public a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ChooseResponseProvider;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;->c:Ljava/util/List;

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;-><init>(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;)V
    .locals 4

    const-string v0, "Got exception: "

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, "decodeFromString"

    invoke-virtual {v1, v3, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$Companion;

    invoke-virtual {v3}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p2, v3, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {v1, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    throw p0

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ChooseResponseProvider;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/models/exception/DecodingChooseResultException;

    invoke-direct {p1, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/DecodingChooseResultException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final c(Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
    .locals 8

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;-><init>(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCookies()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ChooseResponseProvider;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;->d:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasBody()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
