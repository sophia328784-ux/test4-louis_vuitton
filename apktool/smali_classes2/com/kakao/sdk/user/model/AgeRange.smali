.class public final enum Lcom/kakao/sdk/user/model/AgeRange;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/user/model/AgeRange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/AgeRange;",
        "",
        "AGE_0_9",
        "AGE_10_14",
        "AGE_15_19",
        "AGE_20_29",
        "AGE_30_39",
        "AGE_40_49",
        "AGE_50_59",
        "AGE_60_69",
        "AGE_70_79",
        "AGE_80_89",
        "AGE_90_ABOVE",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

.field public static final enum AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "0~9"
    .end annotation
.end field

.field public static final enum AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "10~14"
    .end annotation
.end field

.field public static final enum AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "15~19"
    .end annotation
.end field

.field public static final enum AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "20~29"
    .end annotation
.end field

.field public static final enum AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "30~39"
    .end annotation
.end field

.field public static final enum AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "40~49"
    .end annotation
.end field

.field public static final enum AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "50~59"
    .end annotation
.end field

.field public static final enum AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "60~69"
    .end annotation
.end field

.field public static final enum AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "70~79"
    .end annotation
.end field

.field public static final enum AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "80~89"
    .end annotation
.end field

.field public static final enum AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "90~"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v1, "AGE_0_9"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v2, "AGE_10_14"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v2, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v3, "AGE_15_19"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/kakao/sdk/user/model/AgeRange;->AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v3, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v4, "AGE_20_29"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/user/model/AgeRange;->AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v4, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v5, "AGE_30_39"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/kakao/sdk/user/model/AgeRange;->AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v5, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v6, "AGE_40_49"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kakao/sdk/user/model/AgeRange;->AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v6, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v7, "AGE_50_59"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/kakao/sdk/user/model/AgeRange;->AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v7, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v8, "AGE_60_69"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/kakao/sdk/user/model/AgeRange;->AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v8, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v9, "AGE_70_79"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/kakao/sdk/user/model/AgeRange;->AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v9, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v10, "AGE_80_89"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/kakao/sdk/user/model/AgeRange;->AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v10, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v11, "AGE_90_ABOVE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/kakao/sdk/user/model/AgeRange;->AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v11, Lcom/kakao/sdk/user/model/AgeRange;

    const-string v12, "UNKNOWN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/kakao/sdk/user/model/AgeRange;->UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;

    filled-new-array/range {v0 .. v11}, [Lcom/kakao/sdk/user/model/AgeRange;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    const-class v0, Lcom/kakao/sdk/user/model/AgeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/user/model/AgeRange;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/user/model/AgeRange;

    return-object v0
.end method
