.class public Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;",
        "status",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;",
        "warnings",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;",
        "rawNetworkData",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V",
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
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;",
            ">;",
            "Ljava/lang/Exception;",
            "Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    .line 22
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->b:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V

    return-void
.end method
