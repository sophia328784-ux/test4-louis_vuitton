.class public final enum Lnet/rtccloud/sdk/Call$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/Call$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/Call$Type;

.field public static final enum CALL_INBOUND:Lnet/rtccloud/sdk/Call$Type;

.field public static final enum CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

.field public static final enum CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

.field public static final enum CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

.field public static final enum UNKNOWN:Lnet/rtccloud/sdk/Call$Type;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/Call$Type;
    .locals 5

    sget-object v0, Lnet/rtccloud/sdk/Call$Type;->UNKNOWN:Lnet/rtccloud/sdk/Call$Type;

    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    sget-object v2, Lnet/rtccloud/sdk/Call$Type;->CALL_INBOUND:Lnet/rtccloud/sdk/Call$Type;

    sget-object v3, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    sget-object v4, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/rtccloud/sdk/Call$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/Call$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Type;->UNKNOWN:Lnet/rtccloud/sdk/Call$Type;

    new-instance v0, Lnet/rtccloud/sdk/Call$Type;

    const-string v1, "CALL_OUTBOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    new-instance v0, Lnet/rtccloud/sdk/Call$Type;

    const-string v1, "CALL_INBOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Type;->CALL_INBOUND:Lnet/rtccloud/sdk/Call$Type;

    new-instance v0, Lnet/rtccloud/sdk/Call$Type;

    const-string v1, "CONFERENCE_HOST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    new-instance v0, Lnet/rtccloud/sdk/Call$Type;

    const-string v1, "CONFERENCE_ATTENDEE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/Call$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

    invoke-static {}, Lnet/rtccloud/sdk/Call$Type;->$values()[Lnet/rtccloud/sdk/Call$Type;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Call$Type;->$VALUES:[Lnet/rtccloud/sdk/Call$Type;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/Call$Type;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/Call$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Call$Type;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/Call$Type;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/Call$Type;->$VALUES:[Lnet/rtccloud/sdk/Call$Type;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/Call$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/Call$Type;

    return-object v0
.end method
