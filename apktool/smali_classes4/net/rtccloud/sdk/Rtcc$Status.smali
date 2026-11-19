.class public final enum Lnet/rtccloud/sdk/Rtcc$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Rtcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Rtcc$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Rtcc$Status;

.field public static final enum CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

.field public static final enum CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

.field public static final enum DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

.field public static final enum IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

.field public static final enum NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Rtcc$Status;
    .locals 5

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v4, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Status;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Status;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Status;

    const-string v1, "CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Status;

    const-string v1, "NETWORK_LOST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Status;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Rtcc$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc$Status;->$values()[Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->$VALUES:[Lnet/rtccloud/sdk/Rtcc$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Rtcc$Status;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Rtcc$Status;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Rtcc$Status;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->$VALUES:[Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Rtcc$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Rtcc$Status;

    return-object v0
.end method
