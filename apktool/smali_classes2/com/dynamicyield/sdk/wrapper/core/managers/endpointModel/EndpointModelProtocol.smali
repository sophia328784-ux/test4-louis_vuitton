.class public interface abstract Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;,
        Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;",
        "",
        "",
        "url",
        "",
        "isValidUrl",
        "(Ljava/lang/String;)Z",
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


# virtual methods
.method public abstract a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract c(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract h()Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;
.end method

.method public abstract k()Ljava/lang/String;
.end method
