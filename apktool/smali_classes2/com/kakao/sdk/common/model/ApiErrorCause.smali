.class public final enum Lcom/kakao/sdk/common/model/ApiErrorCause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008$\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        "",
        "",
        "errorCode",
        "I",
        "a",
        "()I",
        "InternalError",
        "IllegalParams",
        "UnsupportedApi",
        "BlockedAction",
        "PermissionDenied",
        "DeprecatedApi",
        "ApiLimitExceeded",
        "NotRegisteredUser",
        "AlreadyRegisteredUser",
        "AccountDoesNotExist",
        "PropertyKeyDoesNotExist",
        "AppDoesNotExist",
        "InvalidToken",
        "InsufficientScope",
        "RequiredAgeVerification",
        "UnderAgeLimit",
        "SigningIsNotCompleted",
        "InvalidTransaction",
        "TransactionHasExpired",
        "NotTalkUser",
        "NotFriend",
        "UserDeviceUnsupported",
        "TalkMessageDisabled",
        "TalkSendMessageMonthlyLimitExceed",
        "TalkSendMessageDailyLimitExceed",
        "ImageUploadSizeExceeded",
        "ServerTimeOut",
        "ImageMaxUploadCountExceed",
        "DeveloperDoesNotExist",
        "UnderMaintenance",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

.field public static final enum AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-103"
    .end annotation
.end field

.field public static final enum AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-102"
    .end annotation
.end field

.field public static final enum ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-10"
    .end annotation
.end field

.field public static final enum AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-301"
    .end annotation
.end field

.field public static final enum BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-4"
    .end annotation
.end field

.field public static final enum DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-9"
    .end annotation
.end field

.field public static final enum DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-903"
    .end annotation
.end field

.field public static final enum IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-2"
    .end annotation
.end field

.field public static final enum ImageMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-606"
    .end annotation
.end field

.field public static final enum ImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-602"
    .end annotation
.end field

.field public static final enum InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-402"
    .end annotation
.end field

.field public static final enum InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-1"
    .end annotation
.end field

.field public static final enum InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-401"
    .end annotation
.end field

.field public static final enum InvalidTransaction:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-422"
    .end annotation
.end field

.field public static final enum NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-502"
    .end annotation
.end field

.field public static final enum NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-101"
    .end annotation
.end field

.field public static final enum NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-501"
    .end annotation
.end field

.field public static final enum PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-5"
    .end annotation
.end field

.field public static final enum PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-201"
    .end annotation
.end field

.field public static final enum RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-405"
    .end annotation
.end field

.field public static final enum ServerTimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-603"
    .end annotation
.end field

.field public static final enum SigningIsNotCompleted:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-421"
    .end annotation
.end field

.field public static final enum TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-530"
    .end annotation
.end field

.field public static final enum TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-532"
    .end annotation
.end field

.field public static final enum TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-531"
    .end annotation
.end field

.field public static final enum TransactionHasExpired:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-423"
    .end annotation
.end field

.field public static final enum UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-406"
    .end annotation
.end field

.field public static final enum UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-9798"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field

.field public static final enum UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-3"
    .end annotation
.end field

.field public static final enum UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-504"
    .end annotation
