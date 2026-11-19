.class public final Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;
.super Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BQ\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;",
        "choices",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;",
        "status",
        "Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;",
        "warnings",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;",
        "rawNetworkData",
        "<init>",
        "(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V",
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
.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;",
            ">;",
            "Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;",
            "Ljava/util/List<",
            "Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;",
            ">;",
            "Ljava/lang/Exception;",
            "Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V

    .line 26
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move-object p5, v0

    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;-><init>(Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;Ljava/util/List;Ljava/lang/Exception;Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;)V

    return-void
.end method
