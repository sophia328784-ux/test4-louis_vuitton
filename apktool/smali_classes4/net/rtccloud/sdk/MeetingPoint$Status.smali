.class public final enum Lnet/rtccloud/sdk/MeetingPoint$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/MeetingPoint$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Status;

.field public static final enum CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

.field public static final enum CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

.field public static final enum HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

.field public static final enum STOPPED:Lnet/rtccloud/sdk/MeetingPoint$Status;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/MeetingPoint$Status;
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Status;->STOPPED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    filled-new-array {v0, v1, v2, v3}, [Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Status;

    const-string v1, "CREATING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Status;

    const-string v1, "CREATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Status;

    const-string v1, "HOSTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Status;

    const-string v1, "STOPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->STOPPED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {}, Lnet/rtccloud/sdk/MeetingPoint$Status;->$values()[Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Status;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint$Status;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/MeetingPoint$Status;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/MeetingPoint$Status;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/MeetingPoint$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/MeetingPoint$Status;

    return-object v0
.end method
