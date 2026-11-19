.class public final enum Lcom/kakao/sdk/user/model/BirthdayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/user/model/BirthdayType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/BirthdayType;",
        "",
        "SOLAR",
        "LUNAR",
        "UNKNOWN",
        "user_release"
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/user/model/BirthdayType;

.field public static final enum LUNAR:Lcom/kakao/sdk/user/model/BirthdayType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LUNAR"
    .end annotation
.end field

.field public static final enum SOLAR:Lcom/kakao/sdk/user/model/BirthdayType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SOLAR"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/user/model/BirthdayType;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/kakao/sdk/user/model/BirthdayType;

    const-string v1, "SOLAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/BirthdayType;->SOLAR:Lcom/kakao/sdk/user/model/BirthdayType;

    new-instance v1, Lcom/kakao/sdk/user/model/BirthdayType;

    const-string v2, "LUNAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/BirthdayType;->LUNAR:Lcom/kakao/sdk/user/model/BirthdayType;

    new-instance v2, Lcom/kakao/sdk/user/model/BirthdayType;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/sdk/user/model/BirthdayType;->UNKNOWN:Lcom/kakao/sdk/user/model/BirthdayType;

    filled-new-array {v0, v1, v2}, [Lcom/kakao/sdk/user/model/BirthdayType;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/BirthdayType;->$VALUES:[Lcom/kakao/sdk/user/model/BirthdayType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/BirthdayType;
    .locals 1

    const-class v0, Lcom/kakao/sdk/user/model/BirthdayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/user/model/BirthdayType;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/user/model/BirthdayType;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/model/BirthdayType;->$VALUES:[Lcom/kakao/sdk/user/model/BirthdayType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/user/model/BirthdayType;

    return-object v0
.end method
