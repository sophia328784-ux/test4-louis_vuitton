.class public final enum Lcom/kakao/sdk/common/model/AppsErrorCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/AppsErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/AppsErrorCause;",
        "",
        "InternalServerError",
        "InvalidRequest",
        "InvalidParameter",
        "TimeExpired",
        "InvalidChannel",
        "IllegalStateChannel",
        "AppTypeError",
        "AppScopeError",
        "PermissionError",
        "AppKeyTypeError",
        "AppChannelNotConnected",
        "AuthError",
        "NotRegisteredUser",
        "InvalidScope",
        "AccountTermsError",
        "LoginRequired",
        "InvalidShippingAddressId",
        "Unknown",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/AppsErrorCause;

.field public static final enum AccountTermsError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE204"
    .end annotation
.end field

.field public static final enum AppChannelNotConnected:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE105"
    .end annotation
.end field

.field public static final enum AppKeyTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE104"
    .end annotation
.end field

.field public static final enum AppScopeError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE102"
    .end annotation
.end field

.field public static final enum AppTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE101"
    .end annotation
.end field

.field public static final enum AuthError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE201"
    .end annotation
.end field

.field public static final enum IllegalStateChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE006"
    .end annotation
.end field

.field public static final enum InternalServerError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE001"
    .end annotation
.end field

.field public static final enum InvalidChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE005"
    .end annotation
.end field

.field public static final enum InvalidParameter:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE003"
    .end annotation
.end field

.field public static final enum InvalidRequest:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE002"
    .end annotation
.end field

.field public static final enum InvalidScope:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE203"
    .end annotation
.end field

.field public static final enum InvalidShippingAddressId:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE206"
    .end annotation
.end field

.field public static final enum LoginRequired:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE205"
    .end annotation
.end field

.field public static final enum NotRegisteredUser:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE202"
    .end annotation
.end field

.field public static final enum PermissionError:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE103"
    .end annotation
.end field

.field public static final enum TimeExpired:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KAE004"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/AppsErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "InternalServerError"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AppsErrorCause;->InternalServerError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v2, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "InvalidRequest"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidRequest:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v3, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "InvalidParameter"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidParameter:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v4, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "TimeExpired"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/kakao/sdk/common/model/AppsErrorCause;->TimeExpired:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v5, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "InvalidChannel"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v6, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "IllegalStateChannel"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/kakao/sdk/common/model/AppsErrorCause;->IllegalStateChannel:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v7, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "AppTypeError"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v8, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "AppScopeError"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppScopeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v9, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "PermissionError"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/kakao/sdk/common/model/AppsErrorCause;->PermissionError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v10, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "AppKeyTypeError"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppKeyTypeError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v11, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "AppChannelNotConnected"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/kakao/sdk/common/model/AppsErrorCause;->AppChannelNotConnected:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v12, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "AuthError"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/kakao/sdk/common/model/AppsErrorCause;->AuthError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v13, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "NotRegisteredUser"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/kakao/sdk/common/model/AppsErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v14, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "InvalidScope"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidScope:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v15, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v0, "AccountTermsError"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/kakao/sdk/common/model/AppsErrorCause;->AccountTermsError:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v1, "LoginRequired"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->LoginRequired:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v2, "InvalidShippingAddressId"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AppsErrorCause;->InvalidShippingAddressId:Lcom/kakao/sdk/common/model/AppsErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    const-string v2, "Unknown"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AppsErrorCause;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v0

    filled-new-array/range {v1 .. v18}, [Lcom/kakao/sdk/common/model/AppsErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AppsErrorCause;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/AppsErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/model/AppsErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/AppsErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/AppsErrorCause;

    return-object v0
.end method
