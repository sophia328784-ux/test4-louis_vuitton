.class public final enum Lcom/kakao/sdk/common/model/ClientErrorCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/ClientErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ClientErrorCause;",
        "",
        "Unknown",
        "Cancelled",
        "TokenNotFound",
        "NotSupported",
        "BadParameter",
        "IllegalState",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "bad parameters."
    .end annotation
.end field

.field public static final enum Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "user cancelled."
    .end annotation
.end field

.field public static final enum IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "illegal state."
    .end annotation
.end field

.field public static final enum NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "user is unauthenticated."
    .end annotation
.end field

.field public static final enum TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "authentication tokens don\'t exist."
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/model/Description;
        value = "unknown error."
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "Cancelled"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v2, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v3, "TokenNotFound"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v3, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v4, "NotSupported"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v4, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v5, "BadParameter"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v5, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v6, "IllegalState"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    filled-new-array/range {v0 .. v5}, [Lcom/kakao/sdk/common/model/ClientErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/ClientErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/model/ClientErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-object v0
.end method
