.class public final enum Lnet/rtccloud/sdk/Call$RemoteType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Call$RemoteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Call$RemoteType;

.field public static final enum DRIVER:Lnet/rtccloud/sdk/Call$RemoteType;

.field public static final enum UNKNOWN:Lnet/rtccloud/sdk/Call$RemoteType;

.field public static final enum WEBRTC:Lnet/rtccloud/sdk/Call$RemoteType;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Call$RemoteType;
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->UNKNOWN:Lnet/rtccloud/sdk/Call$RemoteType;

    sget-object v1, Lnet/rtccloud/sdk/Call$RemoteType;->WEBRTC:Lnet/rtccloud/sdk/Call$RemoteType;

    sget-object v2, Lnet/rtccloud/sdk/Call$RemoteType;->DRIVER:Lnet/rtccloud/sdk/Call$RemoteType;

    filled-new-array {v0, v1, v2}, [Lnet/rtccloud/sdk/Call$RemoteType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/Call$RemoteType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$RemoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->UNKNOWN:Lnet/rtccloud/sdk/Call$RemoteType;

    new-instance v0, Lnet/rtccloud/sdk/Call$RemoteType;

    const-string v1, "WEBRTC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$RemoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->WEBRTC:Lnet/rtccloud/sdk/Call$RemoteType;

    new-instance v0, Lnet/rtccloud/sdk/Call$RemoteType;

    const-string v1, "DRIVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$RemoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->DRIVER:Lnet/rtccloud/sdk/Call$RemoteType;

    invoke-static {}, Lnet/rtccloud/sdk/Call$RemoteType;->$values()[Lnet/rtccloud/sdk/Call$RemoteType;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->$VALUES:[Lnet/rtccloud/sdk/Call$RemoteType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$RemoteType;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Call$RemoteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Call$RemoteType;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Call$RemoteType;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->$VALUES:[Lnet/rtccloud/sdk/Call$RemoteType;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Call$RemoteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Call$RemoteType;

    return-object v0
.end method
