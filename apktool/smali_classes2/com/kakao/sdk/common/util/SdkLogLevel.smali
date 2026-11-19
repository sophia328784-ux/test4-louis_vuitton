.class public final enum Lcom/kakao/sdk/common/util/SdkLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/util/SdkLogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u0004j\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/SdkLogLevel;",
        "",
        "",
        "level",
        "I",
        "getLevel",
        "()I",
        "",
        "symbol",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "V",
        "D",
        "W",
        "E",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum D:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum E:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum I:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum V:Lcom/kakao/sdk/common/util/SdkLogLevel;

.field public static final enum W:Lcom/kakao/sdk/common/util/SdkLogLevel;


# instance fields
.field private final level:I

.field private final symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v1, 0x0

    const-string v2, "[\ud83d\udcac]"

    const-string v3, "V"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->V:Lcom/kakao/sdk/common/util/SdkLogLevel;

    new-instance v1, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v2, 0x1

    const-string v3, "[\u2139\ufe0f]"

    const-string v4, "D"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/kakao/sdk/common/util/SdkLogLevel;->D:Lcom/kakao/sdk/common/util/SdkLogLevel;

    new-instance v2, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v3, 0x2

    const-string v4, "[\ud83d\udd2c]"

    const-string v5, "I"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->I:Lcom/kakao/sdk/common/util/SdkLogLevel;

    new-instance v3, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v4, 0x3

    const-string v5, "[\u26a0\ufe0f]"

    const-string v6, "W"

    invoke-direct {v3, v6, v4, v4, v5}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/kakao/sdk/common/util/SdkLogLevel;->W:Lcom/kakao/sdk/common/util/SdkLogLevel;

    new-instance v4, Lcom/kakao/sdk/common/util/SdkLogLevel;

    const/4 v5, 0x4

    const-string v6, "[\u203c\ufe0f]"

    const-string v7, "E"

    invoke-direct {v4, v7, v5, v5, v6}, Lcom/kakao/sdk/common/util/SdkLogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/kakao/sdk/common/util/SdkLogLevel;->E:Lcom/kakao/sdk/common/util/SdkLogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/kakao/sdk/common/util/SdkLogLevel;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->$VALUES:[Lcom/kakao/sdk/common/util/SdkLogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->level:I

    iput-object p4, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->symbol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/util/SdkLogLevel;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/util/SdkLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/util/SdkLogLevel;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->$VALUES:[Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/util/SdkLogLevel;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/common/util/SdkLogLevel;->symbol:Ljava/lang/String;

    return-object p0
.end method
