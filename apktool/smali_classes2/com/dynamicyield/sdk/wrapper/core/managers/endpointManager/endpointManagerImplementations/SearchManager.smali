.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;",
        "endpointManagerProvider",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V",
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
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;

.field public final d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;

    invoke-direct {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;

    invoke-direct {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Search Manager"

    invoke-direct {p1, v2, v0, v1, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "Got exception: "

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v2, "getWarnings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v4, "decodeFromString"

    invoke-virtual {v2, v4, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings$Companion;

    invoke-virtual {v4}, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v4, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings;->a:Ljava/util/List;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeWarning;

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;

    iget-object v3, v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeWarning;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeWarning;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-object p1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, v0, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string p1, "Failed to decode warnings"

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {v1, p1, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/models/exception/DecodingException;

    invoke-direct {p1, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/exception/DecodingException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    :goto_2
    return-object v3
.end method

.method public final c()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;

    return-object p0
.end method

.method public final d()Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;

    return-object p0
.end method

.method public final e()Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/SearchManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;

    return-object p0
.end method
