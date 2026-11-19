.class public final enum Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field public static final enum ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field public static final enum ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field public static final enum CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field public static final enum DENY:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field public static final enum INVITE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field public static final enum JOIN:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;
    .locals 6

    sget-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    sget-object v1, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    sget-object v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    sget-object v3, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    sget-object v5, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->INVITE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    filled-new-array/range {v0 .. v5}, [Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const-string v1, "ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const-string v1, "ACCEPTONETOONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const-string v1, "DENY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const-string v1, "CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const-string v1, "JOIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const-string v1, "INVITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->INVITE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-static {}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->$values()[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->$VALUES:[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->$VALUES:[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    return-object v0
.end method
