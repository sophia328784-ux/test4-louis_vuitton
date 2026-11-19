.class public final enum Lnet/rtccloud/sdk/MeetingPoint$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/MeetingPoint$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Type;

.field public static final enum ADHOC:Lnet/rtccloud/sdk/MeetingPoint$Type;

.field public static final enum PERMANENT:Lnet/rtccloud/sdk/MeetingPoint$Type;

.field public static final enum SCHEDULED:Lnet/rtccloud/sdk/MeetingPoint$Type;

.field public static final enum UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Type;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/MeetingPoint$Type;
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Type;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Type;->ADHOC:Lnet/rtccloud/sdk/MeetingPoint$Type;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Type;->PERMANENT:Lnet/rtccloud/sdk/MeetingPoint$Type;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Type;->SCHEDULED:Lnet/rtccloud/sdk/MeetingPoint$Type;

    filled-new-array {v0, v1, v2, v3}, [Lnet/rtccloud/sdk/MeetingPoint$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Type;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Type;

    const-string v1, "ADHOC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->ADHOC:Lnet/rtccloud/sdk/MeetingPoint$Type;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Type;

    const-string v1, "PERMANENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->PERMANENT:Lnet/rtccloud/sdk/MeetingPoint$Type;

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Type;

    const-string v1, "SCHEDULED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/MeetingPoint$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->SCHEDULED:Lnet/rtccloud/sdk/MeetingPoint$Type;

    invoke-static {}, Lnet/rtccloud/sdk/MeetingPoint$Type;->$values()[Lnet/rtccloud/sdk/MeetingPoint$Type;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Type;

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

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint$Type;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/MeetingPoint$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/MeetingPoint$Type;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->$VALUES:[Lnet/rtccloud/sdk/MeetingPoint$Type;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/MeetingPoint$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-object v0
.end method
