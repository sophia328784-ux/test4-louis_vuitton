.class public final enum Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

.field public static final enum MOBILE_2G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

.field public static final enum MOBILE_3G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

.field public static final enum MOBILE_4G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

.field public static final enum MOBILE_5G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

.field public static final enum UNKNOWN:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

.field public static final enum WIFI:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;
    .locals 6

    sget-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->UNKNOWN:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    sget-object v1, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_2G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    sget-object v2, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_3G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    sget-object v3, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_4G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    sget-object v4, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_5G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    sget-object v5, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->WIFI:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    filled-new-array/range {v0 .. v5}, [Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->UNKNOWN:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    new-instance v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    const/4 v1, 0x1

    const-string v2, "2G"

    const-string v3, "MOBILE_2G"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_2G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    new-instance v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    const/4 v1, 0x2

    const-string v2, "3G"

    const-string v3, "MOBILE_3G"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_3G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    new-instance v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    const/4 v1, 0x3

    const-string v2, "4G"

    const-string v3, "MOBILE_4G"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_4G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    new-instance v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    const/4 v1, 0x4

    const-string v2, "5G"

    const-string v3, "MOBILE_5G"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->MOBILE_5G:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    new-instance v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    const/4 v1, 0x5

    const-string v2, "wifi"

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->WIFI:Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    invoke-static {}, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->$values()[Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->$VALUES:[Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->$VALUES:[Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/internal/util/Utils$NetworkType;

    return-object v0
.end method
