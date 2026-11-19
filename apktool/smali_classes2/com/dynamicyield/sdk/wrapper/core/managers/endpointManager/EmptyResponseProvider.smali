.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EmptyResponseProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider<",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EmptyResponseProvider;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;)Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
    .locals 7

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCookies()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasBody()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
