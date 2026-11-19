.class public final enum Lnet/rtccloud/sdk/Rtcc$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Rtcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Rtcc$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Rtcc$Error;

.field public static final enum BAD_CREDENTIALS:Lnet/rtccloud/sdk/Rtcc$Error;

.field public static final enum DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

.field public static final enum NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

.field public static final enum NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Error;


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Rtcc$Error;
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Error;->BAD_CREDENTIALS:Lnet/rtccloud/sdk/Rtcc$Error;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Error;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    filled-new-array {v0, v1, v2, v3}, [Lnet/rtccloud/sdk/Rtcc$Error;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Error;

    const/4 v1, 0x0

    const-string v2, "Could not connect to server"

    const-string v3, "NETWORK_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Error;

    const/4 v1, 0x1

    const-string v2, "Wrong credentials"

    const-string v3, "BAD_CREDENTIALS"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->BAD_CREDENTIALS:Lnet/rtccloud/sdk/Rtcc$Error;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Error;

    const/4 v1, 0x2

    const-string v2, "Device lost network connection"

    const-string v3, "NETWORK_LOST"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Error;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Error;

    const/4 v1, 0x3

    const-string v2, "Manual disconnection"

    const-string v3, "DISCONNECTED"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->DISCONNECTED:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc$Error;->$values()[Lnet/rtccloud/sdk/Rtcc$Error;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->$VALUES:[Lnet/rtccloud/sdk/Rtcc$Error;

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

    iput-object p3, p0, Lnet/rtccloud/sdk/Rtcc$Error;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Rtcc$Error;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Rtcc$Error;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Rtcc$Error;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->$VALUES:[Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Rtcc$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Rtcc$Error;

    return-object v0
.end method
