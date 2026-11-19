.class public abstract Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;
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
.method public static a(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;
    .locals 4

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object v0

    const-string v1, "checkNetworkError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0xc8

    const/16 v3, 0x12b

    invoke-direct {v0, v1, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Network error for url "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", code: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", body: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string p4, ""

    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-object v0
.end method

.method public static b(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;
    .locals 3

    if-eqz p1, :cond_2

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0xc8

    const/16 v2, 0x12b

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->WARNING:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->SUCCESS:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    :goto_1
    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getStatus: Status is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-object p1
.end method

.method public static c(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    goto :goto_1

    :catch_0
    :goto_0
    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "https://dy-api.eu"

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string v1, "https://dy-api.com"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
