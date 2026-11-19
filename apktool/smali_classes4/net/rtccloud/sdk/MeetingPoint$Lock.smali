.class public final enum Lnet/rtccloud/sdk/MeetingPoint$Lock;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lock"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/MeetingPoint$Lock;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Lock;

.field public static final enum AUTO_ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

.field public static final enum DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

.field public static final enum LOCKED:Lnet/rtccloud/sdk/MeetingPoint$Lock;

.field public static final enum UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/MeetingPoint$Lock;
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Lock;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Lock;->LOCKED:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Lock;->AUTO_ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    filled-new-array {v0, v1, v2, v3}, [Lnet/rtccloud/sdk/MeetingPoint$Lock;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Lock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Lock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;

    const-string v1, "LOCKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Lock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->LOCKED:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;

    const-string v1, "AUTO_ACCEPT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Lock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->AUTO_ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    invoke-static {}, Lnet/rtccloud/sdk/MeetingPoint$Lock;->$values()[Lnet/rtccloud/sdk/MeetingPoint$Lock;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Lock;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint$Lock;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/MeetingPoint$Lock;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Lock;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/MeetingPoint$Lock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-object v0
.end method
