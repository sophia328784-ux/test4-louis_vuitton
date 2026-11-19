.class public interface abstract Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;",
        "R:",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;",
        "T",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        "R",
        "",
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
.method public abstract a(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
.end method

.method public abstract b(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;)V
.end method

.method public abstract c(Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
.end method

.method public abstract d()Z
.end method

.method public abstract getCookies()Ljava/util/List;
.end method

.method public abstract hasBody()Z
.end method