.end field


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x0

    const/4 v2, -0x1

    const-string v3, "InternalError"

    invoke-direct {v1, v3, v0, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v2, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x1

    const/4 v3, -0x2

    const-string v4, "IllegalParams"

    invoke-direct {v2, v4, v0, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v3, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x2

    const/4 v4, -0x3

    const-string v5, "UnsupportedApi"

    invoke-direct {v3, v5, v0, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v4, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x3

    const/4 v5, -0x4

    const-string v6, "BlockedAction"

    invoke-direct {v4, v6, v0, v5}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/kakao/sdk/common/model/ApiErrorCause;->BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v5, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x4

    const/4 v6, -0x5

    const-string v7, "PermissionDenied"

    invoke-direct {v5, v7, v0, v6}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/kakao/sdk/common/model/ApiErrorCause;->PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v6, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x5

    const/16 v7, -0x9

    const-string v8, "DeprecatedApi"

    invoke-direct {v6, v8, v0, v7}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v7, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x6

    const/16 v8, -0xa

    const-string v9, "ApiLimitExceeded"

    invoke-direct {v7, v9, v0, v8}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/kakao/sdk/common/model/ApiErrorCause;->ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v8, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v0, 0x7

    const/16 v9, -0x65

    const-string v10, "NotRegisteredUser"

    invoke-direct {v8, v10, v0, v9}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v9, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0x8

    const/16 v10, -0x66

    const-string v11, "AlreadyRegisteredUser"

    invoke-direct {v9, v11, v0, v10}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/kakao/sdk/common/model/ApiErrorCause;->AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v10, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0x9

    const/16 v11, -0x67

    const-string v12, "AccountDoesNotExist"

    invoke-direct {v10, v12, v0, v11}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/kakao/sdk/common/model/ApiErrorCause;->AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v11, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0xa

    const/16 v12, -0xc9

    const-string v13, "PropertyKeyDoesNotExist"

    invoke-direct {v11, v13, v0, v12}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/kakao/sdk/common/model/ApiErrorCause;->PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v12, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0xb

    const/16 v13, -0x12d

    const-string v14, "AppDoesNotExist"

    invoke-direct {v12, v14, v0, v13}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/kakao/sdk/common/model/ApiErrorCause;->AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v13, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0xc

    const/16 v14, -0x191

    const-string v15, "InvalidToken"

    invoke-direct {v13, v15, v0, v14}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v14, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0xd

    const/16 v15, -0x192

    move-object/from16 v16, v1

    const-string v1, "InsufficientScope"

    invoke-direct {v14, v1, v0, v15}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v15, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v0, 0xe

    const/16 v1, -0x195

    move-object/from16 v17, v2

    const-string v2, "RequiredAgeVerification"

    invoke-direct {v15, v2, v0, v1}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/kakao/sdk/common/model/ApiErrorCause;->RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v1, 0xf

    const/16 v2, -0x196

    move-object/from16 v18, v3

    const-string v3, "UnderAgeLimit"

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x10

    const/16 v3, -0x1a5

    move-object/from16 v19, v0

    const-string v0, "SigningIsNotCompleted"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->SigningIsNotCompleted:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x11

    const/16 v3, -0x1a6

    move-object/from16 v20, v1

    const-string v1, "InvalidTransaction"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidTransaction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x12

    const/16 v3, -0x1a7

    move-object/from16 v21, v0

    const-string v0, "TransactionHasExpired"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TransactionHasExpired:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x13

    const/16 v3, -0x1f5

    move-object/from16 v22, v1

    const-string v1, "NotTalkUser"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x14

    const/16 v3, -0x1f6

    move-object/from16 v23, v0

    const-string v0, "NotFriend"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x15

    const/16 v3, -0x1f8

    move-object/from16 v24, v1

    const-string v1, "UserDeviceUnsupported"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x16

    const/16 v3, -0x212

    move-object/from16 v25, v0

    const-string v0, "TalkMessageDisabled"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x17

    const/16 v3, -0x213

    move-object/from16 v26, v1

    const-string v1, "TalkSendMessageMonthlyLimitExceed"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x18

    const/16 v3, -0x214

    move-object/from16 v27, v0

    const-string v0, "TalkSendMessageDailyLimitExceed"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x19

    const/16 v3, -0x25a

    move-object/from16 v28, v1

    const-string v1, "ImageUploadSizeExceeded"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1a

    const/16 v3, -0x25b

    move-object/from16 v29, v0

    const-string v0, "ServerTimeOut"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->ServerTimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1b

    const/16 v3, -0x25e

    move-object/from16 v30, v1

    const-string v1, "ImageMaxUploadCountExceed"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->ImageMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1c

    const/16 v3, -0x387

    move-object/from16 v31, v0

    const-string v0, "DeveloperDoesNotExist"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1d

    const/16 v3, -0x2646

    move-object/from16 v32, v1

    const-string v1, "UnderMaintenance"

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1e

    const v3, 0x7fffffff

    move-object/from16 v33, v0

    const-string v0, "Unknown"

    invoke-direct {v1, v0, v2, v3}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-object/from16 v2, v31

    move-object/from16 v31, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    move-object/from16 v25, v28

    move-object/from16 v28, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    filled-new-array/range {v1 .. v31}, [Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->errorCode:I

    return p0
.end method
